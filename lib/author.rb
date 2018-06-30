
class Author

  attr_accessor :name, :posts
  @@authors = []

  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    @posts << post
    post
  end

  def self.post_count
    total = 0
    @@authors.each{|author| total += author.posts.size}
    total
  end


end
