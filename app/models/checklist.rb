class Checklist < ActiveRecord::Base
	validates :description, :presence => {:message => 'The name cant be blank.'}
	belongs_to :task
end
