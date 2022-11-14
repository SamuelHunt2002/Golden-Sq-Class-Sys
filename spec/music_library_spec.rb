require 'music_library'

RSpec.describe MusicLibrary do
    context "When it inits" do
        it "Inits an empty tracklist" do
            music_library = MusicLibrary.new()
            expect(music_library.tracklist).to eq []
        end

        it "Can add a track" do
            track1 = double :faketrack 
            music_library = MusicLibrary.new()
            music_library.add(track1)
            expect(music_library.tracklist).to eq [track1]
        end
        
        it "Can search the tracklist" do
            track1 = double(:faketrack) 
            track2 = double(:faketrack) 
            expect(track1).to receive(:include?).with("ink").and_return(true)
            expect(track2).to receive(:include?).with("ink").and_return(false)
            music_library = MusicLibrary.new()
            music_library.add(track1)
            music_library.add(track2)
            expect(music_library.search("ink")).to eq [track1]
        end
    end
end