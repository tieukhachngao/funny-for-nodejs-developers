const { execFileSync } = require('child_process')
const fs = require('fs')

const db = 'sqlite3.db'
if (fs.existsSync(db)) {
  fs.unlinkSync(db)
}

const sql = [
  'CREATE TABLE persons (name TEXT);',
  "INSERT INTO persons VALUES ('alice'),('bob'),('charlie');",
  'SELECT rowid, name FROM persons;',
].join(' ')

const output = execFileSync('sqlite3', [db, sql], { encoding: 'utf8' })
process.stdout.write(output.replace(/\|/g, ' '))
