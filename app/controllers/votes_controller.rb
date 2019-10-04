class VotesController < ApplicationController
  def like
    idea = Idea.find(params[:idea_id])
    current_account.likes idea
    redirect_to idea
  end

  def unlike
  	idea = Idea.find(params[:idea_id])
  	idea.unliked_by current_account	
  	redirect_to idea
  end

  def dislike
    idea = Idea.find(params[:idea_id])
    current_account.dislikes idea
    redirect_to idea
  end

  def undislike
  	idea = Idea.find(params[:idea_id])
  	idea.undisliked_by current_account
  	redirect_to idea
  end

  def vote_up
  	idea = Idea.find(params[:idea_id])
  	initiator_proposal = InitiatorProposal.find(params[:initiator_proposal_id])
   	current_account.likes initiator_proposal
  	redirect_to idea
  end

  def vote_un
  	idea = Idea.find(params[:idea_id])
  	initiator_proposal = InitiatorProposal.find(params[:initiator_proposal_id])
    initiator_proposal.unliked_by current_account
  	redirect_to idea	
  end

end
