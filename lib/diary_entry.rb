class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title 
      @contents = contents
      @book_mark = 0
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
      # Returns the number of words in the contents as an integer
      return @contents.split(" ").length
    end
  
    def reading_time(wpm)
      # wpm is an integer representing
    # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
    #   p wpm 
    #   p count_words
      return (count_words() / wpm.to_f).ceil()
    end
  
    def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
      len = count_words
      words = wpm * minutes
      arr = @contents.split(" ")
      current_pos = @book_mark
      @book_mark += words
        
      return arr[current_pos...words + current_pos].join(" ")
    end
  end