class HomeController < ApplicationController

	#GET /
	def index
		@files = Dir.glob("**/public/pub/*")
		puts @files
	end

end