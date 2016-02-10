require_relative "./todo.rb"

class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end
    def add_task(task)
      @tasks << task
    end
    def delete_task
      
    end
end