require 'sinatra'
require 'sinatra/reloader' if development?
#require 'pry'
require_relative './lib/Blog.rb'
require_relative './lib/Post.rb'

#enable(:sessions)
#Create new object Blog
my_Blog = Blog.new
#Instance of the Post
my_Blog.add_post(Post.new "Post one", "It's a beautiful day!", "Ru", "Sports")
my_Blog.add_post(Post.new "Post two", "It's a cloudy day!", "Ru", "Science")
my_Blog.add_post(Post.new "Post three", "It's a sunny day!", "Ru", "Development")

get "/" do
  redirect("/homepage")
end

get "/homepage" do
  #Call to post sorted by date
  @posts = my_Blog.latest_posts
  erb(:homepage)
end

get "/post_details/:index" do
  @post = my_Blog.latest_posts[params[:index].to_i]
  erb(:post_details)
end

get "/new_post" do
  erb(:new_post)
end

post "/????" do
  #Take the values title and text after pushing the button to create a new post
  new_post = Post.new(params[:title], params[:text], params[:category], params[:author])
  #Call to add_post to create a new post
  my_Blog.add_post new_post
  redirect("/homepage")

end


# get "/post_details/:index"do
#   @post = my_Blog.latest_posts[params[:index].to_i]
#   if @post < 3
#     erb(:post_details)
#   else
#     redirect ("/homepage")
# end