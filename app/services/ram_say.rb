class RamSay
  class << self
    QUOTES = File
      .readlines(Rails.root.join('quotes.txt'))
      .map(&:chomp)
      .select(&:present?)

    def rand
      QUOTES.sample
    end
  end
end
