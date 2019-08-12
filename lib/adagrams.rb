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
  drawn_letters = []
  10.times do |letter, quantity|
    letter_selection = alphabet_soup.keys.sample

    while alphabet_soup[letter_selection] == 0
      letter_selection = alphabet_soup.keys.sample
    end
    alphabet_soup[letter_selection] -= 1

    drawn_letters << letter_selection.to_s
  end
  return drawn_letters
end
