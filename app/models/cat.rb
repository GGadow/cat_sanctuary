class Cat < ActiveRecord::Base
  has_one :adoption
  has_one :person, :through => :adoptions

  IMG_PATH = "/assets/cats/"

  def img 
    "#{IMG_PATH}#{image_url}.jpg"
  end

  def img_small
    "#{IMG_PATH}#{image_url}-small.jpg"
  end
end
