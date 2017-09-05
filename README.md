# bank techtest

The aim of this tech test is to set up a simple application to handle the deposits and withdrawals of a sample user in a sample bank account.

The application is written in Ruby and completely tested with RSpec. There are no further dependencies, as data is not persistent and stored in memory rather than a database.

The functionality is therefore limited and likely not applicable in the real world. The development of this application, however, serves to illustrate principles of good and thorough software development and should be viewed with this in mind.

## Instructions for use

1. Clone this repo into a directory of your choice
2. Switch into the newly created directory
3. From the command line, run `~$ bundle install`
4. From the command line, run `~$ rspec ` -- make sure all tests pass

## Testing

  This app was tested completely in rspec. The tests can be found in the `./spec` directory. There are several unit tests and a single, integrated feature spec to test the full functionality of the product.
  
![RSpec Tests](./screenshots/Screenshot_RSpecTests.png?raw=true "RSpec Testing")

  ### Rationale
  
  Adhering to good principles of object oriented programming, responsibilities of the programme are devolved across several classes. Although the program is simple, it is made up of 5 constituent parts. Together they allow the user to execute all user stories listed below. Accordingly, users can open and check their account. They can make deposits and withdrawals and see their account history.
  
  Each of these activities, more or less, is nested in a seperate class. The `Account` class is instantiated with an account activity, which is its own class. When the `#deposit` and `#withdraw` functions are called within the `Account` class, they create a new `Withdrawal` and `Deposit` class respectively and push these into the `Activity` class. Here they are stored in the `history` attribute.
  
  The `Printer` class is its own object, and handles the viewing of account activity. The `#print_activity` method takes a specific instance of `Account` as an argument and calls on the dependent `Activity` object to print the account history.
  
  
## User Stories & Functionality

1.  As a user  
    So I can use the banking service  
    I want to be able open an account  

2.  As a user  
    So I can see how much money I have  
    I want to see my balance  

3.  As a user  
    So I can save money  
    I want to be able to deposit money in my account  

4.  As a user  
    So I can spend money  
    I want to be able to withdraw money from my account  

5.  As a user  
    So I can plan my budget  
    I want to keep track of my account activity  

6.  As a user  
    So I can see my account activity  
    I want to be able to print it to the screen  
