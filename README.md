# Book Report Generator

## Exercise Overview

In this exercise, you'll be writing software that automatically generates digital book reports. Soon, your app will become the must-have for every fifth grader.

Of course, the student still has to do the work of creating the *content* of the report. With your software, though, the student can simply answer a bunch of prompts, and a beautifully formatted digital book report will automatically be generated.

Your coworkers have already created the part of the program that allows a kid to enter all the information. Your job is to write the code that prints out the shiny text file report.

## A Note About Discovery

Don't know how to write code that produces a text file? Good! This is a great way to practice those discovery skills. Luckily, once you discover how to do it, it's actually not very complicated.

## Exercise Details

You'll be completing the code for the `print_report` method inside the file called `book_report.rb`. You'll note that there are several classes in this file, but you're just working on `print_report` method found in the `BookReport` class.

Before you write your code, go ahead and run the `runner.rb` file. This will run the interactive program, which asks the user to enter all the info about the book. At the end, the program is *supposed* to automagically produce a book report text file, but that part doesn't work yet. That's *your* job.

### Book Report Format

This repo contains two examples of what a book report text file is supposed to look like. These files are `correct_report_1.txt` and `correct_report_2.txt`. 

One of the challenges of this exercise is that your program must produce book reports that *look exactly like these two files*. And when I say exact, I mean *exact*, as your reports need to match these examples down to the very last character.

To make things even more challenging, there are a few aspects of the book report that will vary slightly based on the inputted information:

1. The first two "sections" of the book report must be *centered*. Thus, the amount of space that these lines are indented will vary based on how long the text is. The text is considered centered based on it being in the center of a line that is 50 characters long. (Go ahead and open one of the "correct" book reports. If you count the number of characters - including spaces - of any line that is centered, you'll see that there are 50 characters until you hit the end of the line.)
2. You'll see that the publisher information has dashes above and below it. The length of these lines must be as long as the publisher information itself.
3. The number of bullet points and numbered points will, of course, vary based on how much information the user provides. For example, in `correct_report_1.txt` there are four plot points, but in `correct_report_2.txt` there are six plot points.

Also note that the user will provide the name of the file that the book report should be saved as. This is what goes in the `filename` argument of the `print_report` method.

> Decomposition tip: Start with the basics! Can you produce a `hello_world.txt` file containing the text "hello world"? And perhaps leave the centering and precise formatting for the end.

## Unit Tests

This tests in this file are slightly different than in other deep dives. They can be found in the `test_book_report.rb` file. You can run the tests with:

```
ruby test_book_report.rb
```

There are just two tests. Each test automatically populates an entire book report using your `print_report` method. The first test will create a file called `test_report_1.txt` containing a book report for "Three Blind Mice." (Yes, the test will actually create this file if your code works.) The second test will produce `test_report_2.txt`, containing the book report for "The Wizard of Oz."

*Then*, the test will compare `test_report_1.txt` against `correct_report_1.txt` to see if they're an exact match. The test will do the same for `test_report_2.txt` and `correct_report_2.txt`. The tests will pass if the files are an exact match. If they are, congrats! You've completed the exercise successfully. The `runner.rb` file should now be completely useable.

If the files are *not* an exact match, you'll have to inspect the files yourself to see where the discrepancies lie. There may also be some useful tools (including in the terminal) that can point out the exact differences.

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```