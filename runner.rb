require_relative "book_report.rb"

book_report = BookReport.new

puts "Welcome to the Book Report Generator!"
puts "Please enter your name:"
book_report.report_author_name = gets.chomp
puts "Please enter the book's title:"
title = gets.chomp
puts "Please enter the book's author:"
author = gets.chomp
puts "Please enter the number of pages in the book:"
number_of_pages = gets.chomp.to_i
book_report.book = Book.new(title, author, number_of_pages)
puts "Please enter the publishing company name:"
publisher = gets.chomp
puts "Please enter the publisher's city:"
publisher_city = gets.chomp
puts "Please enter the year of publication:"
year = gets.chomp.to_i
book_report.publisher = Publisher.new(publisher, publisher_city, year)
puts "Please enter the book's genre:"
genre = gets.chomp
book_report.genre = Genre.new(genre)
puts "Please enter the book's characters, one at a time. Type STOP when you are done:"
character = gets.chomp
while character.upcase != "STOP"
  book_report.add_character(Character.new(character))
  character = gets.chomp
end
puts "Please enter the book's plot points, one at a time. Type STOP when you are done:"
plot_point = gets.chomp
while plot_point.upcase != "STOP"
  book_report.add_plot_point(PlotPoint.new(plot_point))
  plot_point = gets.chomp
end
puts "Did you like the book? Enter YES or NO:"
like_book = gets.chomp
if like_book.upcase == "YES"
  recommend = true
else
  recommend = false
end
puts "Please write your review of the book:"
review = gets.chomp
book_report.evaluation = Evaluation.new(recommend, review)
puts "We're ready to print your report! Please enter the filename you'd like to save your report to:"
filename = gets.chomp
book_report.print_report(filename)
