const pg = require('pg');
const url = require('url');

let config = {};

if (process.env.DATABASE_URL) {
  config = {
    connectionString: process.env.DATABASE_URL,
    ssl: { rejectUnauthorized: false },
  };
}
else {
  config = {
    database: 'react_gallery', 
    host: 'localhost', 
    user: process.env.DB_USERNAME,     
    password: process.env.DB_PASSWORD,    
    port: 5432, 
    max: 10, 
    idleTimeoutMillis: 30000 
  };
}


const pool = new pg.Pool(config);

pool.on("connect", () => {
  console.log("connected to postgres");
});

pool.on("error", (err) => {
  console.log("error connecting to postgres", err);
  process.exit(-1);
});

module.exports = pool;