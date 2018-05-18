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
 
    name: 'Ingeniería Sistemas y computacion',
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
    }, 
    {
 
    name: 'Ingeniería Quimica',
    studyplan: Faker::File.file_name('path/to')
    } 
    
])    



 
    Course.create([
    {
        name: 'Trabajo de Grado - Asignaturas de Posgrado',#Todos
        code: 2015321
    },
    {
        name: 'Gerencia de recursos humanos',#Ingeniería Industrial
        code: 2015701
    },
    {
        name: 'Gerencia y gestión de proyectos',#Ingeniería Industrial
        code: 2015702
    },
    {
        name: 'Ingeniería económica',#Todos
        code: 2015703
    },
    {
        name: 'Programación de computadores',#Todos,especial sistemas
        code: 2015734
    },
    {
        name: 'Métodos numéricos',#Ingenieria quimica, ingenieria de sistemas
        code: 2015970
    },
    {
        name: 'Bases de datos',#Ingenieria de sistemas
        code: 2016353
    },
    {
        name: 'Programación orientada a objetos',#Ingeniería Industrial,ingenieria de sistemas, Ingenieria mecatronica
        code: 2016375
    },
    {
        name: 'Control y Gestión de Calidad',#Ingeniería Industrial
        code: 2016589
    },
    {
        name: 'Economía general',#Ingenieria Electrica,Ingenieria Electronica,Ingeniería Industrial
        code: 2016592
    },
    {
        name: 'Gestión Tecnológica',#Ingenieria de sistemas,Ingeniería Industrial,Ingeniería Mecatronica
        code: 2016600
    },
    {
        name: 'Logística',#Ingeniería Industrial
        code: 2016605
    },
    {
        name: 'Seguridad industrial',#Ingeniería Todos menos sistemas
        code: 2016609
    },
    {
        name: 'Sistemas de costos',#Ingeniería Industrial,Ingeniería Electrica,Ingeniería Electrica
        code: 2016610
    },
    {
        name: 'Taller de diseño de plantas',#Ingeniería Quimica,Ingeniería Mecanica, Ingeniería Mecatronica
        code: 2016612
    },
    {
        name: 'Taller de Ergonomía e Ingeniería de Métodos',#Ingeniería Industrial
        code: 2016613
    },
    {
        name: 'Taller de Ingeniería de la Producción',#Ingeniería Quimica,Ingeniería Industrial
        code: 2016614
    },
    {
        name: 'Taller de invención y creatividad',#Ingeniería industrial
        code: 2016615
    },
    {
        name: 'Taller de Metodología de la Investigación',#Ingeniería Industrial,Ingeniería Quimica
        code: 2016616
    },
    {
        name: 'Taller de Procesos Metalmecánicos',#Ingeniería Industrial, Ingeniería Mecanica, Ingeniería Mecatronica
        code: 2016618
    },
    {
        name: 'Taller de Procesos Químicos y Biotecnológicos',#Ingeniería Quimica
        code: 2016619
    },
    {
        name: 'Algoritmos',#Ingeniería Sistemas y computacion
        code: 2016696
    },
    {
        name: 'Arquitectura de computadores',#Ingeniería Sistemas y computacion
        code: 2016697
    },
    {
        name: 'Elementos de computadores',#Ingeniería Sistemas y computacion, #Ingeniería Electrica,#Ingeniería Electrica
        code: 2016698
    },
    {
        name: 'Estructuras de Datos',#Ingeniería Sistemas y computacion,#Ingeniería Mecatronica
        code: 2016699
    },
    {
        name: 'Ingeniería de software I',#Ingeniería Sistemas y computacion
        code: 2016701
    },
    {
        name: 'Ingeniería de software II',#Ingeniería Sistemas y computacion
        code: 2016702
    },
    {
        name: 'Pensamiento sistémico',#Ingeniería Sistemas y computacion
        code: 2016703
    },
    {
        name: 'Sistemas operativos',#Ingeniería Sistemas y computacion
        code: 2016707
    },
    {
        name: 'Arquitectura de Software',#Ingeniería Sistemas y computacion
        code: 2016716
    },
    {
        name: 'Computación paralela y distribuida',#Ingeniería Sistemas y computacion
        code: 2016722
    },
    {
        name: 'Finanzas',#Todos
        code: 2016741
    },
    {
        name: 'Práctica estudiantil I',#Todos
        code: 2016762
    },
    {
        name: 'Práctica estudiantil II',#Todos
        code: 2016763
    },
    {
        name: 'Práctica estudiantil III',#Todos
        code: 2016764
    },
    {
        name: 'Tecnología Digital',#Ingeniería Sistemas y computacion
        code: 2016788
    },
    {
        name: 'Trabajo de grado - asignaturas de posgrado',#Todos
        code: 2016843
    },
    {
        name: 'Aprendizaje de máquina',#Ingeniería Sistemas y computacion
        code: 2019764
    },
    {
        name: 'Ingeniería de software avanzada',#Ingeniería Sistemas y computacion
        code: 2019772
    },
    {
        name: 'Minería de datos',#Ingeniería Sistemas y computacion
        code: 2019773
    },
    {
        name: 'Propuesta de Trabajo final de Maestría',#todos
        code: 2019777
    },
    {
        name: 'Proyecto de Tesis de Maestría',#Todos
        code: 2019778
    },
    {
        name: 'Sistemas de información',#Ingeniería Sistemas y computacion,#Ingeniería Industrial
        code: 2019786
    },
    {
        name: 'Tesis de Maestría',#todos
        code: 2019811
    },
    {
        name: 'Trabajo final de Maestría',#todos
        code: 2019813
    },
    {
        name: 'Vida artificial',#Ingeniería Sistemas y computacion
        code: 2019814
    },
    {
        name: 'Curso dirigido I',#todos
        code: 2019816
    },
    {
        name: 'Examen de calificación',#todos
        code: 2019848
    },
    {
        name: 'Proyecto de Tesis de Doctorado',#todos
        code: 2019849
    },
    {
        name: 'Seminario de investigación I',#todos
        code: 2019850
    },
    {
        name: 'Seminario de investigación II',#todos
        code: 2019851
    },
    {
        name: 'Tesis de Doctorado',#todos
        code: 2019852
    },
    {
        name: 'Empresa y medio ambiente',#Ingeniería Industrial,Ingeniería Quimica
        code: 2020067
    },
    {
        name: 'Gerencia de la innovación',#Ingeniería Industrial
        code: 2020069
    },
    {
        name: 'Ingeniería económica avanzada',#Ingeniería Industrial
        code: 2020071
    },
    {
        name: 'Investigación y desarrollo en ingeniería industrial',#Ingeniería Industrial
        code: 2020074
    },
    {
        name: 'Logística aplicada a redes de distribución y transporte',#Ingeniería Industrial
        code: 2020076
    },
    {
        name: 'Propuesta de Trabajo final de Maestría',#todos
        code: 2020079
    },
    {
        name: 'Proyecto de Tesis de Maestría',
        code: 2020080
    },
    {
        name: 'Tesis de Maestría',
        code: 2020088
    },
    {
        name: 'Trabajo final de Maestría',
        code: 2020097
    },
    {
        name: 'Temas avanzados en geomática I',#Ingeniería Industrial,Ingeniería Quimica,Ingeniería Civil
        code: 2021133
    },
    {
        name: 'Propuesta de Trabajo final de Maestría',
        code: 2022293
    },
    {
        name: 'Proyecto de Tesis de Maestría',
        code: 2022294
    },
    {
        name: 'Tesis de Maestría',
        code: 2022297
    },
    {
        name: 'Trabajo final de Maestría',
        code: 2022298
    },
    {
        name: 'Administración de Redes',#Ingeniería Sistemas y computacion
        code: 2023697
    },
    {
        name: 'Gestión y planeación tecnológica',#Ingeniería Sistemas y computacion
        code: 2023707
    },
    {
        name: 'Política Sectorial y Negociación en Telecomunicaciones',#Ingeniería Sistemas y computacion
        code: 2023713
    },
    {
        name: 'Tesis de Doctorado',#Todos
        code: 2024654
    },
    {
        name: 'Proyecto de Tesis de Doctorado',#Todos
        code: 2024655
    },
    {
        name: 'Examen de calificación',#Todos
        code: 2024656
    },
    {
        name: 'Seminario de investigación I',#Todos
        code: 2024657
    },
    {
        name: 'Seminario de investigación II',#Todos
        code: 2024658
    },
    {
        name: 'CURSO DIRIGIDO 1',#Todos
        code: 2024710
    },
    {
        name: 'CURSO DIRIGIDO 2',#Todos
        code: 2024711
    },
    {
        name: 'Computación visual',#Sistemas Sistemas y Computación
        code: 2025960
    },
    {
        name: 'Lenguajes de programación',#Ingeniería Sistemas y computacion
        code: 2025966
    },
    {
        name: 'Redes de computadores',#Ingeniería Sistemas y computacion,Ingenieria Mecatronica
        code: 2025967
    },
    {
        name: 'Modelos estocásticos y simulación en computación y comunicaciones',#Ingeniería Sistemas y computacion
        code: 2025969
    },
    {
        name: 'Modelos y simulación',#Ingeniería Sistemas y computacion, Ingenieria Industrial
        code: 2025970
    },
    {
        name: 'Optimización',#Ingeniería Sistemas y computacion, Ingenieria Industrial
        code: 2025971
    },
    {
        name: 'Introducción a la criptografía y a la seguridad de la Información',#Ingeniería Sistemas y computacion
        code: 2025972
    },
    {
        name: 'Trabajo de grado - modalidad practica de extensión',#Todos
        code: 2025973
    },
    {
        name: 'Trabajo de grado - modalidad trabajos investigativos',#Todos
        code: 2025974
    },
    {
        name: 'Introducción a la ingeniería de sistemas y computación',#Todos
        code: 2025975
    },
    {
        name: 'Sistemas de información',#Ingeniería Sistemas y computacion, Ingenieria Industrial
        code: 2025982
    },
    {
        name: 'Programación de computadoresArquitectura de infraestructura y gobierno  de tics',#Ingeniería Sistemas y computacion
        code: 2025983
    },
    {
        name: 'Ingeniería económica y análisis de riesgo',#Ingeniería Sistemas y computacion, Ingenieria Industrial
        code: 2025986
    },
    {
        name: 'Modelos estocásticos para procesos de manufactura y sistemas de servicios',#Ingenieria Industrial
        code: 2025987
    },
    {
        name: 'Taller de simulación procesos de manufactura y sistemas de servicios',#Ingenieria Industrial
        code: 2025988
    },
    {
        name: 'Trabajo de grado - Modalidad practica de extension',#Todos
        code: 2025989
    },
    {
        name: 'Trabajo de grado - Modalidad trabajos investigativos',#Todos
        code: 2025990
    },
    {
        name: 'Taller de ciencia y tecnología de materiales',#Ingenieria Industrial , Ingenieria Mecanica
        code: 2025993
    },
    {
        name: 'Teoría de la información y sistemas de comunicacion',#Ingeniería Sistemas y computacion
        code: 2025994
    },
    {
        name: 'Introducción a los sistemas inteligentes',#Ingeniería Sistemas y computacion
        code: 2025995
    },
    {
        name: 'Seminario de investigación I',#Todos
        code: 2026118
    },
    {
        name: 'Seminario de investigación II',#Todos
        code: 2026119
    },
    {
        name: 'Seminario de profundización I',#Todos
        code: 2026120
    },
    {
        name: 'Seminario de profundización II',#Todos
        code: 2026121
    },
    {
        name: 'Tesis de Maestría',#Todos
        code: 2026141
    },
    {
        name: 'Proyecto de Tesis de Maestría',#Todos
        code: 2026142
    },
    {
        name: 'Trabajo final de Maestría',#Todos
        code: 2026143
    },
    {
        name: 'Introducción al gobierno electrónico',#Ingeniería Sistemas y computacion
        code: 2026208
    },
    {
        name: 'Tecnologías de información y gobierno electrónico',#Ingeniería Sistemas y computacion
        code: 2026231
    },
    {
        name: 'Gerencia de proyectos aplicado al gobierno electrónico',#Ingeniería Sistemas y computacion
        code: 2026440
    },
    {
        name: 'Taller de herramientas y problemas en ingeniería industrial',#Ingenieria Industrial
        code: 2026488
    },
    {
        name: 'Gestión de las tecnologías de información',#Ingeniería Sistemas y computacion
        code: 2026502
    },
    {
        name: 'Tendencias actuales en la administración de la cadena de abastecimiento',#Ingeniería Sistemas y computacion,Ingenieria Industrial
        code: 2026525
    },
    {
        name: 'La calidad de servicio en el gobierno electrónico',#Ingeniería Sistemas y computacion
        code: 2026537
    },
    {
        name: 'Taller aplicado al gobierno electrónico',#Ingeniería Sistemas y computacion
        code: 2026538
    },
    {
        name: 'Creación y gestión de empresas',#Ingenieria Industrial
        code: 2026551
    },
    {
        name: 'Introducción a la ingeniería industrial',#Ingenieria Industrial
        code: 2026805
    },
    {
        name: 'Biología de sistemas',#Ingeniería Sistemas y computacion
        code: 2026806
    },
    {
        name: 'Investigación y gestión de mercados',#Ingenieria Industrial
        code: 2026814
    },
    {
        name: 'Temas avanzados de lenguajes de programación',#Ingeniería Sistemas y computacion
        code: 2027030
    },
    {
        name: 'PGobierno electrónico y regulación',#Ingeniería Sistemas y computacion
        code: 2027201
    }
        
    ])


    50.times do
       Resource.create([{
         name: Faker::Name.title,
         link: "http://localhost:3000/uploads/resource/resource/pdf-sample.pdf",
         description: Faker::RickAndMorty.quote
        }])
    end

    Teacher.create([
        {
        name:'HUGO ALBERTO HERRERA FONSECA',#1 ya 1
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'ALFONSO HERRERA JIMENEZ',#2,3 ya 2
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JULIO CESAR CAÑON RODRIGUEZ',#3 ya 3
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JAIRO TORRES PARRA',#3 ya 4
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'FELIX ANTONIO CORTES ALDANA',#3 ya 5
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'CARLOS HERNAN CAICEDO ESCOBAR',#3,28 ya 6
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'PEDRO AGUSTIN PEREZ TORRES',#3 ya 7
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'FERNANDO GUZMAN CASTRO',#4,5 ya 8
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'ISMAEL CASTAÑEDA FUENTES',#7 ya 9
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JUAN CARLOS TORRES PARDO',#7,105 ya 10
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JORGE ENRIQUE AMAYA CALA',#8 ya 11
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'ALEXEI GABRIEL OCHOA DUARTE',#8 ya 12
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JOSE DANIEL SALAZAR MORA',#8 ya 13
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JEAN PIERRE CHARALAMBOS HERNANDEZ',#8,77 ya 14
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'FABIAN ANDRES GIRALDO GIRALDO',#8 ya 15
        description: Faker::RickAndMorty.quote,
        },      
        {
        name:'MICHAEL SILVA CRUZ',#9,18 ya 16
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'HECTOR CIFUENTES AYA',#9,21 ya 17
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JUAN SEBASTIAN PARADA PORTILLA',#10 ya 18
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'FELIPE AUGUSTO DIAZ SUAZA',#10 ya 19
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'OSCAR FERNANDO CASTELLANOS DOMINGUEZ',#11,21 ya 20
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'WILSON ADARME JAIMES',#12 ya 21
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'CARLOS JULIO LOZANO PIEDRAHITA',#13 ya 22
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JOSE MARIA PINZON MONTILLA',#15 ya 23
        description: Faker::RickAndMorty.quote,
        
        },
        {
        name:'JAIR EDUARDO ROCHA GONZALEZ',#16 ya 24
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'GUSTAVO ALFREDO BULA',#17 ya 25
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JUAN DAVID SUAREZ MORENO',#18 ya 26
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JUAN PABLO ESCAMILLA MEJIA',#19 ya 27
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'CARLOS EDUARDO MORENO MANTILLA',#20 ya 28
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'GERMAN JAIRO HERNANDEZ PEREZ',#22,26 ya 29
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'FRANCISCO MELUK OROZCO',#23,36  ya 30
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'TITO FLOREZ CALDERON',#24 ya 31
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'INGRID PATRICIA PAEZ PARRA',#24 ya 32
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'CESAR MANUEL LOVERA CABRERA',#25,79,95 ya 33
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'CARLOS ANDRES SIERRA VIRGUEZ',#25 ya 34
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'ANDRÉS RICARDO ARÉVALO MURILLO',#25 ya 35
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'ANDRES VERA BUITRAGO',#25 ya 36
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'NICOLÁS MÚNERA GARZÓN',#25 ya 37
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'EDGAR MIGUEL VARGAS CHAPARRO',#26,95 ya 38
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'SEBASTIAN ALEJANDRO VELASCO DIMATE',#27 ya 39
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JEISSON ANDRÉS VERGARA VARGAS',#29 ya 40
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JESUS GUILLERMO TOVAR',#67,79 ya 41
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'OCTAVIO JOSE SALCEDO PARRA',#79 ya 42
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'OSCAR AGUDELO ROJAS',#31 ya 43
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'CESAR AUGUSTO PEDRAZA BONILLA',#29,31 ya 44
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'FELIPE RESTREPO CALLE' ,#78,116 ya 45
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JOAQUIN FERNANDO SANCHEZ CIFUENTES',#78 ya 46
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'LUIS GERARDO ASTAIZA AMADO',#81,82 ya 47
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JUAN CARLOS ALDANA BERNAL',#81,82 ya 48
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'CARLOS OSORIO RAMIREZ',#82 ya 49 
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JORGE ELIECER CAMARGO MENDOZA',#83 ya 50
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'FABIO AUGUSTO GONZALEZ OSORIO',#38 ya 51
        description: Faker::RickAndMorty.quote,
        },
        {
        name:'JONATAN GOMEZ PERDOMO',#46,96
        description: Faker::RickAndMorty.quote,
        }
        ]) 

