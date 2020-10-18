post = Post.create(
	name: "New Album",
	title: "Bad Seeds",
	author: "Nick Cave",
	content: "Tracklist"
)

puts "Some magic just create a #{ post.name } with id #{ post.id }!"

image: File.open(Rails.root.join('public', 'images', 'pic-1.jpg'))

posts = [
{
	name: "New Album",
	title: "The Bad Seeds",
	author: "Nick Cave",
	content: "Tracklist"
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist"
}
]

posts.each do |post|
	postik = Post.create(post)
	puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
end
