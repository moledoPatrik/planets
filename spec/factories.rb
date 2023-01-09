FactoryBot.define do
  factory :planet do
    name { 'Earth' }
    description { 'Cool planet, very nice place' }
  end
  factory :alien do
    name { 'Jorge' }
    age { 99 }
    planet { Planet.first }
  end
end
