require 'diary_entry'

RSpec.describe DiaryEntry do
   it "Initialises correctly" do
        diary_entry = DiaryEntry.new("Input")
        expect(diary_entry.entry).to eq "Input"
    end
end