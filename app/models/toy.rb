class Toy < ApplicationRecord
  scope :filter_by_name_like, -> (name) { where("nome ilike ?", "%#{name}%")}
  scope :filter_by_ano, -> (value) { where(ano: value)}
  scope :filter_by_qualidade, -> (value) { where("qualidade ilike ?", "%#{value}%")}
end
