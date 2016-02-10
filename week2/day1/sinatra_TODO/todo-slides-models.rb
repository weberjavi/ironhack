#todo-slides.rb
class TodoList
	attr_reader : list_of_todos
	def initialize
		@list_of_todos = []
	end
	def add_todo(todo)
		@list_of_todos << todo
	end
	def total_time
		@list_of_todos.reduce(0) do |total, todo|
			total + todo.time
		end
	end
end

class Todo
	attr_reader :content, :time
	def initialize(content, time)
		@content = content
		@time = time
	end
end