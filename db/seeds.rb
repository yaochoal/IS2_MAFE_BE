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
        name: 'Trabajo de Grado - Asignaturas de Posgrado',
        code: 2015321
    },
	{
        name: 'Gerencia de recursos humanos',
        code: 2015701
    },
	{
        name: 'Gerencia y gestión de proyectos',
        code: 2015702
    },
	{
        name: 'Ingeniería económica',
        code: 2015703
    },
	{
        name: 'Programación de computadores',
        code: 2015734
    },
    {
        name: 'Métodos numéricos',
        code: 2015970
    },
	{
        name: 'Bases de datos',
        code: 2016353
    },
	{
        name: 'Programación orientada a objetos',
        code: 2016375
    },
	{
        name: 'Control y Gestión de Calidad',
        code: 2016589
    },
	{
        name: 'Economía general',
        code: 2016592
    },
	{
        name: 'Gestión Tecnológica',
        code: 2016600
    },
	{
        name: 'Logística',
        code: 2016605
    },
	{
        name: 'Seguridad industrial',
        code: 2016609
    },
	{
        name: 'Sistemas de costos',
        code: 2016610
    },
	{
        name: 'Taller de diseño de plantas',
        code: 2016612
    },
	{
        name: 'Taller de Ergonomía e Ingeniería de Métodos',
        code: 2016613
    },
	{
        name: 'Taller de Ingeniería de la Producción',
        code: 2016614
    },
	{
        name: 'Taller de invención y creatividad',
        code: 2016615
    },
	{
        name: 'Taller de Metodología de la Investigación',
        code: 2016616
    },
	{
        name: 'Taller de Procesos Metalmecánicos',
        code: 2016618
    },
	{
        name: 'Taller de Procesos Químicos y Biotecnológicos',
        code: 2016619
    },
	{
        name: 'Algoritmos',
        code: 2016696
    },
	{
        name: 'Arquitectura de computadores',
        code: 2016697
    },
	{
        name: 'Elementos de computadores',
        code: 2016698
    },
	{
        name: 'Estructuras de Datos',
        code: 2016699
    },
	{
        name: 'Ingeniería de software I',
        code: 2016701
    },
	{
        name: 'Ingeniería de software II',
        code: 2016702
    },
	{
        name: 'Pensamiento sistémico',
        code: 2016703
    },
	{
        name: 'Sistemas operativos',
        code: 2016707
    },
	{
        name: 'Arquitectura de Software',
        code: 2016716
    },
	{
        name: 'Computación paralela y distribuida',
        code: 2016722
    },
	{
        name: 'Finanzas',
        code: 2016741
    },
	{
        name: 'Práctica estudiantil I',
        code: 2016762
    },
	{
        name: 'Práctica estudiantil II',
        code: 2016763
    },
	{
        name: 'Práctica estudiantil III',
        code: 2016764
    },
	{
        name: 'Tecnología Digital',
        code: 2016788
    },
	{
        name: 'Trabajo de grado - asignaturas de posgrado',
        code: 2016843
    },
	{
        name: 'Aprendizaje de máquina',
        code: 2019764
    },
	{
        name: 'Ingeniería de software avanzada',
        code: 2019772
    },
	{
        name: 'Minería de datos',
        code: 2019773
    },
	{
        name: 'Propuesta de Trabajo final de Maestría',
        code: 2019777
    },
	{
        name: 'Proyecto de Tesis de Maestría',
        code: 2019778
    },
	{
        name: 'Sistemas de información',
        code: 2019786
    },
	{
        name: 'Tesis de Maestría',
        code: 2019811
    },
	{
        name: 'Trabajo final de Maestría',
        code: 2019813
    },
	{
        name: 'Vida artificial',
        code: 2019814
    },
	{
        name: 'Curso dirigido I',
        code: 2019816
    },
	{
        name: 'Examen de calificación',
        code: 2019848
    },
	{
        name: 'Proyecto de Tesis de Doctorado',
        code: 2019849
    },
	{
        name: 'Seminario de investigación I',
        code: 2019850
    },
	{
        name: 'Seminario de investigación II',
        code: 2019851
    },
	{
        name: 'Tesis de Doctorado',
        code: 2019852
    },
	{
        name: 'Empresa y medio ambiente',
        code: 2020067
    },
	{
        name: 'Gerencia de la innovación',
        code: 2020069
    },
	{
        name: 'Ingeniería económica avanzada',
        code: 2020071
    },
	{
        name: 'Investigación y desarrollo en ingeniería industrial',
        code: 2020074
    },
	{
        name: 'Logística aplicada a redes de distribución y transporte',
        code: 2020076
    },
	{
        name: 'Propuesta de Trabajo final de Maestría',
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
        name: 'Temas avanzados en geomática I',
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
        name: 'Administración de Redes',
        code: 2023697
    },
	{
        name: 'Gestión y planeación tecnológica',
        code: 2023707
    },
	{
        name: 'Política Sectorial y Negociación en Telecomunicaciones',
        code: 2023713
    },
	{
        name: 'Tesis de Doctorado',
        code: 2024654
    },
	{
        name: 'Proyecto de Tesis de Doctorado',
        code: 2024655
    },
	{
        name: 'Examen de calificación',
        code: 2024656
    },
	{
        name: 'Seminario de investigación I',
        code: 2024657
    },
	{
        name: 'Seminario de investigación II',
        code: 2024658
    },
	{
        name: 'CURSO DIRIGIDO 1',
        code: 2024710
    },
	{
        name: 'CURSO DIRIGIDO 2',
        code: 2024711
    },
	{
        name: 'Computación visual',
        code: 2025960
    },
	{
        name: 'Lenguajes de programación',
        code: 2025966
    },
	{
        name: 'Redes de computadores',
        code: 2025967
    },
	{
        name: 'Modelos estocásticos y simulación en computación y comunicaciones',
        code: 2025969
    },
	{
        name: 'Modelos y simulación',
        code: 2025970
    },
	{
        name: 'Optimización',
        code: 2025971
    },
	{
        name: 'Introducción a la criptografía y a la seguridad de la Información',
        code: 2025972
    },
	{
        name: 'Trabajo de grado - modalidad practica de extensión',
        code: 2025973
    },
	{
        name: 'Trabajo de grado - modalidad trabajos investigativos',
        code: 2025974
    },
	{
        name: 'Introducción a la ingeniería de sistemas y computación',
        code: 2025975
    },
	{
        name: 'Sistemas de información',
        code: 2025982
    },
	{
        name: 'Programación de computadoresArquitectura de infraestructura y gobierno  de tics',
        code: 2025983
    },
	{
        name: 'Ingeniería económica y análisis de riesgo',
        code: 2025986
    },
	{
        name: 'Modelos estocásticos para procesos de manufactura y sistemas de servicios',
        code: 2025987
    },
	{
        name: 'Taller de simulación procesos de manufactura y sistemas de servicios',
        code: 2025988
    },
	{
        name: 'Trabajo de grado - Modalidad practica de extension',
        code: 2025989
    },
	{
        name: 'Trabajo de grado - Modalidad trabajos investigativos',
        code: 2025990
    },
	{
        name: 'Taller de ciencia y tecnología de materiales',
        code: 2025993
    },
	{
        name: 'Teoría de la información y sistemas de comunicacion',
        code: 2025994
    },
	{
        name: 'Introducción a los sistemas inteligentes',
        code: 2025995
    },
	{
        name: 'Seminario de investigación I',
        code: 2026118
    },
	{
        name: 'Seminario de investigación II',
        code: 2026119
    },
	{
        name: 'Seminario de profundización I',
        code: 2026120
    },
	{
        name: 'Seminario de profundización II',
        code: 2026121
    },
	{
        name: 'Tesis de Maestría',
        code: 2026141
    },
	{
        name: 'Proyecto de Tesis de Maestría',
        code: 2026142
    },
	{
        name: 'Trabajo final de Maestría',
        code: 2026143
    },
	{
        name: 'Introducción al gobierno electrónico',
        code: 2026208
    },
	{
        name: 'Tecnologías de información y gobierno electrónico',
        code: 2026231
    },
	{
        name: 'Gerencia de proyectos aplicado al gobierno electrónico',
        code: 2026440
    },
	{
        name: 'Taller de herramientas y problemas en ingeniería industrial',
        code: 2026488
    },
	{
        name: 'Gestión de las tecnologías de información',
        code: 2026502
    },
	{
        name: 'Tendencias actuales en la administración de la cadena de abastecimiento',
        code: 2026525
    },
	{
        name: 'La calidad de servicio en el gobierno electrónico',
        code: 2026537
    },
	{
        name: 'Taller aplicado al gobierno electrónico',
        code: 2026538
    },
	{
        name: 'Creación y gestión de empresas',
        code: 2026551
    },
	{
        name: 'Introducción a la ingeniería industrial',
        code: 2026805
    },
	{
        name: 'Biología de sistemas',
        code: 2026806
    },
	{
        name: 'Investigación y gestión de mercados',
        code: 2026814
    },
	{
        name: 'Temas avanzados de lenguajes de programación',
        code: 2027030
    },
	{
        name: 'PGobierno electrónico y regulación',
        code: 2027201
    }
		
	])




