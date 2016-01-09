class Player

	attr_reader :life

	def initialize(name)
		@name = name
		@life = 3
	end

	def is_alive?
		@life > 0
	end

		def random_question
			num1 = (1..10).to_a.sample
			num2 = (1..10).to_a.sample
			syms = [:+, :-, :*].sample
			puts "#{@name}: What does #{num1} #{syms} #{num2} equal?"
			user_answer = gets.chomp
			actual_answer = num1.send(syms, num2)
			answer = (actual_answer == user_answer.to_i)
				if answer
				else
					@life -= 1
				end
		end

end

def new_game
puts "Enter name for Player 1: "
@player_1 = gets.chomp

puts "Enter name for Player 2: "
@player_2 = gets.chomp

@person1 = Player.new(@player_1)
@person2 = Player.new(@player_2)

	while @person1.is_alive? && @person2.is_alive?
		@person1.random_question
		puts "#{@player_1} has #{@person1.life} lives remaining. #{@player_2} has #{@person2.life} lives remaining."
		break if !@person1.is_alive?
		@person2.random_question
		puts "#{@player_1} has #{@person1.life} lives remaining. #{@player_2} has #{@person2.life} lives remaining."
	end
	
end

new_game

puts "GG! Would you like to play again? (yes or no)"
response = gets.chomp

if response.include?("y")
	new_game
	else
end