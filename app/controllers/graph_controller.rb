class GraphController < ApplicationController

	# GET graph/:file
	def show
		@data =[]
		fileObj = File.new("public/pub/"+params[:file]+".txt", "r")
		while (line = fileObj.gets)
			tmp = line.strip().split(',')
		  	@data.insert(0,[tmp[0].to_f,tmp[1].to_f])
		end
		fileObj.close
	end
end
