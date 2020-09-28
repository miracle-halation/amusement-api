FactoryBot.define do
  factory :user do
    name {Faker::Name.name}
    email {Faker::Internet.free_email}
    password {'password'}
    uid {Faker::Internet.uuid}
    admin{true}
  end
end
