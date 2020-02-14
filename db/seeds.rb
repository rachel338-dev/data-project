# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.delete_all
User.delete_all
Tag.delete_all
Comment.delete_all
Category.delete_all
PostTag.delete_all





@first_user = User.create(id: 1, first_name: 'Rachel', last_name:'Owusu-Ansah', email: 'rachel.o338@gmail.com')
@second_user = User.create(id: 2, first_name: 'Jeanette', last_name: 'Oduro', email: 'jeanetteoduro@gmail.com')
@third_user = User.create(id: 3,first_name: 'Seran', last_name:'Sathivel', email: 'serans@gmail.com')
@forth_user = User.create(id: 4, first_name: 'Celina', last_name: 'Assal', email: 'celina@gmail.com')
@fifth_user = User.create(id: 5, first_name: 'Jeevan', last_name: 'Dhanoa', email: 'jeeevan@gmail.com')






@first_tag = Tag.create(
    id: 1,
    name: 'Budgeting'
)
@second_tag = Tag.create(
    id: 2,
    name: 'Entrepreneurship'
)
@third_tag = Tag.create(
    id: 3,
    name: 'Startups'
)
@fourth_tag = Tag.create(
    id: 4,
    name: 'Side Hustles'
)
@fifth_tag = Tag.create(
    id: 5,
    name: 'Tech'
)

@first_category = Category.create(
    id:1,
    name: 'Technology'
)

@second_category = Category.create(
    id: 2,
    name: 'Business'
)

@third_category =  Category.create(
    id: 3,
    name: 'Finances'
)

@fourth_category = Category.create(
    id: 4, 
    name: 'Jobs'
)

@fifth_category = Category.create(
    id: 5,
    name: 'Canada'
)

@first_post = Post.create(
    id: 1, 
    title: 'Miss Thrifty', 
    content: 'One of the more',
    user: @second_user, 
    category: @fifth_category,
    tags: [@first_tag, @second_tag] )

@second_post = Post.create(
   id: 2,
    date: Time.now,
    title: "BreakingintoStartups.com", 
    content: "A very inspiring blog that contains motivational stories about startups and the people who work in them and create them", 
    user: @first_user,
    category: @second_category,
tags: [@first_tag, @third_tag])

@third_post = Post.create(
    id: 3, 
    date: Time.now,
    title: 'SolopreneurHour.com',
    content:'A very well designed and slick blog that’s all about being your own boss and creating your own wealth',
    user: @third_user,
    category: @second_category,
    tags: [@first_tag, @second_tag, @third_tag])

@fourth_post = Post.create(
    id: 4, 
    date: Time.now,
    title: 'Knowtechie.com', 
    content: 'Tech News For The Non Techie”. KnowTechie is a blog for people who love tech, but live outside the bubble.',
    user: @second_user,
    category: @third_category,
    tags: [@first_tag, @second_tag, @fourth_tag])

@fifth_post = Post.create(
    id: 5, 
    date: Time.now,
    title: 'SideHustleNation.com', 
    content: 'side Hustle is an online community of entrepreneurs who’s goal is to gain financial freedom through creating businesses that can help them achieve that',
    user: @second_user,
    category: @fourth_category,
    tags: [@first_tag, @second_tag, @fifth_tag])



Comment.create(
    id: 1,
    date: Time.now,
    content: 'wow, amazing post.',
    user_id: 1,
    post: @first_post
)

Comment.create(
    id: 2,
    date: Time.now,
    content: 'great post! learned so much',
    user_id: 3,
    post: @second_post
)

Comment.create(
    id: 3,
    date: Time.now,
    content: 'hello!',
    user_id: 1,
    post: @third_post
)

Comment.create(
    id: 4,
    date: Time.now,
    content: "so refreshing!",
    user_id: 3,
    post: @fourth_post
)

Comment.create(
    id: 5,
    date: Time.now,
    content: "love this",
    user_id: 2,
    post: @second_post
)

Comment.create(
    id: 6,
    date: Time.now,
    content: "aye",
    user_id: 5,
    post: @fifth_post
)

Comment.create(
    id: 7,
    date: Time.now,
    content: "wow cool",
    user_id: 5,
    post: @third_post
)

Comment.create(
    id: 8,
    date: Time.now,
    content: "amazeballs",
    user_id: 2,
    post: @second_post
)

Comment.create(
    id: 9,
    date: Time.now,
    content: "okok",
    user_id: 4,
    post: @first_post
)

Comment.create(
    id: 10,
    date: Time.now,
    content: "hey!",
    user_id: 1,
    post: @second_post
)


