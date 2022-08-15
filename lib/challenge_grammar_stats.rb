class GrammarStats
    def initialize
      @str
      @str_arr = []
    end
  
    def check(text) 
      # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
      # spec_chars =~ /[!@.,£$%^&*()]/
      @str = text
      fail "Must enter text string, minimum 2 characters" unless @str.length() >= 2
      if @str[0] == @str[0].upcase && @str[-1] == '.'
        if @str[0] =~ /[!@.,£$%^&*()]/
          @str_arr << false
        else
          @str_arr << true
        end
      else
        @str_arr << false
      end    
      # binding.irb
      return @str_arr
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      arr_length = @str_arr.length.to_f
      arr_true = @str_arr.select { |el| el == true}
      arr_true_length = arr_true.length.to_f
      percent = (arr_true_length / arr_length) * 100
      #binding.irb
      return percent.to_i
    end
end