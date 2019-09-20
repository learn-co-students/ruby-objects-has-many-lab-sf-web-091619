class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
        @posts = []
    end
    def add_post(post)
        post.author = self
        @posts << post
    end
    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end
    def self.post_count
        Post.all.count
    end
    def posts
        @posts
    end
end