<div align="center">
<img src="https://www.nascenia.com/wp-content/uploads/2014/05/Ruby-on-Rails-slider1-500x233.gif"><br><br>
</div>

-----------------

### This is a simple Tic Tac Toe Game created on Ruby Programming Language
***Tic Tac Toe Game is very common game that we should learn at the beginning steps of programming journey. In this repository, I will show you the source code of this game on Ruby programming language, how to run it and explain some related concepts.***
First, it's better that you are following the curriculum of [FLATIRON SCHOOL](https://flatironschool.com/) and see why we should learn Ruby on this comprehensive [article](https://medium.com/learn-love-code/why-teach-ruby-bac8416c77ba).

OK, next steps! Let's take a look some folders on this repository.
As can be observed, we have three in total. If you want to build an application on Ruby, surely you have to commit with this structure:
```code
├── bin
│   └── tictactoe
├── config
│   └── environment.rb
├── lib
│   └── tic_tac_toe.rb
└── spec
    ├── tic_tac_toe_spec.rb
    └── spec_helper.rb
├── Gemfile    
├── ttt.rb 
```
***bin***
Within the bin/ directory we generally put code that relates to running our actual program, running CLI applications
Executable files are any files that contain instructions in a form that a computer's operating system or application can understand and follow. Any executable files we place in our bin directory need to begin with the following line:
```
  #!/usr/bin/env ruby
```
This is often referred to as a "shebang line" and it tells the shell which interpreter to use to execute the remainder of the file.
Using the above setup, you can run your program by typing ruby ```bin/< your file name >``` into the command line.
