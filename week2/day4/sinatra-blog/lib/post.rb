class Post
  attr_reader :title, :text, :date
  def initialize(title, text, date = Time.now)
    @title = title
    @text = text
    @date = date
  end
end