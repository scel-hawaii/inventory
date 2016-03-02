class Item < ActiveRecord::Base
  scope :category_is, -> (category) { where("item_type like ?", "#{category}%") }
  has_paper_trail
end
