class Zoo < ActiveRecord::Base
	has_many :animals

	validates :name, :location,
		presence: true

	validates_uniqueness_of :name
end
