class Raindrops
  require_relative 'BookKeeping'

  def self.convert(number)
    string_arr = []
    string_arr.push('Pling') if (number % 3).zero?
    string_arr.push('Plang') if (number % 5).zero?
    string_arr.push('Plong') if (number % 7).zero?
    string_arr.empty? ? number.to_s : string_arr.join
  end
end