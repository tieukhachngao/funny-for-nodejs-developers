require 'fileutils'
require 'open3'

db = 'sqlite3.db'
FileUtils.rm_f(db)

sql = [
  'CREATE TABLE persons (name TEXT);',
  "INSERT INTO persons VALUES ('alice'),('bob'),('charlie');",
  'SELECT rowid, name FROM persons;',
].join(' ')

stdout, stderr, status = Open3.capture3('sqlite3', db, sql)
abort(stderr) unless status.success?
print stdout.tr('|', ' ')
