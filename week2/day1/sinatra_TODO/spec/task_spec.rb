require "rspec"
require_relative "../lib/todo.rb"

RSpec.describe "Task" do
	#Con let indicamos que esta acción debe realizarse sólo en los tests en los que utilicemos la variable
	let (:task_example) {Task.new("Buy the milk")}
	

	describe "#completed?" do
		it "returns false if @completed is false" do
			expect(task_example.completed?).to eq(false)
		end
	end

	describe "#completed!" do
		it "changes @completed state to true" do
			expect(task_example.completed!).to eq(true)
		end
	end

	describe "#make_incompleted!" do
		it "changes @completed state to false" do
			expect(Task.new("Buy the milk", true).make_incompleted!).to eq(false)
		end
	end

	describe "#created_at" do
		it "returns the time when a task is created" do
			created_at = Time.now.strftime("%m/%d/%Y")
			expect(task_example.created_at.strftime("%m/%d/%Y")).to eq(created_at)
		end
	end

	describe "#update_content!" do
		it "changes the @content with a new string" do
			task_example.update_content!("new string")
			expect(task_example.content).to eq("new string")
		end
	end

	describe "#updated_at" do
		it "returns the time when a task is updated" do
			time = Time.now.strftime("%m/%d/%Y")
			task_example.update_content!("new content")
			expect(task_example.updated_at).to eq(time)
		end
	end

end