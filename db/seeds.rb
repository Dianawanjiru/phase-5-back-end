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
        
    end
    def generate_users
        3.times do |i| 
            user = User.create!(
                username:Faker::Name.name,
                password_digest:Faker::Internet.password
            )
        end
    end

    def generate_appointments
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
                user_id:Faker::Number.between(from: 1, to: 5) 
            )
        end
    end

    
end

Seed.begin


