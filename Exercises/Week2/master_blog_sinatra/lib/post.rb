class Post
  attr_reader :title, :text, :author, :category, :date
  def initialize (title, text, author, category, date = Time.now)
    @title = title
    @text = text
    @author = author
    @category = category
    @date = date
  end

  #Applyiing format to date
  def show_in_strftime
    @date.strftime("%d/%m/%Y -- %H:%M")
  end
end