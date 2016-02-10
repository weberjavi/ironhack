require_relative "./todo.rb"
require "pry"

class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end
    def add_task(task)
      @tasks << task
    end
    def delete_task(identificador)
      @tasks.delete_if{|task| task.id == identificador}
    end
    def find_task_by_id(identificador)
      
    end
end