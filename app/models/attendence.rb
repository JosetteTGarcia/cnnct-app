class Attendence < ActiveRecord::Base 
  belongs_to :user
  belongs_to :gathering
end
