class List < ActiveRecord::Base
	validates :title, :presence => {:message => 'The name cant be blank.'}
	has_many :tasks
end
