class ProfilesController < ApplicationController
  def index
  	@person_profile = current_account.person_profile || current_account.create_person_profile 
  end

  def edit
  	@person_profile = current_account.person_profile || current_account.create_person_profile 
  end

  def update
  	 @person_profile = current_account.person_profile

	  	 if @person_profile.update(params.permit(:first_name, :last_name, :id))
	  	 	redirect_to profiles_path
	  	 else
	  	 	render 'edit'
	  	 end

  	 end
   
  end
  	

