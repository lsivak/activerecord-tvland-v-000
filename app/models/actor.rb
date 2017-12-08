class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    actor = Actor.create(first_name: first_name, last_name: last_name)
end

def list_roles
  self.characters.collect do |character|
    character.first_name
  end
end
end
