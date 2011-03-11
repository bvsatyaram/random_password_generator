$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'random_password_generator'

class RandomPasswordGeneratorTest < Test::Unit::TestCase
  def test_generate
    password = RandomPasswordGenerator.generate
    assert password.is_a?(String)
    assert_equal 8, password.length

    password = RandomPasswordGenerator.generate(10)
    assert_equal 10, password.length
  end
end