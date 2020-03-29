def main
    puts 'I am working!'
    puts "My arguments are: #{ARGV}"
    p ARGV # See them like Ruby sees them.
    puts "Приложение эмитирует игру на рынке. Передайте стартовый капитал и количество дней в качестве аргументов приложения." if ARGV.empty?
    capital=to_float(ARGV[0])
    days=ARGV[1].to_i
    while days > 0 do
    rmd=rand(15)
    puts rmd
    case rmd
    when 15...100
        capital+=capital/10
    when 13..14
        capital+=capital/100*2
    when 10..12
        capital=capital
    when 8..9
        capital-=capital/100*2
    when 6..7
        capital-=capital/10
    when 0..5
        capital-=capital/100*50
    end
    puts "Текущее состояние счета: #{capital}"
    days-=1
end
end
  
def to_float(capital)
    Float(capital, exception: false)
end

  # Keep it in the bottom of the file
  if __FILE__ == $0
      main
  end