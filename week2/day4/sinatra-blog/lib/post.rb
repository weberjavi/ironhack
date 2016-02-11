class Post
  attr_reader :tittle, :text, :date
  def initialize(tittle, text, date = Time.now)
    @tittle = tittle
    @text = text
    @date = date
  end
end