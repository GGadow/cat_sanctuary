require "rails_helper"

RSpec.describe Cat, :type => :model do

  it "testing" do
    fluffy = Cat.create(name: "Tux", breed: "Tuxedo", age: "6", arrival_date: "2015/01/31", image_url: "tux") 
    expect(fluffy.name).to eq "Tux"
  end

end
