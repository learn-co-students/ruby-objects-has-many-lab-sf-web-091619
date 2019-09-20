class Post

    attr_reader :title
    attr_accessor :author
    @@all = []

    def initialize (title)
        @title = title
        @author = author
        @@all << self
    end

    def author_name
        self.author != nil ? self.author.name : nil
    end

    def self.all
        @@all
    end

end