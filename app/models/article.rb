class Article < ApplicationRecord

  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
    tags.join(",")
  end

  def tag_list=(tags_string)

	end

end

class Tag < ActiveRecord::Base

  has_many :taggings
  has_many :articles, through: :taggings

  def to_s
    name
  end
end
