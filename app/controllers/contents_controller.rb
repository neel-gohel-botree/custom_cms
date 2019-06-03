class ContentsController < ApplicationController

	def update
		@content = Content.find(params[:id])
		@content.update(content_params)
	end

	private

	def content_params
		params.require(:content).permit(:value)
	end
end
