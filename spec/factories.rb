FactoryGirl.define do
  sequence :name do |n|
    "Name #{n}"
  end
  
  factory :job do
    name
  end
end