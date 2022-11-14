require 'music_library'
require 'track'

RSpec.describe "Integration" do
    it "Can add a track" do
        music_library = MusicLibrary.new()
        track1 = Track.new("Diamond Dogs", "David Bowie")
        track2 = Track.new("Money", "Pink Floyd")
        music_library.add(track1)
        music_library.add(track2)
        expect(music_library.tracklist).to eq [track1,track2]
    end

    it "Can add a track" do
        track1 = Track.new("Money", "Pink Floyd")
        music_library = MusicLibrary.new()
        music_library.add(track1)
        expect(music_library.tracklist).to eq [track1]
    end
    
    it "Can search the tracklist" do
        track1 = Track.new("Diamond Dogs", "David Bowie")
        track2 = Track.new("Money", "Pink Floyd") 
        music_library = MusicLibrary.new()
        music_library.add(track1)
        music_library.add(track2)
        expect(music_library.search("ink")).to eq [track2]
    end
end