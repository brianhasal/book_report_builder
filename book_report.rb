class BookReport
  attr_accessor :report_author_name, :book, :publisher, :genre, :characters, :plot_points, :evaluation

  def initialize
    @characters = []
    @plot_points = []
  end

  def add_character(character)
    @characters << character
  end

  def add_plot_point(plot_point)
    @plot_points << plot_point
  end


  ######################### BEGINS MY CODE ####################################

  def print_report(filename)
    report = []

    def header_builder
      out_array = []
      width = 50
      out_array << "****************************************"
      out_array << "My Book Report"
      out_array << "By #{self.report_author_name}"
      out_array << "****************************************"
      out_array << ""
      out_array << "Book Title: #{self.book.title}"
      out_array << "Author: #{self.book.author}"
      out_array << "Pages: #{self.book.number_of_pages}"
      out_array << "Book Genre: #{self.genre.name}"
      out_array << ""

      # return "#{out_array.map { |line| line.center(width) }.join("\n")}\n"

      newer_out_array = []
      out_array.each do |string|
        if string.length > 0
          newer_out_array << string.center(width)
        else
          newer_out_array << string
        end
      end
      return "#{newer_out_array.join("\n")}\n"
    end

    def publish_builder
      out_array = []
      pub_string = "Published By: #{self.publisher.name}, #{self.publisher.location}, #{self.publisher.year_published.to_s}"
      d_border = "-" * pub_string.length
      out_array << d_border
      out_array << pub_string
      out_array << d_border
      out_array << ""
      return "#{out_array.join("\n")}\n"

    end

    def character_builder
      out_array = []
      out_array << "Characters:"
      @characters.each do |character|
        out_array << "* #{character.name}"
      end
      out_array << ""
      return "#{out_array.join("\n")}\n"
    end

    def plot_builder
      out_array = []
      out_array << "Plot:"
      out_array
      i = 1
      @plot_points.each do |point|
        out_array << "#{i}. #{point.detail}"
        i += 1
      end
      out_array << ""
      return "#{out_array.join("\n")}\n"
    end

    ## Opinion Section
    def opinion_builder
      o_border = "~~~~~~~~~~~~~~~ MY OPINION ~~~~~~~~~~~~~~~"
      out_array = []
      out_array << o_border
      out_array << ""
      if self.evaluation.recommend
        out_array << "Do you like this book? Yes."
      else
        out_array << "Do you like this book? No."
      end
      out_array << ""
      out_array << "#{self.evaluation.review}"
      return out_array.join("\n")
    end

    report << header_builder()
    report << publish_builder()
    report << character_builder()
    report << plot_builder()
    report << opinion_builder()

    File.write(filename, report.join, mode: "a")
  end
end

################################ END OF MY CODE ##################################

class Book
  attr_reader :title, :author, :number_of_pages

  def initialize(title, author, number_of_pages)
    @title = title
    @author = author
    @number_of_pages = number_of_pages
  end
end

class Publisher
  attr_reader :name, :location, :year_published

  def initialize(name, location, year_published)
    @name = name
    @location = location
    @year_published = year_published
  end
end

class Genre
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Character
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class PlotPoint
  attr_reader :detail

  def initialize(detail)
    @detail = detail
  end
end

class Evaluation
  attr_reader :recommend, :review

  def initialize(recommend, review)
    @recommend = recommend
    @review = review
  end
end
