class Novell < ApplicationRecord
	belongs_to :author
	belongs_to :genre
	belongs_to :publisher
end
