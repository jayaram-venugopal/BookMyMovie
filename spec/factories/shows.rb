FactoryBot.define do
  factory :show do
    movie { nil }
    theater { nil }
    morning { false }
    matinee { false }
    evening { false }
    night { "" }
  end
end
