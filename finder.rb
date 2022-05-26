@nouns = ["abcd", "c", "def", "h", "ij", "cde"]
@verbs = ["bc", "fg", "g", "hij", "bcd"]
@articles = ["a", "ac", "e"]

input = "TeST-321-abc"

def finder(input, nouns, verbs, articles)
  output = []
  
  nouns.each do |noun|
    if input.downcase.include? noun
      output << noun
    end
  end
  
  verbs.each do |verb|
    if input.downcase.include? verb
      output << verb
    end
  end
  
  articles.each do |article|
    if input.downcase.include? article
      output << article
    end
  end

  if output.length < 1
    return "Sorry, there aren't any words that match your input in the Annkissam Dictionary."
  else
    return output
  end
  
end

p finder(input, @nouns, @verbs, @articles)