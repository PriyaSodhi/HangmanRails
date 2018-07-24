class Game < ApplicationRecord
  has_many :guesses, dependent: :destroy
  validates :name, presence: true
  validates :word, presence: true
  validates :initial_number_of_lives, presence: true

  def guessed_letters
   guesses.pluck(:letter).compact
  end

  def clue
    build_clue(word, guessed_letters)
  end

  def remaining_lives
    initial_number_of_lives - incorrect_guesses.length
  end

  def in_progress?
    !won? && !lost?
  end

  def won?
    word_guessed? && remaining_lives >= 1
  end

  def lost?
    !word_guessed? && remaining_lives < 1
  end

  private

  def word_guessed?
    unguessed_characters.empty?
  end

  def incorrect_guesses
    guessed_letters - word.downcase.chars.uniq
  end

  def build_clue(word, guesses)
    word.chars.map do |letter|
      guesses.include?(letter.downcase) ? letter : nil
    end
  end

  def unguessed_characters
    word.downcase.chars.uniq - guessed_letters
  end
end
