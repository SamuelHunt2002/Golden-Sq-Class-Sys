class Diary
  def initialize
    @list = []
  end

  def add(diary_entry)
    @list << diary_entry
  end

  def display
    arr = @list.map { |entry| entry.show_entry.to_s }
    return arr 
  end

  def reading_speed(wpm, time)
    word_count = wpm * time   
    return @list.map { |entry| entry.show_entry.to_s }.select{|entry| entry.split.size <= word_count}
  end

  def show_phones 
    return @list.map { |entry| entry.show_entry.to_s }.map{|entry| entry.scan(/([0-9]{11})+/)}.compact.flatten.uniq
  end 
  

  attr_accessor :list
end
