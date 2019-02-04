class Genre < ApplicationRecord
	has_many :novells
	validates :name, presence: true, length: {minimum: 3}
end
