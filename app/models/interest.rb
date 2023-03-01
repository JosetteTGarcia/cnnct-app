class Interest < ActiveRecord::Base 

    has_many :interest_gathers
    has_many :gatherings,
        through: :interest_gathers
end
