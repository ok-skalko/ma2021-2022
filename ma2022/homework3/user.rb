class User

	attr_accessor :first_name, :last_name, :email

	def initialize(first_name, last_name, email)
		@first_name = first_name
		@last_name = last_name
		@email = email
	end

	def full_name
		"#{first_name} #{last_name}"
	end

	def is_valid_email?
		email =~/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i ? true : false
	end

	def errors
		@errors = []
		check_errors_first_name
		check_errors_last_name
		check_errors_email
		@errors
	end

	def valid?
		errors.empty?
	end

	private

	def check_errors_first_name
		@errors << 'first_name can not be empty' if first_name.nil?
		if first_name.class != String
			@errors << 'first_name must be a string'
		elsif first_name.size < 3
			@errors << 'value must be at least three characters'
		end
	end

	def check_errors_last_name
		@errors << 'last_name can not be empty' if last_name.nil?
		if last_name.class != String
			@errors << 'last_name must be a string'
		elsif last_name.size < 3
			@errors << 'value must be at least three characters'
		end
	end

	def check_errors_email
		@errors << 'email can not be empty' if email.nil?
		if email.class != String
			@errors << 'email must be a string'
		elsif !is_valid_email?
			@errors << 'email is invalid'
		end
	end
end
