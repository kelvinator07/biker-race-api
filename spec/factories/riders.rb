FactoryBot.define do
    position_array = [ Faker::Number.decimal(l_digits: 2), Faker::Number.decimal(l_digits: 2) ]
    #position_array = [40.02, -105.26]

    factory :rider, class: Rider do
        firstname { Faker::Lorem.word }
        lastname { Faker::Lorem.word }
        city { Faker::Lorem.word }
        state { Faker::Lorem.word }
        position { position_array  }
    end
  end