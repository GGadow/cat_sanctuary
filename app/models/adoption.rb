class Adoption < ActiveRecord::Base
  has_one :cat
  has_one :person
end
