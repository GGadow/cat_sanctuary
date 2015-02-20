class Cat < ActiveRecord::Base
  has_one :adoption
  has_one :person, :through => :adoptions

  IMG_URL = "/assets/cats/"
  IMG_PATH = "assets/images/cats/"

  def img 
    "#{IMG_URL}#{image_url}.jpg"
  end

  def img_small
    "#{IMG_URL}#{image_url}-small.jpg"
  end

end
