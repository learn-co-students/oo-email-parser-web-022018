class EmailParser

  def initialize(emails = nil)
    @emails = emails
  end

  def parse
    (@emails.split(/[, ]+/)).uniq
  end

end
