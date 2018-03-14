# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


500.times do 
User.create([{
    username: Faker::Name.name,
    password: Faker::Internet.password(8),
    email:    Faker::Internet.email,
    avatar: Faker::Avatar.image,
    career_id: rand(1...8)
    }])

end


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



500.times do 
    Course.create([{
        name: Faker::Educator.course,
        code: Faker::Number.number(6)
    }])
end



500.times do
    Theme.create([{
        name: Faker::Name.title,
        description: Faker::RickAndMorty.location 

    }])
end



500.times do
    Resource.create([{
        name: Faker::Name.title,
        link: Faker::Internet.url,
        scoreresource_id: rand(1...500)
    }])
end




500.times do
    Scoreresource.create([{
        score: rand(1...5),
        votes: rand(1...500)
    }])
end

500.times do 
    Teacher.create([{
        name: Faker::Name.name,
        description: Faker::RickAndMorty.quote,
        scoreteacher_id: rand(1...500)
        }])
end



500.times do 
    Scoreteacher.create([{
        score: rand(1...5),
        votes: rand(1...500)
        }])
end



500.times do 
    Comment.create([{
        comment: Faker::HitchhikersGuideToTheGalaxy.quote,
        user_id: rand(1...500),
        scorecomment_id: rand(1...500)
        }])
end




500.times do 
    Scorecomment.create([{
        positive: rand(1...250),
        negative: rand(1...250)
        }])
end
