class DiaryEntry
  def initialize(string)
    @entry = string
  end

  def show_entry
    return @entry
  end

  attr_accessor :entry
end
