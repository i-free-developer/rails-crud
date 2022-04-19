class Restaurant < ApplicationRecord
	validates :name, length: { maximum: 5, too_long: "characters is the maximum allowed" }
end