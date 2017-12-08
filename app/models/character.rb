class Character < ActiveRecord::Base
  belongs to :show
  belongs to :actor
end