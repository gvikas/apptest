class Community < ActiveRecord::Base
	validates :name, uniqueness: true
	validates :name, length: {minimum: 4}
	validates :name, presence: true
end
