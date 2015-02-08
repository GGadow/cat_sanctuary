class Adoption < ActiveRecord::Base
  belongs_to :cat
  belongs_to :person
end
