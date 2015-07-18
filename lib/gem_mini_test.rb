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
      if s.length >= 3
        return true
      elsif   s.length <= 8
        return true
      else
        return false
      end
    end


  end
end
