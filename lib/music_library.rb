class MusicLibrary
    def initialize
      # ...
      @tracklist = []
    end
  
    def add(track) # track is an instance of Track
      # Track gets added to the library
      # Returns nothing
      @tracklist << track
    end
  
    def all
      # Returns a list of track objects
      return @tracklist 
    end
    
    def search(keyword) # keyword is a string
      # Returns a list of tracks that match the keyword
      @tracklist.filter{|song|song.include? keyword}
    end

    attr_reader :tracklist 
  end