const sqlite3 = require('sqlite3').verbose();
const db = new sqlite3.Database('ooredoo_crm.db');

db.serialize(() => {
  db.each("SELECT * FROM customers", (err, row) => {
    if (err) {
      console.error(err.message);
    } else {
      console.log(row);
    }
  });
});

db.close();
