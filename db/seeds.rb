# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name(role)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin
user.save

puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['USER_NAME'].dup, :email => ENV['USER_EMAIL'].dup, :password => ENV['USER_PASSWORD'].dup, :password_confirmation => ENV['USER_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :user
user.save

puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['VIP_NAME'].dup, :email => ENV['VIP_EMAIL'].dup, :password => ENV['VIP_PASSWORD'].dup, :password_confirmation => ENV['VIP_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :VIP
user.save

  categories = [
    {
      name: "Phones"
    },
    {
      name: "Switches"
    },
    {
      name: "Cameras"
    },
  ]

  notices = [
      {
          title: Faker::Company.name,
          content: Faker::Lorem.paragraph,
          visible: true
      },
      {
          title: Faker::Company.name,
          content: Faker::Lorem.paragraph,
          visible: true
      },
      {
          title: Faker::Company.name,
          content: Faker::Lorem.paragraph,
          visible: true
      },
  ]

  faqs = [
      {
          title: Faker::Company.name,
          content: Faker::Lorem.paragraph,
          visible: true,
          efective: true
      },
      {
          title: Faker::Company.name,
          content: Faker::Lorem.paragraph,
          visible: true,
          efective: true
      },
      {
          title: Faker::Company.name,
          content: Faker::Lorem.paragraph,
          visible: true,
          efective: true
      },
  ]


 products = [ 
    {
      name: Faker::Company.name,
      firmware_version: '3',
      description: Faker::Lorem.paragraph,
      active: true,
      number: "product_#{rand 100}",
      category_id: 1 + rand(2)
    },
    {
        name: Faker::Company.name,
        firmware_version: '3',
        description: Faker::Lorem.paragraph,
        active: true,
        number: "product_#{rand 100}",
        category_id: 1 + rand(2)
    },
    {
        name: Faker::Company.name,
        firmware_version: '3',
        description: Faker::Lorem.paragraph,
        active: true,
        number: "product_#{rand 100}",
        category_id: 1 + rand(2)
    },
    {
        name: Faker::Company.name,
        firmware_version: '3',
        description: Faker::Lorem.paragraph,
        active: true,
        number: "product_#{rand 100}",
        category_id: 1 + rand(2)
    },
    {
        name: Faker::Company.name,
        firmware_version: '3',
        description: Faker::Lorem.paragraph,
        active: true,
        number: "product_#{rand 100}",
        category_id: 1 + rand(2)
    },
    {
        name: Faker::Company.name,
        firmware_version: '3',
        description: Faker::Lorem.paragraph,
        active: true,
        number: "product_#{rand 100}",
        category_id: 1 + rand(2)
    },
  ]
  

  tickets = [
    {
      title: Faker::Lorem.name,
      description: Faker::Lorem.paragraph,
      priority: ['high','low','normal'][rand 3],
      company: Faker::Company.name,
      status:  ['open','cloused','delayed'][rand 3],
      assigned_to: Faker::Lorem.name,
      contact: Faker::Lorem.name,
      user_id: 1,
      product_id: rand(3)
    },
    {
      title: Faker::Lorem.name,
      description: Faker::Lorem.paragraph,
      priority: ['high','low','normal'][rand 3],
      company: Faker::Company.name,
      status:  ['open','cloused','delayed'][rand 3],
      assigned_to: Faker::Lorem.name,
      contact: Faker::Lorem.name,
      user_id: 1,
      product_id: rand(3)
    },
    {
        title: Faker::Lorem.name,
        description: Faker::Lorem.paragraph,
        priority: ['high','low','normal'][rand 3],
        company: Faker::Company.name,
        status:  ['open','cloused','delayed'][rand 3],
        assigned_to: Faker::Lorem.name,
        contact: Faker::Lorem.name,
        user_id: 1,
        product_id: rand(3)
    },
    {
        title: Faker::Lorem.name,
        description: Faker::Lorem.paragraph,
        priority: ['high','low','normal'][rand 3],
        company: Faker::Company.name,
        status:  ['open','cloused','delayed'][rand 3],
        assigned_to: Faker::Lorem.name,
        contact: Faker::Lorem.name,
        user_id: 1,
        product_id: rand(3)
      },
    ]
 

  categories.each { |category_attrs| Category.create!(category_attrs) and puts '.' }
     
  products.each { |product_attrs|   Product.create!(product_attrs) and puts '.' }

  tickets.each { |ticket_attrs|  Ticket.create!(ticket_attrs) and puts '.' }

  notices.each { |notice_attrs|  Notice.create!(notice_attrs) and puts '.' }

  faqs.each { |faq_attrs|  Faq.create!(faq_attrs) and puts '.' }
 
