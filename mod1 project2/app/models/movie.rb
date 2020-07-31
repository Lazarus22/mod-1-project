class Movie < ActiveRecord::Base
  has_many :checkouts
  belongs_to :director
  belongs_to :category
end
