# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
    @new_list = []
  end

  def parse
    @emails = @emails.split(/[ ,]/)
    @emails = @emails.reject { |blank| blank.empty? }
    @emails.collect do |email|
      if !@new_list.include?(email)
      @new_list << email
      end
    end
    @new_list
  end

end
