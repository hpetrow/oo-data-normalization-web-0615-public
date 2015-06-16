class Song
  # code goes here
  attr_accessor :title, :artist

  def serialize
    filename = self.title.downcase.gsub(" ", "_");
    file = Tempfile.new(["#{filename}", ".txt"], "tmp/")
    file.write("#{self.artist.name} - #{self.title}")
    file.rewind
  end
end
