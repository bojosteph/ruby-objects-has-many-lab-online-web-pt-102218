class Author
  
  attr_accessor :name, :posts
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(posts)
    @posts << posts
    posts.author = self
    @@post_count += 1 
  end
  
  def posts
    @posts
  end
  
  def add_post_by_title(name)
    posts = Post.new(name)
    @posts << posts
    posts.artist = self
    @@post_count += 1
  end
  
  def post_count
    @@post_count
  end
  
  
  
  
  
end