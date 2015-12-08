class Job < ActiveRecord::Base
	belongs_to :user
	extend FriendlyId
	friendly_id :title, use: [:slugged, :finders]

#This is a method we created. where will evaluate the values where that happens

def self.not_internal
    self.where(is_internal: false)
end	


end
