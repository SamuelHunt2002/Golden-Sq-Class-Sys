1. Describe problem 
As a user
So that I can record my experiences
I want to keep a regular diary
# array [] for keeping records / perhaps an array of arrays

As a user
So that I can reflect on my experiences
I want to read my past diary entries
# read past entries (date - maybe both, array of hashes)

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed
# input - time available and reading speed - calculate word count(x) and return all entries below x. Word count in a string? 


As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary
# separate class todo list ? functions: add, display. 


As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries
# searches diary entry - checks to see if a phone number has been entered and return value. 
# search through the array - match regex and extraction match?/[]/


2. Design class system 

Diary 
- Init 
    - Array = []
- add 
    - Array << entry 
- display
    - 
- filter 
- phone_search

Diary Entry 
- create_entry
    - Entry 
    - DateTime.now()

-- These are imported from previous task -- 
ToDo
ToDo List 

3. Create examples as integration tests 


4. Unit tests 

5. Implementation 
