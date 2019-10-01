class PersonProfile < ApplicationRecord
  belongs_to :account

 def show
 def index
   	@profile = Profile.find(params[:id])
@personal_profile = current_account.personal_profile
end