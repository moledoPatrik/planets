RSpec.describe Alien, "#increment_age!" do
  it "increments alien's age" do
    alien = build(:alien, age: 20)
    alien.increment_age!
    expect(alien.age).to eq 21
  end
end

RSpec.describe Alien, ".oldest" do
  it "Returns the aliens: oldest to youngest" do
    planet = create(:planet)
    youngest = create(:alien, age: 30, planet: planet)
    oldest = create(:alien, age: 200, planet: planet)
    middle = create(:alien, age: 50, planet: planet)
    expect(Alien.oldest).to eq [oldest, middle, youngest]
  end
end
