class Exercise
  def initialize(*dictionary)
    @dictionary = dictionary
    @solutions = []
  end

  def find_all_sentence(text)
    find_solution_for(text, [])
    puts "Find solutions for: #{text} -> #{@solutions} "
    @solutions
  end

  def find_solution_for(text, solution)
    return @solutions << solution if text.size() == 0
    @dictionary.each do |el|
      find_solution_for(remaining(text, el), solution.dup << el ) if text.start_with?(el) 
    end
  end

  def remaining(text, prefix)
    remaining_text = text.dup
    remaining_text.slice!(prefix)
    remaining_text
  end
end
