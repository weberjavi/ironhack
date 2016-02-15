require "pry"

class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end
    def add_task(task) # Inyección de Dependencias: En este método introduciríamos como parámetro una instancia de la clase Task
      @tasks << task
    end
    def delete_task(identificador)
      @tasks.delete_if{|task| task.id == identificador}
    end
    def find_task_by_id(identificador)
      
    end
end