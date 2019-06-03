class ContentsController < ApplicationController

	def update
		@content = Content.find(params[:id])
		respond_to do |format|
			if @content.update(content_params)
				format.html { redirect_to(@content, :notice => 'Content was successfully updated.') }
				format.json { respond_with_bip(@content) }
			else
				format.html { render :action => "edit" }
				format.json { respond_with_bip(@content) }
			end
		end
	end

	private

	def content_params
		params.require(:content).permit(:value)
	end
end
