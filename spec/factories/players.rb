# frozen_string_literal: true

FactoryBot.define do
  factory :player do
    name { Faker::Name.first_name }
    password { Faker::Name.last_name }
    # last_name { Faker::Name.last_name }
    # sequence(:sub_claim, (5..14).cycle) { |n| "JAtwzGtwfd0pU0zfOfNv#{n}znp5dDywrMf@clients" }
    # email { Faker::Internet.email }
    # gender { Faker::Gender.binary_type.first.downcase }
    # birthday { Faker::Date.birthday(18, 65) }
    # age { calculate_age(birthday) }
    # language { Faker::Number.between(0, 1).positive? ? 'eng' : 'ind' }
    # currency { Faker::Number.between(0, 1).positive? ? 'usd' : 'eur' }
    # user_lonlat { "POINT(#{Faker::Number.decimal(1, 7).to_f + Faker::Number.between(90, 120).to_f} #{Faker::Number.decimal(1, 7).to_f + Faker::Number.between(1, 10).to_f})" }
    # about_you { 't' * Faker::Number.between(160, 1000) }
  end
end
