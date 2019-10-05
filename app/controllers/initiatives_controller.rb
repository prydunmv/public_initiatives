class InitiativesController < ApplicationController

  def destroy
  	@initiative = Initiative.find(params[:id])
	@initiative.destroy
	redirect_to initiatives_path
  end
end