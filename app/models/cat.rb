class Cat < ActiveRecord::Base
  has_one :adoption
  has_one :person, :through => :adoptions
end
