require_relative 'String'

def main
    puts 'I am working!'
    puts "My arguments are: #{ARGV}"
    p ARGV # See them like Ruby sees them.
    puts "Приложение эмитирует игру на рынке. Передайте стартовый капитал и количество дней в качестве аргументов приложения." if ARGV.empty?
    if ARGV[0].valid_float? then capital=ARGV[0].to_f
    else
        puts "Вы ввели некорректные данные1"
        return
    end
    if ARGV[1].valid_integer? then days=ARGV[1].to_i
    else
        puts "Вы ввели некорректные данные2"
        return
    end
    while days > 0 do
        rmd=rand(15)
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

def to_int(days)
    Integer(days, exception: false)
end

  # Keep it in the bottom of the file
  if __FILE__ == $0
      main
  end