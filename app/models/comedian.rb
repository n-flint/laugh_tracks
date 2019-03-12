class Comedian < ApplicationRecord
  validates_presence_of :name, :age, :city

  has_many :specials

  def self.average_age
    Comedian.average(:age)
  end

  def self.cities
    Comedian.select(:city).distinct.pluck(:city)
  end

end
