PARENS = {
    "(" => ")",
    "{" => "}",
    "[" => "]"
  }
  OPENING_PARENS = PARENS.keys
  CLOSING_PARENS = PARENS.values
  
  
  # @param {String} s
  # @return {Boolean}
  def is_valid(s)
      stack  = []
      s.each_char do |ch|
      if OPENING_PARENS.include?(ch)
        stack << ch
      elsif CLOSING_PARENS.include?(ch)
        ch == PARENS[stack.last] ? stack.pop : (return false)
      end
    end
    stack.empty?
  end


puts is_valid("(){}[]") # true
puts  is_valid("[(])")   # false