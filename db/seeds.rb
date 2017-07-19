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
	sanskrit_name: "Marjaryasana",
	description: "This pose provides a gentle massage to the spine and belly organs.",
	image: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_60%2Cw_1920/MTQ3MTc0NjYxMzIxNDAxODA2/2hp_286_0574_bjk.jpg",
	difficulty_level: 2


	})

pose2 = Pose.create!({

	name: "Cobra Pose",
	sanskrit_name: "Bhujangasana",
	description: "Open the heart and roll the shoulders down to promote flexibility in Cobra Pose.",
	image: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_60%2Cw_1920/MTQ3MTU3MjczOTUxNjEwMzE4/3yp_287_6710_gn_bjk.jpg",
	difficulty_level: 3

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







