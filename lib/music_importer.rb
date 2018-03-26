require 'pry'
class MusicImporter

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.mp3").select! {|file| file.gsub("#{path}/", "")}
  end

def import
 files.each {|new_songs| Song.create_from_filename(new_songs)}
end

end
