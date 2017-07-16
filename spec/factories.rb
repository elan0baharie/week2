FactoryGirl.define do
  factory :user do
    email('creeper@creeper.com')
    password('easytoremember')
    admin(true)
  end

  factory :product do
    name('Nameness')
    description('Stuff describing')
    cost(3.00)
    country('United States of America')
  end
end
