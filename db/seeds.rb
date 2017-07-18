# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!({

	email: "stephanie@yahoo.com",
	password: "password",
	encrypted_password: 'password',
	sign_in_count: 0,

	})


pose1 = Pose.create!({

	name: "Cat Pose",
	sanskrit_name: "sname",
	description: "A cat like pose",
	image: "image URL",
	difficulty_level: 2,
	user_id: user1.id

	})

pose2 = Pose.create!({

	name: "Cobra Pose",
	sanskrit_name: "sname",
	description: "A cobra like pose",
	image: "image URL",
	difficulty_level: 3,
	user_id: user1.id

	})




# user1.save
# pose1.save