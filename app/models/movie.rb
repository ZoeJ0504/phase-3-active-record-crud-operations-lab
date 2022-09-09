class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        newMovie = Movie.new(:title => title)
        newMovie.save
        newMovie
    end

    def self.first_movie
        first = Movie.first
        first
    end

    def self.last_movie
        last = Movie.last
        last
    end

    def self.movie_count
        count = Movie.count
        count
    end

    def self.find_movie_with_id(id)
        find = Movie.find(id)
        find
    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end
    
    def update_with_attributes(argu)
        self.update(argu)
    end

    def self.update_all_titles(bleh)
    Movie.update(:all, title: bleh)
    end
    
    def self.delete_by_id(id)
        Movie.destroy(id)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end
end