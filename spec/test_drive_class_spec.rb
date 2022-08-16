require "test_drive_class.rb"

RSpec.describe DiaryEntry do
    context "return title" do
        it "it returns test" do
            test = DiaryEntry.new("test", "test content")    
            result = test.title
            expect(result).to eq "test"
        end
    end

    context "return contents" do
        it "it returns contents" do
            test = DiaryEntry.new("test", "test content")    
            result = test.contents
            expect(result).to eq "test content"
        end
    end

    context "word count" do
        it "returns the number of words in string" do
            test = DiaryEntry.new("test", "test " * 100)    
            result = test.count_words
            expect(result).to eq 100
        end
    end

    context "reading time" do
        it "time taken to read contents" do
            test = DiaryEntry.new("test", "test " * 100)    
            result = test.reading_time(100)
            expect(result).to eq 1
        end
    end

    context "reading time" do
        it "fails if wpm is zero" do
            test = DiaryEntry.new("test", "test " * 100)   
            expect { test.reading_time(0) }.to raise_error "Reading speed must be above zero"
        end
    end

    context "reading chunk" do
        it "return 200 words, when wpm is equals 100 and mins 2" do
            test = DiaryEntry.new("test", "test " * 400)   
            result = test.reading_chunk(100, 2)
            expect(result).to eq ("test " * 200).strip
        end
    end

    context "reading chunk" do
        it "return 200 words, when wpm is equals 100 and mins 2" do
            test = DiaryEntry.new("test", ("test " * 200) + ("test2 " * 200)) 
            test.reading_chunk(100, 2)  
            result = test.reading_chunk(100, 2)
            expect(result).to eq ("test2 " * 200).strip
        end
    end

    context "reading chunk" do
        it "return end of the text, when the words to be returned are greater than the text" do
            test = DiaryEntry.new("test", ("test " * 200) + ("test2 " * 200)) 
            test.reading_chunk(150, 2)  
            result = test.reading_chunk(150, 2)
            expect(result).to eq ("test2 " * 100).strip
        end
    end
end
