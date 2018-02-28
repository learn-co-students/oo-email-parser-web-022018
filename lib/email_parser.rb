class EmailParser
  
  attr_accessor :string
  
  def initialize(string)
    @string = string
  end
  
  def parse
    @string.gsub(","," ").split(" ").uniq
  end
  
end