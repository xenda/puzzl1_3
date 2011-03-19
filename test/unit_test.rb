$:.unshift(File.join(File.dirname(__FILE__),"../"))

require 'test/unit'
require 'main'

class TestSpellingSuggestor < Test::Unit::TestCase
  
  def test_load_queries
    Suggestor::Queries.parse("SAMPLE_INPUT.txt")
    assert_equal 2, Suggestor::Queries.attempts.size
  end

  def test_load_dictionary_size
    Suggestor::Queries.parse("SAMPLE_INPUT.txt")
    attempt = Suggestor::Queries.attempts.first
    assert_equal 2, attempt.dictionary.size    
  end

  def test_load_attempt_query
    Suggestor::Queries.parse("SAMPLE_INPUT.txt")
    attempt = Suggestor::Queries.attempts.first
    assert_equal "remimance", attempt.query
  end

  def test_load_attempt_queries
    Suggestor::Queries.parse("SAMPLE_INPUT.txt")
    attempt = Suggestor::Queries.attempts.first
    assert_equal "remimance", attempt.query
    attempt = Suggestor::Queries.attempts.last
    assert_equal "inndietlly", attempt.query
  end
  
  def test_load_attempts_according_to_first_line
    Suggestor::Queries.parse("")
  end
  
end

