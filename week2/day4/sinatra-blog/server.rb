require "sinatra"
require "sinatra/reloader" if development? # Comprueba si el servidor está en desarrollo y en cuanto haces un cambio se resetea el servidor
require "pry" if development?
enable(:sessions) #De este modo guardamos las sesiones (cookies)

require_relative "./lib/blog.rb"
require_relative "./lib/post.rb"

  blog = Blog.new
  post1 = Post.new("post1", "texto post 1")
  post2 = Post.new("post2", "texto post 2")
  post3 = Post.new("post3", "texto post 3")
  post4 = Post.new("post4", "texto post 4")
  blog.add_post(post1)
  blog.add_post(post2)
  blog.add_post(post3)
  blog.add_post(post4)

get "/" do
  @posts = blog.latest_posts
  erb (:posts)
end

get "/posts/:title/:id" do
  @blog_data = blog.latest_posts
  @id = params[:id]

  erb (:single_post)
end

get "/new_post" do
  erb (:create_post)
end

post "/add_post" do
  
end