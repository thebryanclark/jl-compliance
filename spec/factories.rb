FactoryGirl.define do
  sequence :name do |n|
    "Name #{n}"
  end
  sequence :driver_name do |n|
    "Driver Name #{n}"
  end
  sequence :supplier_name do |n|
    "Supplier Name #{n}"
  end
  sequence :plate do |n|
    "Plate #{n}"
  end
  sequence :number do |n|
    "Ticket number #{n}"
  end

  factory :job do
    name
  end
  factory :subcontractor_at_job do
    name
    job
  end
  factory :subcontractor_truck do
    driver_name
    plate
    subcontractor_at_job
  end
  factory :supplier_truck do
    supplier_name
    plate
    job
  end
  factory :ticket do
    number
    approved_date DateTime.parse('2013-01-21')
    supplier_truck
  end
end