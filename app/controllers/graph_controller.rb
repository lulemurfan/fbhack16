class GraphController < ApplicationController
	before_action :authenticate_user!

	# GET graph/:file
	def show
		@data =[]
		fileObj = File.new("pub/"+params[:file]+".txt", "r")
		while (line = fileObj.gets)
			tmp = line.strip().split(',')
		  	@data.insert(0,[tmp[0].to_f,tmp[1].to_f])
		end
		fileObj.close
		@filename = params[:file]

		runPython()
	end

	def runPython()
		t = "python fft.py '" + @data.to_s + "'"
		@fftData = `#{t}`
		puts t
		@fft = eval @fftData
		puts ">>>>>>>>>>>>>>>>>>>>>>>>>>" + @fft.to_s
	end

end
