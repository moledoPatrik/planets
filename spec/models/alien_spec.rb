RSpec.describe Alien, "#increment_age!" do
  it "increments alien's age" do
    alien = build(:alien, age: 20)
    alien.increment_age!
    expect(alien.age).to eq 21
  end
end
