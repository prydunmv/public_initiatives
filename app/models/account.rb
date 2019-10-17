class Account < ApplicationRecord
  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :registerable, :database_authenticatable,
         :recoverable, :rememberable, :validatable

 has_one :person_profile
 has_and_belongs_to_many :roles
end
