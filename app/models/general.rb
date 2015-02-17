module General

  def self.cat_images
    @imgs = Array.new

    src = Array.new
    src << ""
    src << ""
    @imgs << src    

    Dir.glob("app/#{Cat::IMG_PATH}*.*").each do |img|
      if !img.include?("-small.jpg") 
        i = img.split("/").last.split(".")
        src = Array.new
        src << i.first
        src << i.first
        @imgs << src
      end
    end
    
    @sorted = @imgs.sort_by do |i|
      i.first
    end
    @sorted
  end

end
