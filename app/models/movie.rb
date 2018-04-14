class Movie < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :director, presence: true
  validates :release_date, presence: true

end
