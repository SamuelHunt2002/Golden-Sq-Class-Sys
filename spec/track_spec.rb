require "track"

RSpec.describe Track do
  it "Inits with title and artist" do
    track1 = Track.new("Diamond Dogs", "David Bowie")
    expect(track1.title).to eq "Diamond Dogs"
    expect(track1.artist).to eq "David Bowie"
  end

  context "#include?" do
    it "returns true if string is in artist or title" do
      track1 = Track.new("Diamond Dogs", "David Bowie")
      expect(track1.include?("Dav")).to eq true
    end
    it "returns false if string not in artist or title" do
      track1 = Track.new("Diamond Dogs", "David Bowie")
      expect(track1.include?("dave")).to eq false
    end
  end
end
