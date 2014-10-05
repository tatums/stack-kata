class Bracket
   CHARS =  ["[", "{", "(", ")", "}", "]"]

  def initialize(string)
    @stack = []
    @string = string
  end

  def valid?
    array_of_strings = @string.chars.select{ |char| CHARS.include?(char) }
    array_of_strings.each do |char|
      if open?(char)
        @stack.push(char)
      else
        return false if @stack.pop == nil
      end
    end
    @stack == []
  end

  private

  def open?(char)
    ["[", "{", "("].include?(char)
  end

end
