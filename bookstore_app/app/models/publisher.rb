class Publisher < ApplicationRecord
	has_many :novells
	validates :name, presence: true
	validates :country, presence: true
end
