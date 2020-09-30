FactoryBot.define do
    factory :contest do
        firstname { Faker::Lorem.word }
        lastname { Faker::Lorem.word }
        email { Faker::Lorem.email }
        slogan { Faker::Lorem.word }
    end
  end