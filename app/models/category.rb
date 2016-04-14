class Category < ActiveRecord::Base
	has_many :songs
	# has_many :sub_categories, :foreign_key => "parent_id", class_name: "Category"
	# belongs_to :parent_category, :foreign_key => "parent_id", class_name: "Category"
end
