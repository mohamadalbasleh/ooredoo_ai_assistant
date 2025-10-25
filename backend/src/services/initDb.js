// backend/src/services/initDb.js
const sqlite3 = require('sqlite3').verbose();
const path = require('path');

const DB_FILE = path.resolve(__dirname, '../../ooredoo_crm.db');

function initDb() {
  const db = new sqlite3.Database(DB_FILE);

  db.serialize(() => {
    // Drop table if exists
    db.run(`DROP TABLE IF EXISTS customers`);

    // Create customers table
    db.run(`
      CREATE TABLE customers (
        customer_id TEXT PRIMARY KEY,
        company_name TEXT NOT NULL,
        industry_sector TEXT NOT NULL,
        service_tier TEXT NOT NULL,
        sla_level TEXT NOT NULL,
        registration_date TEXT NOT NULL,
        monthly_spend REAL NOT NULL,
        account_manager TEXT,
        payment_history TEXT,
        credit_limit REAL,
        company_size TEXT,
        address TEXT,
        city TEXT,
        phone TEXT,
        email TEXT,
        status TEXT
      )
    `);

    // Insert sample data
    const stmt = db.prepare(`
      INSERT INTO customers 
      (customer_id, company_name, industry_sector, service_tier, sla_level, registration_date, monthly_spend, account_manager, payment_history, credit_limit, company_size, address, city, phone, email, status)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `);

    const customers = [
      ['SME000001', 'TechVision Solutions', 'Construction', 'Platinum', 'Standard', '2021-11-04', 5388.34, 'Mohammed Al-Thani', 'Excellent', 12291.08, 'Small (1-10)', 'Building 1, Zone 35', 'Doha', '+974-3629-2505', 'techvision.solutions@company.qa', 'Active'],
      ['SME000002', 'Green Energy Qatar', 'Construction', 'Gold', 'Premium', '2023-10-30', 10599.21, 'Mohammed Al-Thani', 'Fair', 58367.85, 'Large (51-200)', 'Building 2, Zone 13', 'Doha', '+974-3964-1259', 'green.energy.qatar@company.qa', 'Active'],
      ['SME000003', 'Gulf Trading Co', 'Manufacturing', 'Gold', 'Standard', '2020-05-04', 5374.52, 'Jennifer Davis', 'Good', 14277.96, 'Large (51-200)', 'Building 3, Zone 38', 'Doha', '+974-9670-8793', 'gulf.trading.co@company.qa', 'Pending'],
      ['SME000004', 'Smart Logistics LLC', 'Finance', 'Platinum', 'Business', '2022-02-25', 14825.91, 'Hassan Al-Marri', 'Fair', 83748.32, 'Large (51-200)', 'Building 4, Zone 16', 'Doha', '+974-4202-9156', 'smart.logistics.llc@company.qa', 'Active'],
      ['SME000005', 'Pearl Healthcare Center', 'Education', 'Bronze', 'Premium', '2021-07-04', 7312.18, 'Mohammed Al-Thani', 'Fair', 40028.65, 'Small (1-10)', 'Building 5, Zone 6', 'Doha', '+974-5944-3926', 'pearl.healthcare.center@company.qa', 'Active']
    ];

    for (const c of customers) stmt.run(c);

    stmt.finalize();
  });

  db.close(() => console.log('[initDb] SQLite DB ready at', DB_FILE));
}

module.exports = { initDb };
