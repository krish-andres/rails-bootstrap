class VisitorsController < ApplicationController

	def new
		@visitor = Visitor.new
	end 

	def create
		@visitor = Visitor.new(secure_params)
		if @visitor.valid?
			# TODO Save Data
			redirect_to root_path, notice: "Chose #{@visitor.favorite}"
		else 
			render :new
		end 
	end 


	private

	def secure_params
		params.require(:visitor).permit(:favorite, :comment)
	end

end
