## Two Player Game

*Step 1
take input from both users for their name, set player_1 = gets.chomp to be called to their own loop
puts "Enter player 1 name"
gets.chomp and set input as player_1
puts "Enter player 2 name"
gets.chomp and set input as player_2

*Step 2
enter loop to ask questions - create method within loop to create random questions (e.g. (1..20).to_a.sample + (1.20).to_a.sample)
within this loop = method for player_1 and another method for player_2

loop (check life of player_1 and player_2. If player_1 && player_2 > 0, continue, or call next method (random_question). Break if life = 0)
	> loop (random_question - generator)
	num1 = (1..20).to_a.sample
	num2 = (1..20).to_a.sample
		puts "#{player}: What does #{num1} plus #{num2} equal?"
		answer = gets.chomp
		if answer == true
		else life of player_1 -= 1
		> loop (player 1 - action (question) applied to player, get input.)
			loop (input. if correct, life stays the same ie. returns. else life -= 1)
			puts current_life
			end
		end
		> loop (player 2)
			loop (input. if correct, life stays the same ie. returns. else life -= 1)
			puts current_life
			end
		end
	end
end

*Step 3
Once loop broken, puts winning player and scores (lives)

What is constant above?
First loop - always check after each turn to see what their life level is
 - if either player life > 0, ask question. If life = 0, break.
 Therefore, can create a class of first loop (??)

ask question
call player_1 to get input on answer
if answer => true, player_1 @life stays the same (returns?)
if answer => false, player_1 @life -= 1
ask question
call player_2 to get input on answer
if answer => true, player_2 @life remains the same
if answer => false, player_2 @life -= 1
life = 3 for player_1 and player_2
	def player_1
	 life = 3
	end
lives -= 1 after each method (player_1)

the big loop:
while life of player_1 || player_2 > 0, keep asking questions
therefore, the big loop is the question generator

before the big loop:
take input from both users for their name, set player_1 = gets.chomp to be called to their own loop
