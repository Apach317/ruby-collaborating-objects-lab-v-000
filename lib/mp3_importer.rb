class MP3Importer

  # attr_reader :path
  #
  # def initialize(filepath)
  #   @path = filepath
  # end
  #
  # def files
  #   @files = Dir.entries(@path)
  #   @files.delete_if {|file| file == "." || file == ".."}
  # end
  #
  # def import
  #   self.files.each do |file|
  #     song = Song.new_by_filename(file)
  #     Artist.all << song.artist unless Artist.all.include?(song.artist)
  #   end
  # end
  attr_accessor :path, :files

   def initialize(path)
    @path = path
  end

   def files
    Dir.entries(@path).select!{ |file| file.end_with?("mp3") }
  end

   def import
    files.each { |file| Song.new_by_filename(file) }
  end

 end
