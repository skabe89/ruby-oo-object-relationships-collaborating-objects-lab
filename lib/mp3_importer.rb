require 'pry'

class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        files = Dir.entries(self.path)
        files.pop
        files.delete_at(3)
        files
    end

    def import
        files.each{|filename| Song.new_by_filename(filename)}
    end

end