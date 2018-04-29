# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#50.times do 
#    luna = Faker::Internet.password(8)
#User.create([{
#    username: Faker::Name.name,
#    password: luna,
#    password_confirmation: luna,
#    password1: luna,
#    email:    Faker::Internet.email,
#    avatar: Faker::Avatar.image,
#    career_id: rand(1...8)
#    }])
#end


Career.create([{
 
    name: 'Ingeniería Agronómica',
    studyplan: Faker::File.file_name('path/to')},
    {
 
    name: 'Ingeniería Agrícola',
    studyplan: Faker::File.file_name('path/to')
    },
    {
 
    name: 'Ingeniería Civil',
    studyplan: Faker::File.file_name('path/to')
    },
    {
 
    name: 'Ingeniería Eléctrica',
    studyplan: Faker::File.file_name('path/to')
    },
        {
 
    name: 'Ingeniería Electrónica',
    studyplan: Faker::File.file_name('path/to')
    },
    {
 
    name: 'Ingeniería Industrial',
    studyplan: Faker::File.file_name('path/to')
    },
    {
 
    name: 'Ingeniería Mecánica',
    studyplan: Faker::File.file_name('path/to')
    },
    {
 
    name: 'Ingeniería Mecatrónica',
    studyplan: Faker::File.file_name('path/to')
    }                    
])    



50.times do 
    Course.create([{
        name: Faker::Educator.course,
        code: Faker::Number.number(6)
    }])
end



50.times do
    Resource.create([{
        name: Faker::Name.title,
        link: Faker::Internet.url,
        description: Faker::RickAndMorty.quote,
        scoreresource_id: rand(1...500)
    }])
end



50.times do 
    Teacher.create([{
        name: Faker::Name.name,
        description: Faker::RickAndMorty.quote
        }])
end



