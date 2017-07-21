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
	is_admin: true

	})


pose1 = Pose.create!({

	name: "Cat Pose",
	sanskrit_name: "Marjaryasana",
	description: "This pose provides a gentle massage to the spine and belly organs.",
	image: File.new("app/assets/images/seed1.jpg"),
	difficulty_level: "Easy"

	})

pose2 = Pose.create!({

	name: "Cobra Pose",
	sanskrit_name: "Bhujangasana",
	description: "Open the heart and roll the shoulders down to promote flexibility in Cobra Pose.",
	image: File.new("app/assets/images/seed2.jpg"),
	difficulty_level: "Medium"

	})

pose3 = Pose.create!({

	name: "Child's Pose",
	sanskrit_name: "Balasana",
	description: "Take a break. Balasana is a restful pose that can be sequenced between more challenging asanas.",
	image: File.new("app/assets/images/seed3.jpg"),
	difficulty_level: "Easy"

	})

UserPose.create!({

	user_id: user1.id,
	pose_id: pose1.id

	})

comment1 = Comment.create!({

	name: "Steph",
	user_id: user1.id,
	comment: "This is a new comment",
	pose_id: pose1.id

	})









