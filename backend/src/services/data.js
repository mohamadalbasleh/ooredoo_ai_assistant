// backend/src/services/data.js
const fs = require('fs');
const path = require('path');
const sqlite3 = require('sqlite3').verbose();

const DB_FILE = path.resolve(__dirname, '../../ooredoo_crm.db');
// const DATA_DIR = path.resolve(__dirname, '../../data'); // ensure the data folder path is correct
const DATA_DIR = path.resolve(__dirname, '../data');


function runSqlStatements(db, sql) {
  const statements = sql.split(/;\s*$/m).map(s => s.trim()).filter(Boolean);
  for (const stmt of statements) {
    if (/CREATE DATABASE|USE /i.test(stmt)) continue;
    try {
      db.exec(stmt + ';');
    } catch (e) {
      // Skip invalid or duplicate statements silently
    }
  }
}

function initDb() {
  if (fs.existsSync(DB_FILE)) {
    console.log('[data] DB exists:', DB_FILE);
    return;
  }

  console.log('[data] Building DB from SQL files...');
  const db = new sqlite3.Database(DB_FILE);

  try {
    // ✅ Load the correct SQLite-compatible files
    const engPath = path.join(DATA_DIR, 'english_crm.sql');
    const araPath = path.join(DATA_DIR, 'arabic_crm.sql');

    const eng = fs.existsSync(engPath) ? fs.readFileSync(engPath, 'utf8') : '';
    const ara = fs.existsSync(araPath) ? fs.readFileSync(araPath, 'utf8') : '';

    runSqlStatements(db, eng + '\n' + ara);
    console.log('[data] Database built successfully!');
  } catch (e) {
    console.error('[data] init error', e);
  } finally {
    db.close();
  }
}

function getDb() {
  return new Promise((resolve, reject) => {
    const db = new sqlite3.Database(DB_FILE, sqlite3.OPEN_READONLY, (err) => {
      if (err) return reject(err);
      resolve(db);
    });
  });
}

async function getCustomerById(id) {
  try {
    const db = await getDb();
    return await new Promise((resolve) => {
      db.get('SELECT * FROM customers WHERE customer_id = ?', id, (err, row) => {
        db.close();
        if (err) return resolve(null);
        resolve(row || null);
      });
    });
  } catch {
    return null;
  }
}

async function getTicketsForCustomer(id) {
  try {
    const db = await getDb();
    return await new Promise((resolve) => {
      db.all('SELECT * FROM historical_customer_tickets WHERE customer_id = ? ORDER BY created_date DESC LIMIT 20', id, (err, rows) => {
        db.close();
        if (err) return resolve([]);
        resolve(rows || []);
      });
    });
  } catch {
    return [];
  }
}

// FAQ loader & search
const faqCache = [];
function loadFaqs() {
  const enPath = path.join(DATA_DIR, 'faqs_troubleshooting_english.txt');
  if (fs.existsSync(enPath)) {
    const txt = fs.readFileSync(enPath, 'utf8').split('\n\n').filter(Boolean);
    txt.forEach(t => faqCache.push({ lang: 'en', text: t }));
  }
}
loadFaqs();

async function searchFaqs(query) {
  if (!query) return [];
  const q = query.toLowerCase();
  return faqCache
    .filter(f => f.text.toLowerCase().includes(q))
    .map(f => f.text);
}

async function recommendForCustomer(id) {
  const prodPath = path.join(DATA_DIR, 'products_english.json');
  if (!fs.existsSync(prodPath)) return [];
  const products = JSON.parse(fs.readFileSync(prodPath, 'utf8'));
  products.sort((a, b) => (b.pricing_tiers?.['12_months'] || 0) - (a.pricing_tiers?.['12_months'] || 0));
  return products
    .slice(0, 3)
    .map(p => ({
      product_id: p.product_id,
      name: p.name,
      price_12m: p.pricing_tiers?.['12_months'] || null
    }));
}

module.exports = {
  initDb,
  getCustomerById,
  getTicketsForCustomer,
  searchFaqs,
  recommendForCustomer
};
