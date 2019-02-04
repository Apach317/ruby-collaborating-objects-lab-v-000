class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(name)
    # split_name = file_name.split(" - ")
    # song = self.new(split_name[1])
    # artist = Artist.new(split_name[0])
    # song.artist = artist
    # artist.songs << song
    # song
    if self.all.find { |artist| artist.name == name }
  self.all.find { |artist| artist.name == name }
else
  self.new(name)
end
  end

end
