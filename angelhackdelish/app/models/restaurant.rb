class Restaurant < ActiveRecord::Base
	has_many :noms
	# has_many food association through noms
end
