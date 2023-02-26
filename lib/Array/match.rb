# Array/match.rb
# Array#match

# 20200126
# 0.0.0

# Description: Matches one or more patterns against an array returning those elements which match.

class Array

  def match(*p)
    matched_elements = []
    each do |e|
      p.flatten.each do |q|
        matched_elements << e if e =~ q
      end
    end
    matched_elements
  end

end

if __FILE__ == $0
  p %w{a b c d}.match(/a/) == ['a']
  p %w{a b c d}.match(/a/, /b/) == ['a', 'b']
end
