class InitiativesController < ApplicationController
  def index
    @initiatives = Initiative.all
  end
  def show
    @initiative = Initiative.find(params[:id])
  end
  def destroy
  	@initiative = Initiative.find(params[:id])
	@initiative.destroy
	redirect_to initiatives_path
  end
end
