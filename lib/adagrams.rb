def draw_letters
  alphabet_soup = {
    A: 9,
    B: 2,
    C: 2,
    D: 4,
    E: 12,
    F: 2,
    G: 3,
    H: 2,
    I: 9,
    J: 1,
    K: 1,
    L: 4,
    M: 2,
    N: 6,
    O: 8,
    P: 2,
    Q: 1,
    R: 6,
    S: 4,
    T: 6,
    U: 4,
    V: 2,
    W: 2,
    X: 1,
    Y: 2,
    Z: 1,
  }
  hand = []
  10.times do |letter, quantity|
    letter_selection = alphabet_soup.keys.sample

    while alphabet_soup[letter_selection] == 0
      letter_selection = alphabet_soup.keys.sample
    end
    alphabet_soup[letter_selection] -= 1

    hand << letter_selection.to_s
  end
  return hand
end

def uses_available_letters?(input, letters_in_hand)
  dup_array = letters_in_hand.dup

  return input.upcase.split(//).all? do |letter|
           included = dup_array.include?(letter)
           dup_array.delete(letter)
           included
         end
end

def score_word(word)
  score = 0

  word_array = word.upcase.split(//)
  word_array.each do |letter|
    score_one = ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]
    score_two = ["D", "G"]
    score_three = ["B", "C", "M", "P"]
    score_four = ["F", "H", "V", "W", "Y"]
    score_five = ["K"]
    score_eight = ["J", "X"]
    score_ten = ["Q", "Z"]

    case letter
    when letter.include?(score_one)
      score += 1
    when letter.include?(score_two)
      score += 2
    when letter.include?(score_three)
      score += 3
    when letter.include?(score_four)
      score += 4
    when letter.include?(score_five)
      score += 5
    when letter.include?(score_eight)
      score += 8
    when letter.include?(score_ten)
      score += 10
    end
  end
  return score
end
