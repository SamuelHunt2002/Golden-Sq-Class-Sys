require 'diary'

RSpec.describe Diary do
    it "Initialises a Diary" do
        diary = Diary.new()
        expect(diary.list).to eq []
    end


end