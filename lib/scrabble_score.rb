class Word 
  def initialize (input)
    @input = input.split("")
    @total_score = 0
  end

  def scrabble()
    @input.each do |input_element|     
      if ("AEIOULNRST").include?input_element.upcase
        @total_score += 1
      elsif ("DG").include?input_element.upcase
        @total_score += 2
      elsif ("BCMP").include?input_element.upcase
        @total_score += 3
      elsif ("FHVWY").include?input_element.upcase
        @total_score += 4
      elsif ("K").include?input_element.upcase
        @total_score += 5
      elsif ("JX").include?input_element.upcase
        @total_score += 8
      elsif ("QZ").include?input_element.upcase
        @total_score += 10
      end
    end
    return @total_score
  end 
end 

# for each letter, we need to add its value to a total
# return the total