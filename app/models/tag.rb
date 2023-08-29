class Tag < ApplicationRecord
  has_many :bar_tags, dependent: :destroy
end
