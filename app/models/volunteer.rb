class Volunteer < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :project
end
