class Instrument < ApplicationRecord
    has_many :logs
    has_many :artist, through: :logs
end
