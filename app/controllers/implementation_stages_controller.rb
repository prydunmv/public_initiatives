class ImplementationStagesController < ApplicationController

  def show
    @initiative = Initiative.find(params[:initiative_id])
    @stage = ImplementationStage.find(params[:id])
  end

  def new
    @initiative = Initiative.find(params[:initiative_id])
    @stage = @initiative.implementation_stages.new
  end

  def edit
    @initiative = Initiative.find(params[:initiative_id])
    @stage = ImplementationStage.find(params[:id])
  end

  def create
    @initiative = Initiative.find(params[:initiative_id])
    @stage = @initiative.implementation_stages.new(implementation_stages_params)

    respond_to do |format|
      if @stage.save
        format.html { redirect_to @initiative, notice: 'tage was successfully created.' }
        format.json { render :show, status: :created, location: @stage }
      else
        format.html { render :new }
        format.json { render json: @stage.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @initiative = Initiative.find(params[:initiative_id])
    @stage = ImplementationStage.find(params[:id])
    if @stage.update(implementation_stages_params)
      redirect_to @initiative
    else
      render :edit
    end
  end
  def destroy
    @initiative = Initiative.find(params[:initiative_id])
    @stage = ImplementationStage.find(params[:id])
    @stage.destroy
    redirect_to @initiative, notice: 'Destroyed'
  end

  def implementation_stages_params
    params.fetch(:implementation_stage, {}).permit(:title, :body, :start_date, :end_date )
  end
end
