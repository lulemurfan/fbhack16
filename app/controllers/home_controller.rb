class HomeController < ApplicationController

	#GET /
	def index
		@files = Dir.glob("**/pub/*")
		puts @files
	end

end