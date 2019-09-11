class VotesController < ApplicationController
  def like
    idea = Idea.find(params[:idea_id])
    current_account.likes idea
  end

  def dislike
    idea = Idea.find(params[:idea_id])
    current_account.dislikes idea
  end

end
