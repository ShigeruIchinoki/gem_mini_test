require 'test_helper'

class GemMiniTestTest < Minitest::Test
  def setup
    @num = GemMiniTest::Main.new
    @num2 = GemMiniTest::Main.new
  end

  def test_that_it_has_a_version_number
     refute_nil ::GemMiniTest::VERSION
  end

  def test_odd?
     assert @num.odd?(1)==true, '1 is odd'
     refute @num.odd?(2), '2 is not odd'
  end

  def test_check_number?
     assert @num2.check_number?("4444") == true, "even 4"
     refute @num2.check_number?("0444"), "even 3"
     refute @num2.check_number?("1111"), "not even 4"
  end

  def test_enough_length?
    assert @num2.enough_length?("12345678") == true, "3-8ji"
    refute @num2.enough_length?("12"), "not 3-8ji"
    refute @num2.enough_length?("123456789"), "not 3-8ji"
  end

  def test_fizz_buzz
    assert @num.fizz_buzz(15)=="FizzBuzz", "FizzBuzz"
    assert @num.fizz_buzz(5)=="Buzz" , "Buzz"
    assert @num.fizz_buzz(3)=="Fizz" , "Fizz"
  end

  def test_divide
    refute @num.divide(1, 0), "divided by 0"
    assert @num.divide(1, 1), "OK"
  end

  def test_putshello
    refute @num.putshello == "", "No puts Hello"
  end

end
