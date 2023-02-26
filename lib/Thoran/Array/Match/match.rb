# Thoran/Array/Match/match.rb
# Thoran::Array::Match#match

# 20230226
# 0.2.0

# Description: Matches one or more patterns against an array returning those elements which match.

# Changes since 0.2.0
# + Thoran namespace

module Thoran
  module Array
    module Match

      def match(*p)
        matched_elements = []
        each do |e|
          p.flatten.each do |q|
            if e =~ q
              matched_elements << e
              break
            end
          end
        end
        matched_elements
      end

    end
  end
end

Array.include(Thoran::Array::Match)

if __FILE__ == $0
  print (%w{a b c d}.match(/a/) == ['a'] ? '.' : 'x')
  print (%w{a b c d}.match(/a/, /b/) == ['a', 'b'] ? '.' : 'x')
  puts (%w{ab absolut c d}.match(/a/, /ab/) == ['ab', 'absolut'] ? '.' : 'x')
end
