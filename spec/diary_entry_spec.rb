require 'diary_entry.rb'

RSpec.describe DiaryEntry do
    context "initialize diary entry" do
        it "return title" do
            title = DiaryEntry.new("diary title", "diary contents")
            result = title.title()
            expect(result).to eq "diary title"
        end
    end

    context "initialize diary entry" do
        it "return contents" do
            title = DiaryEntry.new("diary title", "diary contents")
            result = title.contents()
            expect(result).to eq "diary contents"
        end
    end

    context "initialize diary entry" do
        it "return words count" do
            title = DiaryEntry.new("diary title", "diary contents")
            result = title.count_words
            expect(result).to eq 2
        end
    end

    context "time taken to read" do
        it "return time taken to read contents" do
            read = DiaryEntry.new("diary title", "diary contents " * 100)
            result = read.reading_time(200)
            expect(result).to eq 1
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