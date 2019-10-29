class ImplementationStagesController < ApplicationController

  def show
    @stages = ImplementationStage.find(params[:initiative_id])
  end
  def new
    @initiative = Initiative.find(params[:initiative_id])
    @stage = @initiative.implementation_stages.new
  end

  def edit
  end
  def update
  end
  def delete
  end
end
