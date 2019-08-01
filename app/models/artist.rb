class Artist < ApplicationRecord
    has_many :studios
    has_many :instrument, through: :studios 
end
