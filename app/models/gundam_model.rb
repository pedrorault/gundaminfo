class GundamModel < ApplicationRecord
  scope :filter_by_name_like, -> (name) { where("nome ilike ?", "%#{name}%")}
end
