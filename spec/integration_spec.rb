require 'diary.rb' 
require 'diary_entry.rb'

RSpec.describe 'diary integration' do
    context "after adding some entries to the diary call calling the all method" do
        it "return all diary entries" do
            test_diary = Diary.new()
            test_entry1 = DiaryEntry.new("passed_in_test_entry1", "contents_for")
            test_entry2 = DiaryEntry.new("passed_in_test_entry1", "contents_for")
            test_diary.add(test_entry1)
            test_diary.add(test_entry2)
            result = test_diary.all()
            expect(result).to eq [test_entry1, test_entry2]
        end
    end

    context "after adding some entries to the diary call calling the count_words method" do
        it "return 2" do
            test_diary = Diary.new()
            test_entry1 = DiaryEntry.new("passed_in_test_entry1", "contents_for")
            test_entry2 = DiaryEntry.new("passed_in_test_entry1", "contents_for")
            test_diary.add(test_entry1)
            test_diary.add(test_entry2)
            result = test_diary.count_words()
            expect(result).to eq 2
        end
    end

    context "after adding some entries to the diary call calling the count_words method" do
        it "return 200" do
            test_diary = Diary.new()
            test_entry1 = DiaryEntry.new("passed_in_test_entry1", "contents_for " * 50)
            test_entry2 = DiaryEntry.new("passed_in_test_entry1", "contents_for " * 50)
            test_diary.add(test_entry1)
            test_diary.add(test_entry2)
            result = test_diary.count_words()
            expect(result).to eq 100
        end
    end

    context "after adding some entries to the diary call calling the count_words method" do
        it "return 200" do
            test_diary = Diary.new()
            test_entry1 = DiaryEntry.new("passed_in_test_entry1", "contents_for " * 50)
            test_entry2 = DiaryEntry.new("passed_in_test_entry1", "contents_for " * 50)
            test_diary.add(test_entry1)
            test_diary.add(test_entry2)
            result = test_diary.reading_time(5)
            expect(result).to eq 20
        end
    end

    context "after adding some entries to the diary call calling the find_best_entry_for_reading_time method" do
        it "return closest entry" do
            test_diary = Diary.new()
            test_entry1 = DiaryEntry.new("passed_in_test_entry1", "contents_for " * 100)
            test_entry2 = DiaryEntry.new("passed_in_test_entry2", "contents_for " * 150)
            test_entry3 = DiaryEntry.new("passed_in_test_entry3", "contents_for " * 50)
            test_diary.add(test_entry1)
            test_diary.add(test_entry2)
            test_diary.add(test_entry3)
            result = test_diary.find_best_entry_for_reading_time(2, 40)
            expect(result).to eq test_entry1
        end
    end


end