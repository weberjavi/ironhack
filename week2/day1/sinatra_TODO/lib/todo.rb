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
    def update_content!(string)
    	@updated_at = Time.now.strftime("%m/%d/%Y")
    	@content = string
    end
end






