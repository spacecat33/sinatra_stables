class UserHorses < ActiveRecord::Base 
  belongs_to :user
  belongs_to :horse
end