TeacherHasCourse.create([
    {
        course_id: 1,
        teacher_id: 1
    },
    {
        course_id: 2,
        teacher_id: 2
    },
    {
        course_id: 3,
        teacher_id: 2
    },
    {
        course_id: 3,
        teacher_id: 3
    },
    {
        course_id: 3,
        teacher_id: 4
    },
    {
        course_id: 3,
        teacher_id: 5
    },
    {
        course_id: 3,
        teacher_id: 6
    },
    {
        course_id: 28,
        teacher_id: 6
    },
    {
        course_id: 3,
        teacher_id: 7
    },
    {
        course_id: 4,
        teacher_id: 8
    },
    {
        course_id: 5,
        teacher_id: 8
    },
    {
        course_id: 7,
        teacher_id: 9
    },
    {
        course_id: 7,
        teacher_id: 10
    },
    {
        course_id: 105,
        teacher_id: 10
    },
    {
        course_id: 8,
        teacher_id: 11
    },
    {
        course_id: 8,
        teacher_id: 12
    },
    {
        course_id: 8,
        teacher_id: 13
    },
    {
        course_id: 8,
        teacher_id: 14
    },
    {
        course_id: 77,
        teacher_id: 14
    },
    {
        course_id: 8,
        teacher_id: 15
    },
    {
        course_id: 9,
        teacher_id: 16
    },
    {
        course_id: 18,
        teacher_id: 16
    },
    {
        course_id: 9,
        teacher_id: 17
    },
    {
        course_id: 21,
        teacher_id: 17
    },
    {
        course_id: 10,
        teacher_id: 18
    },
    {
        course_id: 10,
        teacher_id: 19
    },
    {
        course_id: 11,
        teacher_id: 20
    },
    {
        course_id: 21,
        teacher_id: 20
    },
    {
        course_id: 12,
        teacher_id: 21
    },
    {
        course_id: 13,
        teacher_id: 22
    },
    {
        course_id: 15,
        teacher_id: 23
    },
    {
        course_id: 16,
        teacher_id: 24
    },
    {
        course_id: 17,
        teacher_id: 25
    },
    {
        course_id: 18,
        teacher_id: 26
    },
    {
        course_id: 19,
        teacher_id: 27
    },
    {
        course_id: 20,
        teacher_id: 28
    },
    {
        course_id: 22,
        teacher_id: 29
    },
    {
        course_id: 26,
        teacher_id: 29
    },
    {
        course_id: 23,
        teacher_id: 30
    },
    {
        course_id: 36,
        teacher_id: 30
    },
    {
        course_id: 24,
        teacher_id: 31
    },
    {
        course_id: 24,
        teacher_id: 32
    },
    {
        course_id: 25,
        teacher_id: 33
    },
    {
        course_id: 79,
        teacher_id: 33
    },
    {
        course_id: 95,
        teacher_id: 33
    },
    {
        course_id: 25,
        teacher_id: 34
    },
    {
        course_id: 25,
        teacher_id: 35
    },
    {
        course_id: 25,
        teacher_id: 36
    },
    {
        course_id: 25,
        teacher_id: 37
    },
    {
        course_id: 26,
        teacher_id: 38
    },
    {
        course_id: 95,
        teacher_id: 38
    },
    {
        course_id: 27,
        teacher_id: 39
    },
    {
        course_id: 29,
        teacher_id: 40
    },
    {
        course_id: 67,
        teacher_id: 41
    },
    {
        course_id: 79,
        teacher_id: 41
    },
    {
        course_id: 79,
        teacher_id: 42
    },
    {
        course_id: 31,
        teacher_id: 43
    },
    {
        course_id: 29,
        teacher_id: 44
    },
    {
        course_id: 31,
        teacher_id: 44
    },
    {
        course_id: 78,
        teacher_id: 45
    },
    {
        course_id: 116,
        teacher_id: 45
    },
    {
        course_id: 78,
        teacher_id: 46
    },
    {
        course_id: 81,
        teacher_id: 47
    },
    {
        course_id: 82,
        teacher_id: 47
    },
    {
        course_id: 81,
        teacher_id: 48
    },
    {
        course_id: 82,
        teacher_id: 48
    },
    {
        course_id: 82,
        teacher_id: 49
    },
    {
        course_id: 83,
        teacher_id: 50
    },
    {
        course_id: 38,
        teacher_id: 51
    },
    {
        course_id: 46,
        teacher_id: 52
    },
    {
        course_id: 96,
        teacher_id: 52
    }

    ])

50.times do
    TeacherHasResource.create([{
        teacher_id: rand(1..50),
        resource_id: rand(1..50)
    }])
end

50.times do
    CourseHasResource.create([{
        course_id: rand(1..50),
        resource_id: rand(1..50)
    }])
end



