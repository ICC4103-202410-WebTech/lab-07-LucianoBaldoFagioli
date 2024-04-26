# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.delete_all
Post.delete_all

user1 = User.create(name: 'lucca', email: 'lucki@gmail.com', password:'holakase1')
user2 = User.create(name: 'basio', email: 'licko@gmail.com', password:'holakase2')
user3 = User.create(name: 'namar', email: 'lvcka@gmail.com', password:'holakase3')
user4 = User.create(name: 'ukele', email: 'locko@gmail.com', password:'holakase4')
user5 = User.create(name: 'uchin', email: 'licku@gmail.com', password:'holakase5')

post1 = user1.posts.create(title: 'Awesome idea', content: 'today i was feeling low, so got out of the bed and felt up', published_at: Time.now, answers_count: 1, likes_count: 1)

post2 = user1.posts.create(title: 'Planning this stuff', content: 'the planning stuff plan is a plan made in order to plan stuff', published_at: Time.now, answers_count: 12, likes_count: 0)

post3 = user2.posts.create(title: 'awful meal', content: 'i eat spaghetti at this restaurant and was pretty bad, they are not even italians!', published_at: Time.now, answers_count: 4, likes_count: 13)

post4 = user2.posts.create(title: 'presidential rates', content: 'just sharing presidential rates for the period', published_at: Time.now, answers_count: 1, likes_count: 0)

post5 = user3.posts.create(title: 'create ia breaking the world', content: 'this gtp thing is just over, now, decian is the future man!', published_at: Time.now, answers_count: 1493, likes_count: 0)

post6 = user3.posts.create(title: 'horses singing', content: 'ROFL', published_at: Time.now, answers_count: 14567, likes_count: 123455)

post7 = user4.posts.create(title: 'assault on center square', content: 'CALL THE POLICE NOW, PLEASEEE OH MY GOOODDD', published_at: Time.now, answers_count: 147, likes_count: 156)

post8 = user4.posts.create(title: 'scary face', content: 'look at this dog, almost looks human like, so nasty....', published_at: Time.now, answers_count: 18865, likes_count: 14)

post9 = user5.posts.create(title: 'orange juice protest', content: 'we are calling everyone who has ever drunk this beatiful drink to stand up against these abusive compani', published_at: Time.now, answers_count: 16, likes_count: 6146)

post10 = user5.posts.create(title: 'Awesome idea2', content: 'i you are reading this, thank you', published_at: Time.now, answers_count: 6, likes_count: 16)

tag1 = Tag.create(name: 'first tagg')
tag2 = Tag.create(name: 'second tagg')
tag3 = Tag.create(name: 'third tagg')
tag4 = Tag.create(name: 'fourth tagg')
tag5 = Tag.create(name: 'fifth tagg')

post1.tags << tag1
post2.tags << tag1
post3.tags << tag2
post4.tags << tag2
post5.tags << tag3
post6.tags << tag4
post7.tags << tag4
post8.tags << tag5
post9.tags << tag5
post10.tags << tag5