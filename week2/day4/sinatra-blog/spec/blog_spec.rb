require "rspec"
require_relative "../lib/blog.rb"
require_relative "../lib/post.rb"

RSpec.describe "Blog" do

  let (:blog) {Blog.new}

  describe "#post" do
    it "returns an array of the posts added" do
      post = Post.new("name", "text")
      blog.add_post(post)
      expect(blog.posts).to eq([post])
    end
  end

  describe "#latests_posts" do
    it "returns an array of the posts in inverse cronological order" do
      post = Post.new("name", "text")
      post2 = Post.new("name2", "text2")
      blog.add_post(post)
      blog.add_post(post2)
      expect(blog.latest_posts).to eq([post2,post])
    end
  end

end


