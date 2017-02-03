require 'net/http'
require 'json'

# :first_in sets how long it takes before the job is first run. In this case, it is run immediately
SCHEDULER.every '1m', :first_in => 0 do |job|
  uri = COVERALL_URI
  response = Net::HTTP.get(uri)
  # logger = Logger.new(STDOUT)
  # logger.info(response)
  d = JSON.parse(response)
  # logger.info(d)
  send_event('coverage',
  { value: d["covered_percent"].round,
    moreinfo: 'Coverage change: ' + (d["coverage_change"] >= 0 ? '+' + d["coverage_change"].to_s : d["coverage_change"].to_s)
  })
end
