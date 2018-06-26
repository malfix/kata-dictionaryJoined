require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'exercise test 1  ' do
    assert_equal([['the', 'quick', 'brown', 'fox']], Exercise.new('quick', 'brown', 'the', 'fox' ).find_all_sentence('thequickbrownfox'))
  end

  test 'exercise test 2  ' do
    assert_equal([['bed', 'bath', 'and', 'beyond'], ['bedbath', 'and', 'beyond']], Exercise.new('bed', 'bath', 'bedbath', 'and', 'beyond' ).find_all_sentence('bedbathandbeyond'))
  end
end
