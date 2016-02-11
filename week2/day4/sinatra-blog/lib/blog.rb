class Blog
  attr_reader :posts
  def initialize
    @posts = []
  end
  def add_post(post)
    @posts << post
  end
  def latest_posts
    @posts.reverse {|a, b| b.date <=> a.date}
  end
end