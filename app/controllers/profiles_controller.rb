class ProfilesController < ApplicationController
  def index
  	@profile = Profile.find(params[:id])
  end

  def edit
  end
end
