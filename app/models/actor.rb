class Actor < ActiveRecord::Base
  has many :characters
  has many :shows, through: :characters

end
