require "rspec"


class Task
    attr_reader :content, :id, :complete, :created_at, :updated_at
    @@current_id = 1
    def initialize(content, completed = false, created_at = Time.now)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = completed
        @created_at = created_at
        @updated_at = nil
    end
    def completed?
    	@completed
    end
    def completed!
    	#@completed = !@completed    Toogle between true and false
    	@completed = true
    end

    def make_incompleted!
    	@completed = false
    end

    def created_at
    	@created_at
    end

    def update_content!(string)
    	@updated_at = Time.now.strftime("%m/%d/%Y")
    	@content = string
    end


end

task = Task.new("Buy the milk")

task2 = Task.new("Wash the car")


RSpec.describe "Task" do

	let (:task_example) {Task.new("Buy the milk")}

	describe "#completed?"
	it "returns false if @completed is false" do
		expect(task_example.completed?).to eq(false)
	end

	describe "#completed!"
	it "changes @completed state to true" do
		expect(task_example.completed!).to eq(true)
	end

	describe "#make_incompleted!"
	it "changes @completed state to false" do
		expect(Task.new("Buy the milk", true).make_incompleted!).to eq(false)
	end

	describe "#created_at"
	it "returns the time when a task is created" do
		created_at = Time.now.strftime("%m/%d/%Y")
		expect(task_example.created_at.strftime("%m/%d/%Y")).to eq(created_at)
	end

	describe "#update_content!" do
		it "changes the @content with a new string" do
			content = "new string"
			expect(task_example.update_content!("new string")).to eq(content)
		end
	end

	

	describe "#updated_at" do
		it "returns the time when a task is updated" do
			tassk_exmple.update_content!
			task_example.updated_at 
			update_content = Time.now.strftime("%m/%d/%Y")
			expect(update_content).to eq(updated_at)
		end
	end


end

