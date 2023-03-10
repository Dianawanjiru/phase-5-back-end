# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


class Seed 
    def self.begin
        seed = Seed.new
        seed.generate_users
        seed.generate_appointments
        seed.generate_cars
        seed.generate_reservations
        
        
    end
    
    def generate_users
        puts "seeding users"
        3.times do |i| 
            user = User.create!(
                username:Faker::Name.name,
                password_digest:Faker::Internet.password
            )
        end
        puts "seeded users"
    end

     def generate_appointments
        puts "seeding Appointments"
        5.times do |i|
            appointment = Appointment.create!(
                first_name:Faker::Name.name,
                last_name:Faker::Name.name,
                email_address:Faker::Internet.email,
                phone_number:Faker::PhoneNumber.cell_phone,
                check_in_date:Faker::Date.forward(days: 23),
                check_in_time:Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default),
                person_capacity:Faker::Number.between(from: 1, to: 7),
                additional_info:Faker::Lorem.paragraph(sentence_count: 4),
                user_id:Faker::Number.between(from: 1, to: 3) 
            )
        end
        puts "seeded users"
    end

   

    def generate_cars
        carArray = [
    "https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Q2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Q2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fENhcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1542362567-b07e54358753?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fENhcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://media.istockphoto.com/id/1307086567/photo/generic-modern-suv-car-in-concrete-garage.jpg?b=1&s=170667a&w=0&k=20&c=m2g-wU5m2tbqC7C_nWAgu7txHzeEnXKSFuby01V4dtI=",
    "https://images.unsplash.com/photo-1616634375264-2d2e17736a36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8QXV0b21vYmlsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fEF1dG9tb2JpbGVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1541038019982-5b38b55ddea8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8QXV0b21vYmlsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1596768336967-50e29bea4d68?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fEF1dG9tb2JpbGVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1669215420018-098507d14861?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8QmVueiUyMGFuZCUyMGplZXBzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1656468014942-fc3f9084b2ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fEJlbnolMjBhbmQlMjBqZWVwc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1525264626954-d57032a1ab1a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Tmlzc2FuJTIwQ2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1531920327645-347e96a7f31e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fE5pc3NhbiUyMENhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1610915504025-d806f0041582?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fEZvcmQlMjBjYXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fEZvcmQlMjBjYXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1667297413691-6a07f6127ce0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fEJ1aWNrJTIwQ2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1459603677915-a62079ffd002?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8TGluY29sbiUyME1LUyUyMENhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
]

#Make 25 Random Cars

10.times do
    puts "seeding cars"
    makeModel = Faker::Vehicle.make_and_model #=> "Honda CR-V"
    array = makeModel.split(" ")
    make = array[0]
    model = array[1]
    car = Car.create(
        price: Faker::Commerce.price(range: 3000..10000, as_string: true), 
        make: make, 
        model: model, 
        fuel_type: Faker::Vehicle.fuel_type, 
        transmission: Faker::Vehicle.transmission, 
        mileage: Faker::Vehicle.mileage, 
        engine_size: Faker::Vehicle.engine_size, 
        year: Faker::Vehicle.year, 
        image: carArray.sample)

    car1 = Car.create(
        price: Faker::Commerce.price(range: 3000..10000, as_string: true), 
        make: make, 
        model: model, 
        fuel_type: Faker::Vehicle.fuel_type, 
        transmission: Faker::Vehicle.transmission, 
        mileage: Faker::Vehicle.mileage, 
        engine_size: Faker::Vehicle.engine_size, 
        year: Faker::Vehicle.year, 
        image: carArray.sample)
   end
   puts "seeded cars"
       end
      


       
    
 def generate_reservations
        puts "seed reservations"
        5.times do |i|
            reservation = Reservation.create!(
                first_name:Faker::Name.name,
                last_name:Faker::Name.name,
                email_address:Faker::Internet.email,
                phone_number:Faker::PhoneNumber.cell_phone,
                check_in_date:Faker::Date.forward(days: 23),
                check_out_date:Faker::Date.forward(days: 23),
                from_adress:Faker::Address.city,
                to_adress:Faker::Address.city,
                check_in_time:Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default),
                check_out_time:Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default),
                additional_information:Faker::Lorem.paragraph(sentence_count: 4),
                user_id:Faker::Number.between(from: 1, to: 3),
                car_id:Faker::Number.between(from:1, to: 5)
            )
        end
        puts "seeded reservations"
    end

    
end


Seed.begin

