class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end

    def add_task task
      @task << task
    end
end