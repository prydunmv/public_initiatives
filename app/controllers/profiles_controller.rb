class ProfilesController < ApplicationController
  def index
  	@person_profile = current_account.person_profile || current_account.create_person_profile 
  end

  def edit
  	@person_profile = current_account.person_profile || current_account.create_person_profile 
  end
end
	