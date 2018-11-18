class Author
  
  attr_accessor :name, :title, :posts
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(title)
    @posts << title
    posts.author = self
    @@post_count += 1 
  end
  
  def posts
    @posts
  end
  
  def add_post_by_title(title)
    posts = Post.new(title)
    @posts << posts
    posts.artist = self
    @@post_count += 1
  end
  
  def post_count
    @@post_count
  end
  
  
  
  
  
end