require 'bundler/setup'

Bundler.require

require 'pry'

require_relative "../lib/pokemon"
require_relative "../lib/scraper"
require_relative "sql_runner"

@db = SQLite3::Database.new("../students.db")
@db.execute("DROP TABLE IF EXISTS pokemon;")
@sql_runner = SQLRunner.new(@db)
@sql_runner.execute_schema_migration_sql
