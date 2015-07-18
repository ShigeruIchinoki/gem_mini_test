require "gem_mini_test/version"

module GemMiniTest
  class Main
    def odd?(n)
      if n%2 != 0
        return true 
      else
        return false
      end
    end

    def check_number?(s)
      if  (s.to_i/1000 != 0) && (s.to_i%2 == 0) 
        return true
      else
        return false
      end
    end

    def enough_length?(s)
      if s.length >= 3 && s.length <= 8
        return true
      else
        return false
      end
    end

    def fizz_buzz(n)
      if n == 15
        "FizzBuzz"
      elsif n == 5
        "Buzz"
      else n == 3
        "Fizz"
      end
    end

    def divide(a,b)
      a/b
    rescue ZeroDivisionError => ex
      puts "#{ex}"
    end

    def putshello
      puts "Hello"
    end

  end
end
