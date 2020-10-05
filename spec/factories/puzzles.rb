FactoryBot.define do
  factory :puzzle do
    name {Faker::Creature::Animal.name}
    image {Faker::Internet.url}
    association :shape
  end
end
