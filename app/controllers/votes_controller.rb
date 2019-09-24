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

end
