class InitiatorProposalsController < ApplicationController
  def new
    @idea = Idea.find(params[:idea_id])
    @initiator_proposal = InitiatorProposal.new
  end

  def create
    @idea = Idea.find(params[:idea_id])
    @initiator_proposal = @idea.initiator_proposals.new(initiator_proposal_params)

    respond_to do |format|
      if @initiator_proposal.save
        format.html { redirect_to idea_path(@idea), notice: 'initiator proposal was successfully created.' }
        format.json { render :show, status: :created, location: @initiator_proposal }
      else
        format.html { render :new }
        format.json { render json: @initiator_proposal.errors, status: :unprocessable_entity }
      end
    end
   
  end

  def edit
  end

  def update
  end

  def destroy
    @idea = Idea.find(params[:idea_id])
    @initiator_proposal = InitiatorProposal.find(params[:id])
    @initiator_proposal.destroy
    respond_to do |format|
      format.html { redirect_to idea_path(@idea), notice: 'initiator proposal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def initiator_proposal_params
      params.fetch(:initiator_proposal, {}).permit(:plan, :idea_id, :account_id)
    end
end
