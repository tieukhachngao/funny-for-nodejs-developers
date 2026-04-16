now_unix = Time.now.to_i
puts now_unix
date = require 'time'
date = Time.iso8601('2019-01-17T09:24:23+00:00')
puts date.to_i
puts date.utc
puts (date + 14 * 24 * 60 * 60).utc
puts date.strftime('%m/%d/%Y')
