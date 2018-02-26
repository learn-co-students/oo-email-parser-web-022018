class EmailParser
  def initialize(emails = nil)
    @emails = emails
  end

  def parse
    (@emails.gsub(","," ").split(" ")).uniq
  end
end