50.times do
    Theme.create([{
        name: Faker::Name.title,
        description: Faker::RickAndMorty.location 

    }])
end



50.times do
    Resource.create([{
        name: Faker::Name.title,
        link: Faker::Internet.url,
        scoreresource_id: rand(1...500)
    }])
end




50.times do
    Scoreresource.create([{
        score: rand(1...5),
        votes: rand(1...500)
    }])
end

 
    Teacher.create([
	    {
        name:'HUGO ALBERTO HERRERA FONSECA',#1
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'ALFONSO HERRERA JIMENEZ',#2,3
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JULIO CESAR CAÑON RODRIGUEZ',#3
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JAIRO TORRES PARRA',#3
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'FELIX ANTONIO CORTES ALDANA',#3
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'CARLOS HERNAN CAICEDO ESCOBAR',#3,26
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'PEDRO AGUSTIN PEREZ TORRES',#3
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'FERNANDO GUZMAN CASTRO',#4
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'ISMAEL CASTAÑEDA FUENTES',#5
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JUAN CARLOS TORRES PARDO',#5
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JORGE ENRIQUE AMAYA CALA',#6
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'ALEXEI GABRIEL OCHOA DUARTE',#6
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JOSE DANIEL SALAZAR MORA',#6
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JEAN PIERRE CHARALAMBOS HERNANDEZ',#6
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'FABIAN ANDRES GIRALDO GIRALDO',#6
        description: Faker::RickAndMorty.quote,
        },		
		{
        name:'MICHAEL SILVA CRUZ',#7,15
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'HECTOR CIFUENTES AYA',#7,18
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JUAN SEBASTIAN PARADA PORTILLA',#8
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'FELIPE AUGUSTO DIAZ SUAZA',#8
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'OSCAR FERNANDO CASTELLANOS DOMINGUEZ',#9,19
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'WILSON ADARME JAIMES',#10
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'CARLOS JULIO LOZANO PIEDRAHITA',#11
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JOSE MARIA PINZON MONTILLA',#12
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JAIR EDUARDO ROCHA GONZALEZ',#13
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'GUSTAVO ALFREDO BULA',#14
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JUAN DAVID SUAREZ MORENO',#16
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JUAN PABLO ESCAMILLA MEJIA',#16
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'CARLOS EDUARDO MORENO MANTILLA',#17
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'GERMAN JAIRO HERNANDEZ PEREZ',#20,23
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'FRANCISCO MELUK OROZCO',#21
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'TITO FLOREZ CALDERON',#22
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'INGRID PATRICIA PAEZ PARRA',#22
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'CESAR MANUEL LOVERA CABRERA',#22
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'CARLOS ANDRES SIERRA VIRGUEZ',#23
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'ANDRÉS RICARDO ARÉVALO MURILLO',#23
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'ANDRES VERA BUITRAGO',#23
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'NICOLÁS MÚNERA GARZÓN',#24
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'EDGAR MIGUEL VARGAS CHAPARRO',#24
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'SEBASTIAN ALEJANDRO VELASCO DIMATE',#25
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JEISSON ANDRÉS VERGARA VARGAS',#27
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JESUS GUILLERMO TOVAR',
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'OCTAVIO JOSE SALCEDO PARRA',#inventa notas
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'OSCAR AGUDELO ROJAS',
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'CESAR AUGUSTO PEDRAZA BONILLA',
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'FELIPE RESTREPO CALLE' ,
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JOAQUIN FERNANDO SANCHEZ CIFUENTES',
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'LUIS GERARDO ASTAIZA AMADO',
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JUAN CARLOS ALDANA BERNAL',
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'CARLOS OSORIO RAMIREZ',
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JORGE ELIECER CAMARGO MENDOZA',
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'FABIO AUGUSTO GONZALEZ OSORIO',
        description: Faker::RickAndMorty.quote,
        },
		{
        name:'JONATAN GOMEZ PERDOMO',
        description: Faker::RickAndMorty.quote,
        }
		])




50.times do 
    Comment.create([{
        comment: Faker::HitchhikersGuideToTheGalaxy.quote,
        user_id: rand(1...500),
        scorecomment_id: rand(1...500)
        }])
end




50.times do 
    Scorecomment.create([{
        positive: rand(1...250),
        negative: rand(1...250)
        }])
end


TeacherHasCourse.create([
		{
        teacher_id: 1,
        course_id: 1
		},
		{
        teacher_id: 1,
        course_id: 2
		},
		{
        teacher_id: 1,
        course_id: 3
		},
		{
        teacher_id: 1,
        course_id: 4
		},
		{
        teacher_id: 1,
        course_id: 5
		},
		{
        teacher_id: 2,
        course_id: 2
		},
		{
        teacher_id: 2,
        course_id: 4
		},
		{
        teacher_id: 2,
        course_id: 1
		},
		{
        teacher_id: 4,
        course_id: 1
		},
		{
        teacher_id: 5,
        course_id: 3
		}
        ])


