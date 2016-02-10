require "rspec"
require_relative "../todo_list.rb"

RSpec.describe "TodoList" do
	#Con let indicamos que esta acción debe realizarse sólo en los tests en los que utilicemos la variable
	let (:todo_list) {TodoList.new}

	describe "#add_task" do
		it "takes a parameter of a task and add it to our tasks array" do
      todo_list.add_task("wash dishes")
			expect(todo_list.tasks[0]).to eq("wash dishes")
		end
	end

  describe "#delete_task" do
    it "should delete a task by index" do
      task = Task.new("new task")
      todo_list.add_task(task)
      expect(todo_list.delete_task(1)).to eq("new task")
    end
  end

end