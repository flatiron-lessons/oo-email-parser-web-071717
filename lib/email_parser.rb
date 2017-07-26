# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser

	attr_accessor :email

	@emails = []

	def initialize(email)
		@email = email
	end
# split on space and if last character is a comma or ! get rid of it.

	def parse
		parsed = @email.split(" ")
		parsed.each do |email|
			if email[-1] == ","
				email.chomp!(",")
			end
		end
		parsed.uniq
	end

end