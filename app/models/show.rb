class Show < ActiveRecord::Base
  has many :characters
  has many :characters, through: :shows
end