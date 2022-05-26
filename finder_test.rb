require_relative 'finder.rb'

## Tests

## Test 1
puts "TEST 1: 'abcd'"
if finder("abcd", @nouns, @verbs, @articles) == ["abcd", "c", "bc", "bcd", "a"]
  puts "TEST #1 passed"
else
  puts "TEST #1 failed"
  finder("abcd", @nouns, @verbs, @articles)
end

# Test 2
puts
puts "TEST 2: 'hij'"
if finder("hij", @nouns, @verbs, @articles) == ["h", "ij", "hij"]
  puts "TEST #2 passed"
else
  puts "TEST #2 failed"
  puts finder("hij", @nouns, @verbs, @articles)
end

# Test 3
puts
puts "TEST 3: 'hijhij'"
if finder("hijhij", @nouns, @verbs, @articles) == ["h", "ij", "hij"]
  puts "TEST #3 passed"
else
  puts "TEST #3 failed"
  puts finder("hijhij", @nouns, @verbs, @articles)
end

# Test 4
puts
puts "TEST 4: 'gc'"
if finder("gc", @nouns, @verbs, @articles) == ["c", "g"]
  puts "TEST #4 passed"
else
  puts "TEST #4 failed"
  puts finder("gc", @nouns, @verbs, @articles)
end

# Test 5
puts
puts "TEST 5: 'dbd'"
if finder("dbd", @nouns, @verbs, @articles) == "Sorry, there aren't any words that match your input in the Annkissam Dictionary."
  puts "TEST #5 passed"
else
  puts "TEST #5 failed"
  puts finder("dbd", @nouns, @verbs, @articles)
end

# Test 6
puts
puts "TEST 6: 'test'"
if finder("test", @nouns, @verbs, @articles) == ["e"]
  puts "TEST #6 passed"
else
  puts "TEST #6 failed"
  puts finder("dbd", @nouns, @verbs, @articles)
end

# Test 7
puts
puts "TEST 7: 'abcdefghijklmnopqrstuvwxyz'"
if finder("abcdefghijklmnopqrstuvwxyz", @nouns, @verbs, @articles) == ["abcd", "c", "def", "h", "ij", "cde", "bc", "fg", "g", "hij", "bcd", "a", "e"]
  puts "TEST #7 passed"
else
  puts "TEST #7 failed"
  puts finder("abcdefghijklmnopqrstuvwxyz", @nouns, @verbs, @articles)
end

# Test 8
puts
puts "TEST 8: 'AbCd'"
if finder("AbCd", @nouns, @verbs, @articles) == ["abcd", "c", "bc", "bcd", "a"]
  puts "TEST #8 passed"
else
  puts "TEST #8 failed"
  puts finder("AbCd", @nouns, @verbs, @articles)
end

# Test 9
puts
puts "TEST 9: 'ab123'"
if finder("ab123", @nouns, @verbs, @articles) == ["a"]
  puts "TEST #9 passed"
else
  puts "TEST #9 failed"
  finder("ab123", @nouns, @verbs, @articles)
end

# Test 10
puts
puts "TEST 10: 'TeST-321-abc'"
if finder("TeST-321-abc'", @nouns, @verbs, @articles) == ["c", "bc", "a", "e"]
  puts "TEST #10 passed"
else
  puts "TEST #10 failed"
  finder("TeST-321-abc'", @nouns, @verbs, @articles)
end