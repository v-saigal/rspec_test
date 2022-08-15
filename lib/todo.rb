=begin
Single-Method Programs Design Recipe
1. Describe the Problem
Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.

- As a user
- So that I can keep track of my tasks
- I want to check if a text includes the string #TODO.

2. Design the Method Signature
The signature of a method includes:

- check_todo() takes a string as an argument and checks for the phrase #todo
=> todo = check_todo(todo_item)
=> retrun true

no side effects

3. Create Examples as Tests
These are examples of the method being called with particular arguments, and what the method should return in each situation.

For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.

- check_todo('#todo')
=> true

- check_todo('todo')
=> false

- check_todo('buy milk')
=> false

- check_todo()
=> false

- check_todo('#todo - buy milk')
=> true

- check_todo('')
=> false

- check_todo('#TODO')
=> true

4. Implement the Behaviour
For each example you create as a test, implement the behaviour that allows the method to return the right value for the given arguments.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.

Copy and fill out this template for each of the below exercises.
=end

def check_todo(todo_item)
    return todo_item.include?('#todo') || todo_item.include?('#TODO')
end



p test = check_todo('#todo')
p test = check_todo('milk')
p test = check_todo('#TODO')