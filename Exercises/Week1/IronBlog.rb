class Blog
  def initialize
    @container_post = [] 
  end

  def add_post(post)
    @container_post.push(post)
  end

  def publish_front_page
    #Con sort.by ordenamos por fecha todos los post.
    #Lo recoges en otra variable porque el sort by te lo devuelve ordenado,
    #por ello es necesario recogerlo en dicha variable
    container_sorted_by_date = @container_post.sort_by {|post| post.date}
    #Recorre todo el array de post y muestra cada uno de los valores del mismo
    container_sorted_by_date.each do |post|
      post.sponsorized
      
      #Refactorizar de manera ternaria
      #puts post.sponsorized ? "++++++" + post.title + "++++++" : post.title
      #puts  "****************"
      #puts  post.text

      #En el caso de que sea True el post saldrá esponsorizado
      if post.sponsorized
        puts "++++++" + post.title + "++++++"
      else
        puts  post.title
      end
      
      puts  "****************"
      puts  post.text
    end
  end

  def pagination
    
  end

end

class Post
  attr_reader :title, :date, :text, :sponsorized
  def initialize(title, date, text, sponsorized)
    @title = title
    @date = date
    @text = text
    @sponsorized = sponsorized
  end
end


blog = Blog.new
blog.add_post Post.new('Primer post', 25, 'Este es mi primer post', true)
blog.add_post Post.new('Otro post muy sexy', 30, 'Alabaré alabaré', false)
blog.add_post Post.new('El post del día', 5, 'A este paso seré escritor...', false)

blog.publish_front_page