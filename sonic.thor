require 'csv'

class Sonic < Thor
  include Thor::Actions
  
  desc "start", "run main"
  method_option :file, type: :boolean, default: false
  method_option :wifi, type: :boolean, default: false
  method_option :spectro, type: :boolean, default: false
	def start(port = 3000)
	  run "ruby main.rb #{options[:file]} #{options[:wifi]} #{options[:spectro]}", {verbose: false}
	end
end
