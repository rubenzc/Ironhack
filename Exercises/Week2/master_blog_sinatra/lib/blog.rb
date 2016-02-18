class Blog
  attr_reader :posts
  def initialize
    @posts = []
  end

  def add_post(post)
    @posts << post
    #@post.push post
  end

  def latest_posts
    @posts.sort do |post1, post2|
      post2.date <=> post1.date
    end
  end

end