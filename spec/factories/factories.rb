FactoryGirl.define do

  factory :inoutput do
    body Faker::Name.name
  end

  factory :operation do
    name Faker::Lorem.words(3)
    goal Faker::Lorem.sentence(4)
    worker Faker::Name.name
    steps Faker::Lorem.sentence(5)
    exceptions Faker::Lorem.sentence(4)
    association :document
  end

  factory :connection do
    association :inoutput, factory: :inoutput
    association :operation, factory: :operation
    way "input"
  end

  factory :document do
    name Faker::Name.name
    description Faker::Lorem.sentence(4)
    purpose Faker::Lorem.sentence(2)
    metrics Faker::Lorem.sentence(5)
  end
end