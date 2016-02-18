class Task
  attr_reader :content, :id
  @@current_id = 1

  def initialize(content)
    @content = content
    @id = @@current_id
    @@current_id += 1
    #Step 1
    @completed = false
    @created_at = Time.now
    update_at = nil
  end

  def complete?
    @completed
  end

  def complete!
    @completed = true
  end

  def make_incomplete!
    @completed
  end

  def upadate_content!
    @content
    @created_at = Time.now
  end

  def updated_at
    @created_at
  end

end

task = Task.new("Buy the dog")
#Imprime el id de la primera task
puts task.id
puts task.content
task.complete?
task.complete!
task.make_incomplete!
task.update_content!("Buy the milk")

task2 = Task.new("Walk the milk")
#Imprime el id de la segunda task
puts task2.id
puts task2.content
task2.complete?
task.complete!
task.make_incomplete!
task2.update_content!("Walk the dog")
