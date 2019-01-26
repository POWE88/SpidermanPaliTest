# README
# SpidermandPaliTest
This project was given to me as an interview take-home demo/exam. This program is designed to help Spiderman recue Mary Jane from the evil PALINDROMICON. In order to defeat the PALINDROMICON, Spiderman must produce a certain number of palindromes. 

To help Spiderman in his heroic efforts, this program uses an English wordlist (check out the words.txt file) to generate the number of palindromes specified by the user (Spiderman in this case). 

# How to use 
This is a basic ruby program that can be run form the terminal using the following steps:
1. download both the words.txt and pali.rb file
2. place both into the same directory
3. open up terminal and navigate to the directory where you placed the files
3. in terminal, run the .rb file (for example, type `ruby pali.rb`)

# Testing
Testing was done manually for each method using basic input and output. Since this project was on a 24hr timeline, I chose to forgo any automated unit testing. Moreover, the size/scope of this project didn't require extensive testing.

# Known bugs
1. There is no input validation on user input. This means that if a user input a char instead of an int, it will default to 0.

# What's Next
This was the first time I've done anything with palindromes. While I was looking up different approaches to solve these types of problems, I came across multiple resources that talked about using a database and querying off that as a more efficient approach. 

Witht that, I've started my own Ruby on Rails project to do just that, where I'm using PostgreSQL for my database (Check out my repository title PALINDROMICON). In fact, that was how I wanted to approach this problem to begin with. I ended up creating this program because I needed a place to test my controller methods before I set up the associated views. Part way through the challenge, I realized I would need more time to create a professional/functional Ruby on Rails web-app. So, that's where this smaller terminal ruby program came into the mix. 

I'll be taking the next few days (maybe a week) to review how to take in a file from the user, load it into the database, and learn about the various querying techniques that can be used to efficiently get the palindromes form the full database of words. 

Although this challenge was meant as a quick "show me your basic skills" project, I've discovered there are a lot of cool things I haven't been exposed to yet. For example, I've only ever taken user information in from a form in my Ruby on Rails apps. I've never needed to take in whole file and populate my database with the file's content. So, I'm going to take this opportunity to learn more about those things I haven't worked with before.

# Credits
Special shoutout to Growing with the Web. I never played around with Palindromes before, and their walkthrough article was a huge help with getting the basics down. 
(https://www.growingwiththeweb.com/2014/02/determine-if-a-string-is-a-palindrome.html)
