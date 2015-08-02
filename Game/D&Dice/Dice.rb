module Dice

	def D_20(number_of_dice)

		dice_roll = Random.new
		roll = dice_roll.rand(20)
	end

	def D_6(number_of_dice)

		dice_roll = Random.new
		roll = dice_roll.rand(6)
	end

	def D_10(number_of_dice)
		n = 0
		while n < number_of_dice do |n += n|
			dice_roll = Random.new
			roll = dice_roll.rand(10)
			puts roll
		end
		
	end
		
	end
		
	end

	puts D_10(4)