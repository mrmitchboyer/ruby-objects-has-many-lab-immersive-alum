class Author
  attr_accessor :name
  attr_reader :posts

  @@posts = []

  def self.post_count
    @@post_count = @@posts.count
  end

  def initialize(name)
    self.name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    @@posts << post
  end

end
