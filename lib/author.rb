
class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
    @posts << post
  end


end
