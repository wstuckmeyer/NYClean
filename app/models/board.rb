class Board < ApplicationRecord
	belongs_to :project
	has_many :messages
end
