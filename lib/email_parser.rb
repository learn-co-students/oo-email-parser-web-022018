# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :all
  def initialize(emails)
    self.all = emails
  end
  def parse
    self.all = self.all.split(/[,\s]/)
    self.all = self.all.map {|email| email.strip}.uniq
    self.all.delete_if {|email| email==""}
  end
end
