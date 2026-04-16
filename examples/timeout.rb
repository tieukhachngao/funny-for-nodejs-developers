thread = Thread.new { sleep 1; puts 'called' }
thread.join
