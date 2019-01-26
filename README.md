# README
# SpidermandPaliTest
This project was given to me as an interview take-home demo/exam. This program is designed to help Spiderman recue Mary Jane from the evil PALINDROMICON. In order to defeat the PALINDROMICON, Spiderman must produce a certain number of palindromes. 

To help Spiderman in his heroic efforts, this program uses an English wordlist (check out the words.txt file) to generate the number of palindromes specified by the user (Spiderman in this case). 

# How to use? 
This is a basic ruby program that can be run form the terminal useing the following steps:
1. download both the words.txt and pali.rb file
2. place both into the same directory
3. open up terminal and navigate to the direcotry where you placed the files
3. in terminal, run the .rb file (for example, type `ruby pali.rb`)

# Testing
Testing was done manually for each method using basic input and output. Since this project was on a 24hr timeline, I chose to forgo any automated unit testing. Moreover, the size/scope of this project didn't require exteisive testing.

# Known bugs
1. There is no input validation on user input. This means that if a user input a char instead of an int, it will default to 0.

# Credits
Special shoutout to Growing with the Web. I never played around with Palindromes before, and their walkthough artical was a huge help with gettin gthe basics down. 
(https://www.growingwiththeweb.com/2014/02/determine-if-a-string-is-a-palindrome.html)
