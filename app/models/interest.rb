class Interest < ApplicationRecord
    has_many :interest_gathers
    has_many :gathers, through: :interest_gathers
end
