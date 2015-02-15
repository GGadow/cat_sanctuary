class Person < ActiveRecord::Base
  has_many :adoptions
  has_many :cats, :through => :adoptions

  def name
    "#{fname} #{lname}"
  end
end
