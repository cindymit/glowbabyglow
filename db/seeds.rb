# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Post.destroy_all
User.destroy_all

@cindy = User.create!(username: 'Cindy1', email: 'Cindy1@email.com', password: 'abc123')
@sophie = User.create!(username: 'Sophie2', email: 'Sophie2@email.com', password: 'abc123')
@ida = User.create!(username: 'Ida3', email: 'Ida3@email.com', password: 'abc123')

puts "#{User.count} users created"

@better_than_sex_mascara = Post.create!(title: 'Better than sex? Yeah right!', body: 'This mascara did nothing for me. I paid $27 for it to just be clumpy on my lashes and then give me permanent racoon eyes. Its a no for me!', image_url: 'https://images.ulta.com/is/image/Ulta/2263444?op_sharpen=1&resMode=bilin&qlt=85&wid=800&hei=800&fmt=jpg', user: @cindy)

puts "#{Post.count} post(s) created"

Comment.create!(user: @sophie, content: 'I actually disagree! I found that it made my straight lashes voluminous and curled up nicely.', post: @better_than_sex_mascara)
Comment.create!(user: @ida, content: 'I did not hate it or love it. It was so-so. Not a future purchase for me again.', post: @better_than_sex_mascara)

puts "#{Comment.count} comments created"