require_relative "book_report.rb"
require 'FileUtils'

# Test Report 1 (saved to "test_report_1.txt")

book_report = BookReport.new
book_report.report_author_name = "Emily Doe"
book_report.book = Book.new("Three Blind Mice", "Thomas Ravenscroft", 5)
book_report.publisher = Publisher.new("Random House Publishing", "New York", 1609)
book_report.genre = Genre.new("Nursery Rhyme")
book_report.add_character(Character.new("Mouse #1"))
book_report.add_character(Character.new("Mouse #2"))
book_report.add_character(Character.new("Mouse #3"))
book_report.add_character(Character.new("Farmer's Wife"))
book_report.add_plot_point(PlotPoint.new("The three blind mice run."))
book_report.add_plot_point(PlotPoint.new("The mice continue to run."))
book_report.add_plot_point(PlotPoint.new("The farmer's wife cut of the tails of the mice."))
book_report.add_plot_point(PlotPoint.new("The mice chase the farmer's wife."))
book_report.evaluation = Evaluation.new(false, "Why does such a disgusting story become a common child's song? Also, the story makes no sense. Why would the mice chase after their abuser? And how could they chase her if they're blind? Uch. I pray that they don't turn this into a movie.")
book_report.print_report("test_report_1.txt")

if FileUtils.compare_file('test_report_1.txt', 'correct_report_1.txt')
  puts "First Report is Correct!"
else
  puts "First Report is not correct."
end

# Test Report 2 (saved to "test_report_2.txt")

book_report = BookReport.new
book_report.report_author_name = "John Michael Quinn"
book_report.book = Book.new("The Wonderful Wizard of Oz", "L. Frank Baum", 218)
book_report.publisher = Publisher.new("George M. Hill Company", "Chicago, IL", 1900)
book_report.genre = Genre.new("Children's Fantasy")
book_report.add_character(Character.new("Dorothy"))
book_report.add_character(Character.new("Scarecrow"))
book_report.add_character(Character.new("Tin Man"))
book_report.add_character(Character.new("Cowardly Lion"))
book_report.add_character(Character.new("Wicked Witch"))
book_report.add_character(Character.new("Wizard of Oz"))
book_report.add_plot_point(PlotPoint.new("Dorothy is a young girl who lives with her Aunt Em, Uncle Henry, and dog, Toto, on a farm on the Kansas prairie. One day, she and Toto are caught up in a cyclone that deposits them and the farmhouse into Munchkin Country in the magical Land of Oz. The falling house has killed the Wicked Witch of the East, the evil ruler of the Munchkins. The Good Witch of the North arrives with three grateful Munchkins and gives Dorothy the magical silver shoes that once belonged to the Wicked Witch. The Good Witch tells Dorothy that the only way she can return home is to follow the yellow brick road to the Emerald City and ask the great and powerful Wizard of Oz to help her."))
book_report.add_plot_point(PlotPoint.new("The next day, she frees a Scarecrow from the pole on which he is hanging, applies oil from a can to the rusted joints of a Tin Woodman, and meets a Cowardly Lion. The Scarecrow wants a brain, the Tin Woodman wants a heart, and the Lion wants courage, so Dorothy encourages them to journey with her and Toto to the Emerald City to ask for help from the Wizard."))
book_report.add_plot_point(PlotPoint.new("The Wicked Witch of the West sees the travelers approaching with her one telescopic eye. She uses the power of her Golden Cap to send the Winged Monkeys to capture Dorothy, Toto, and the Lion, unstuff the Scarecrow, and dent the Tin Woodman. Dorothy is forced to become the witch's personal slave, while the witch schemes to steal her silver shoes."))
book_report.add_plot_point(PlotPoint.new("The witch successfully tricks Dorothy out of one of her silver shoes. Angered, she throws a bucket of water at the witch and is shocked to see her melt away."))
book_report.add_plot_point(PlotPoint.new("When Dorothy and her friends meet the Wizard again, Toto tips over a screen in a corner of the throne room that reveals the Wizard, who sadly explains he is a humbug—an ordinary old man who, by a hot air balloon, came to Oz long ago from Omaha."))
book_report.add_plot_point(PlotPoint.new("Dorothy takes Toto in her arms, knocks her heels together three times, and wishes to return home."))
book_report.evaluation = Evaluation.new(true, "I love this book. It makes me believe that love, kindness, and unselfishness make the world a better place.")
book_report.print_report("test_report_2.txt")

if FileUtils.compare_file('test_report_2.txt', 'correct_report_2.txt')
  puts "Second Report is Correct!"
else
  puts "Second Report is not correct."
end