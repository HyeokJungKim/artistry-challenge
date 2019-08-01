class Artist < ApplicationRecord
    has_many :logs
    has_many :instruments, through: :logs

    validates :name, presence: true
    validates :title, uniqueness: true
end
