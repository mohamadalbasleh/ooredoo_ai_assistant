// backend/src/services/data.js
const fs = require('fs');
const path = require('path');
const sqlite3 = require('sqlite3').verbose();

const DB_FILE = path.resolve(__dirname, '../../ooredoo_crm.db');
const DATA_DIR = path.resolve(__dirname, '../data');

function runSqlStatements(db, sql) {
  // split by semicolon and execute where possible
  const statements = sql.split(/;\s*$/m).map(s => s.trim()).filter(Boolean);
  for (const stmt of statements) {
    if (/CREATE DATABASE|USE /i.test(stmt)) continue;
    try {
      db.exec(stmt + ';');
    } catch (e) {
      // skip incompatible statements
      // console.log('skip stmt:', e.message);
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
    const eng = fs.existsSync(path.join(DATA_DIR, 'english_crm.sql')) ? fs.readFileSync(path.join(DATA_DIR, 'english_crm.sql'),'utf8') : '';
    const ara = fs.existsSync(path.join(DATA_DIR, 'arabic_crm.sql')) ? fs.readFileSync(path.join(DATA_DIR, 'arabic_crm.sql'),'utf8') : '';
    runSqlStatements(db, eng + '\n' + ara);
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
    return await new Promise((resolve, reject) => {
      db.get('SELECT * FROM customers WHERE customer_id = ?', id, (err, row) => {
        db.close();
        if (err) return resolve(null);
        resolve(row || null);
      });
    });
  } catch (e) { return null; }
}

async function getTicketsForCustomer(id) {
  try {
    const db = await getDb();
    return await new Promise((resolve, reject) => {
      db.all('SELECT * FROM historical_customer_tickets WHERE customer_id = ? ORDER BY created_date DESC LIMIT 20', id, (err, rows) => {
        db.close();
        if (err) return resolve([]);
        resolve(rows || []);
      });
    });
  } catch (e) { return []; }
}

// FAQ loader & search (naive)
const faqCache = [];
function loadFaqs() {
  const enPath = path.join(DATA_DIR, 'faqs_troubleshooting_english.txt');
  if (fs.existsSync(enPath)) {
    const txt = fs.readFileSync(enPath,'utf8').split('\n\n').filter(Boolean);
    txt.forEach(t => faqCache.push({ lang:'en', text: t }));
  }
}
loadFaqs();

async function searchFaqs(query) {
  if (!query) return [];
  const q = query.toLowerCase();
  const hits = faqCache.filter(f => f.text.toLowerCase().includes(q)).map(f => f.text);
  return hits;
}

async function recommendForCustomer(id) {
  const prodPath = path.join(DATA_DIR, 'products_english.json');
  if (!fs.existsSync(prodPath)) return [];
  const products = JSON.parse(fs.readFileSync(prodPath,'utf8'));
  // naive top priced
  products.sort((a,b)=> (b.pricing_tiers?.['12_months']||0) - (a.pricing_tiers?.['12_months']||0));
  return products.slice(0,3).map(p => ({product_id:p.product_id, name:p.name, price_12m: p.pricing_tiers?.['12_months']||null}));
}

module.exports = { initDb, getCustomerById, getTicketsForCustomer, searchFaqs, recommendForCustomer };
