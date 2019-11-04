class InitiativesController < ApplicationController
  def index
    @initiatives = Initiative.all
  end

  def show
    @initiative = Initiative.find(params[:id])
    @stages = @initiative.implementation_stages

  end

  def cancel
  	@initiative = Initiative.find(params[:id])
	  StopInitiativeRequest.create(idea_id: @initiative.idea_id)
    redirect_to initiative_path(@initiative.id)
  end
end
