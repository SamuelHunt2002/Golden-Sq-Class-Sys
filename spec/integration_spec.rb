require "diary"
require "diary_entry"
require "todo"
require "todo_list"

RSpec.describe "Integration" do
  it "adds any diary entry to the diary" do
    diary = Diary.new()
    diary_entry = DiaryEntry.new("Today I finished the integration test task!")
    diary.add(diary_entry)
    diary_entry2 = DiaryEntry.new("Second addition")
    diary.add(diary_entry2)
    expect(diary.list).to eq [diary_entry, diary_entry2]
  end
  it "returns each specific entry of just the string" do
    diary = Diary.new()
    diary_entry_1 = DiaryEntry.new("Today I finished the integration test task!")
    diary_entry_2 = DiaryEntry.new("Second addition")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.display).to eq ["Today I finished the integration test task!", "Second addition"]
  end
  it "returns a list of all entries below a certain word count" do
    diary = Diary.new()
    diary_entry_1 = DiaryEntry.new("Today I finished the integration test task!")
    diary_entry_2 = DiaryEntry.new("Second addition")
    diary_entry_3 = DiaryEntry.new("Blah blah boop de boop blah blah sw")
    diary_entry_4 = DiaryEntry.new("Today I didn't finished the integration test task!")
    diary_entry_5 = DiaryEntry.new("This is 4 chars")
    diary_entry_6 = DiaryEntry.new("Did it")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    diary.add(diary_entry_4)
    diary.add(diary_entry_5)
    diary.add(diary_entry_6)
    expect(diary.reading_speed(2, 2)).to eq ["Second addition", "This is 4 chars", "Did it"]
  end
  it "Extracts phone numbers and returns" do
    diary = Diary.new()
    diary_entry_1 = DiaryEntry.new("Today I finished the integration test task! Remind me to call 12345678901")
    diary_entry_2 = DiaryEntry.new("Second addition. Got a phone call 11122233344 , no idea what that's about.")
    diary_entry_3 = DiaryEntry.new("No number")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    expect(diary.show_phones).to eq ["12345678901", "11122233344"]
  end

  it "Extracts phone numbers and returns when multiple numbers in the same string" do
    diary = Diary.new()
    diary_entry_1 = DiaryEntry.new("Today I finished the integration test task! Remind me to call 12345678901")
    diary_entry_2 = DiaryEntry.new("07709857789 call 07709857799")
    diary_entry_3 = DiaryEntry.new("No number")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    expect(diary.show_phones).to eq ["12345678901", "07709857789", "07709857799"]
  end
  it "Runs the phone checker method correctly, even if there are no phone numbers present" do
    diary = Diary.new()
    diary_entry_1 = DiaryEntry.new("Today I finished the integration test task!")
    diary_entry_2 = DiaryEntry.new("Second addition. ")
    diary_entry_3 = DiaryEntry.new("No number")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    expect(diary.show_phones).to eq []
  end
end
