class Task < ActiveRecord::Base
	validates :title, :presence => {:message => 'The name cant be blank.'}
	 belongs_to :list
	 has_many :checklists
end
