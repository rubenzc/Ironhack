class Task
    attr_reader :content, :id
    @@current_id = 1

    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @created_at = Time.now
    end

    def complete?
      complete
    end

    def complete!
      @complete = true
    end

    def make_incomplete!
      @complete = false
    end

    def update_content! new_content
      @updated_at = Time.now
      @content = new_content
    end
end

# puts task.id
# # 1
# task2 = Task.new("Wash the car")
# puts task2.id
# # 2