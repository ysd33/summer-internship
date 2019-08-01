class Step < ApplicationRecord
	belongs_to: recipe

	validates: dictiption, length: { maximum: 255 }
end
