require 'csv'

class Sonic < Thor
  include Thor::Actions
  
  desc "start", "run main"
	def start(port = 3000)
    # run "rackup --port #{port}", {:verbose => false}
	  run "ruby main.rb", {:verbose => false}
	end
	


end
