# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
    @parser = self.parse
  end

  def parse
    new_email = @emails.split(/\s|,/ )
    final = []
    new_email.collect do |email|
      if email.include?("@")
        final << email
      end
    end
    final.uniq
  end
end
