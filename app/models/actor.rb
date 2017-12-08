class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    actor = Actor.new(first_name: first_name, last_name: last_name)

end

def list_roles
  self.characters.collect do |character|
    character.full_name
  end
end
end
