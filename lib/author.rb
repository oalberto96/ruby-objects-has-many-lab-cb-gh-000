
class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
  end

  def add_post(post)
    @posts << post
  end


end
