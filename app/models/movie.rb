class Movie < ApplicationRecord
  validates :name, presence: true, uniqueness: { scope: :year }
  validates :year, presence: true

  has_many :comments
end
