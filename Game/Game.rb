# Requiring modules previously written
require 'Player_Health.rb'
require 'Player_Equipment.rb'

# Game intro text in paragraph form
puts <<INTRO
You wake up in a dark room. Blinking your eyes into focus, you see two doors. 
The one on the left is marked 'Door #1'. The one on the left is marked 'Door#2'. Which door do you go through?
Alternatively, you can 'examine Door #1' or 'examine Door #2'.
INTRO

# this prints the player's hit points to the screen before prompting them for input
print "Hit Points: #{$hit_points}\n> "
door = $stdin.gets.chomp

# we use the boolean || or here so that all the probable variations of player input are accepted by the program
if  door == "1" || door == "Door #1" || door == "#1" || door == "one" || door == "door 1" || door == "door #1"
	puts "You enter door #1. It slams shut behind you. You look up to see a giant bear eating a comically large cheese cake. What do you do?"
	puts "1. 'Take' the cake."
	puts "2. 'Yell' at the bear, hoping to scare it away."
	puts "3. 'Nothing'."
	print "Hit Points: #{$hit_points}\n> "
	bear = $stdin.gets.chomp

	if bear == "1" || bear == "take the cake" || bear == "Take the cake." || bear == "take teh cake" || bear == "cake" || bear == "Take" || bear == "take"
		puts "The bear tears your arm off in one bite. Good job!"
		# this is the first use of our module Player_Health. It subtracts a random integer from 0 to 60 from the variable $hit_points, our player's hit points.
		Health.taking_critical_damage
		puts "You are bleeding. What are you going to do about it?"
		puts "You can 'look around' for something to stop the bleeding, 'rush' at the bear in a last blaze of glory, or 'retreat' back through the door you just came in."
		print "Hit Points: #{$hit_points}\n> "
		bear_decision = $stdin.gets.chomp
		if bear_decision == "look around"
			puts "You look around frantically as the blood continues to gush from the hole where your arm used to be."
			puts "On the ground to your right, you see the tattered remains of a straitjacket."
			puts "On the ground to your left, you see about a meter's length of frayed rope."
			puts "Do you 'pick up the rope' or do you 'pick up the straitjacket'?"
			# this module adds a random integer from 0 to 5 to the global variable $hit_points.
			Health.no_damage_taken
			print "Hit Points: #{$hit_points}\n> "
			bear_pickup = $stdin.gets.chomp
			if bear_pickup == "pick up the rope"
				puts "You reach for the rope on the ground to your left. After a moment's consternation, you realize you reached for it with a hand you no longer have."
				puts "Shaking off the impending scream of horror, you reach for the rope with your right hand and pick it up."
			end
		elsif bear_decision == "rush"
			puts "You rush towards the bear, trying your hardest to appear frightening while bleeding profusely, tantalizingly from one arm."
			puts "The bear lazily swipes you aside, scoring deep claw marks into your already gaping wound."
			Health.taking_damage
			puts "As you hit the ground, the edges of your vision start to go black. You are losing a lot of blood."
			print "Hit Points: #{$hit_points}\n> "
			
		end
	elsif bear == "2" || bear == "yell" || bear == "yell at the bear" || bear == "Yell" || bear == "Yell at the bear, hoping to scare it away."
		puts "The bear lumbers towards you and, with a single clawed swipe, tears your face off. Good job!"

	elsif bear == "3" || bear == "Nothing." || bear == "nothing" || bear == "do nothing" || bear == "nothin"
		puts "Well doing nothing is probably better. The bear eyes you suspiciously before taking its cheesecake and running away."
		puts "Looking around in relief, you see the handle of a small knife sticking out from under the abandoned cheesecake tin."
		puts "You also notice about a meter's length of frayed rope to your left and the tattered remains of a straitjacket to your right."
		puts "What do you want to do? You can 'pick up the rope', 'pick up the knife', 'pick up the straitjacket', or 'take everything'."
		puts "You can also 'look' at any of these objects."
		print "Hit Points: #{$hit_points}\n> "
		bear_pickup_2 = $stdin.gets.chomp
		if bear_pickup_2 == "pick up the rope"

		elsif bear_pickup_2 == "pick up the knife" || bear_pickup_2 == "pick up knife" || bear_pickup_2 == "knife"

		elsif bear_pickup_2 == "pick up the straitjacket" || bear_pickup_2 == "pick up straitjacket" || bear_pickup_2 == "straitjacket"

		elsif bear_pickup_2 == "take everything" || bear_pickup_2 == "take all" || bear_pickup_2 == "everything"
				
				
	else 
		puts "I don't understand what you want to do."
		print "Hit Points: #{$hit_points}\n> "
	end

elsif door == "2" || door == "Door #2" || door == "door #2" || door =="door 2" || door == "two" || door == "#2"
	puts "You enter door #2. Your eyes are drawn immediately to your own warped reflection at the mouth of a maze of funhouse mirrors. What do you do?"
	puts "1. 'Enter' the maze."
	puts "2. 'Look around'."
	puts "3. Understanding revolvers yelling melodies."

	print "Hit Points: #{$hit_points}\n> "
	insanity = $stdin.gets.chomp

	if insanity == "1" || insanity == "2"
		puts "Your body survives powered by a mind of jello. Good job!"
	else
		puts "The insanity rots your eyes into a pool of muck. Good job!"
	end

elsif door == "examine Door #1" || door == "examine door 1" || door == "examine 1" || door == "examine door #1" || door == "examine #1"
	puts "Looking closely at Door #1, you see deep claw marks scratched into the door. Do you go through 'Door #1' or 'Door #2'? Alternatively, you can 'examine Door #1' or 'examine Door #2'."
	print "Hit Points: #{$hit_points}\n> "
	door_2 = $stdin.gets.chomp
	if door_2 == "1" || door_2 == "Door #1" || door_2 == "door #1" || door_2 == "#1" || door_2 == "door 1"
		puts "You enter door #1. It slams shut behind you. You look up to see a giant bear eating a comically large cheese cake. What do you do?"
		puts "1. Take the cake."
		puts "2. Yell at the bear, hoping to scare it away." 
		puts "3. Nothing."
		print "Hit Points: #{$hit_points}\n> "
		bear = $stdin.gets.chomp
		if bear == "1"
			puts "The bear tears your left arm off in one bite. Good job!"
			Health.taking_critical_damage
			puts "You are bleeding. What are you going to do about it?"
			puts "You can 'look around' for something to stop the bleeding, 'rush' at the bear in a last blaze of glory, or 'retreat' back through the door you just came in."
			print "Hit Points: #{$hit_points}\n> "
			bear_decision = $stdin.gets.chomp
			if bear_decision == "look around"
				puts "You look around frantically as the blood continues to gush from the hole where your arm used to be."
				puts "On the ground to your right, you see the tattered remains of a straitjacket."
				puts "On the ground to your left, you see about a meter's length of frayed rope."
				puts "Do you 'pick up the rope' or do you 'pick up the straitjacket'?"
				Health.no_damage_taken
				print "Hit Points: #{$hit_points}\n> "
				bear_pickup = $stdin.gets.chomp
				if bear_pickup == "pick up the rope"
					puts "You reach for the rope on the ground to your left. After a moment's consternation, you realize you reached for it with a hand you no longer have."
					puts "Shaking off the impending scream of horror, you reach for the rope with your right hand and pick it up."
				end
			elsif bear_decision == "rush"
				puts "You rush towards the bear, trying your hardest to appear frightening while bleeding profusely, tantalizingly from one arm."
				puts "The bear lazily swipes you aside, scoring deep claw marks into your already gaping wound."
				Health.taking_damage
				puts "As you hit the ground, the edges of your vision start to go black. You are losing a lot of blood."
				print "Hit Points: #{$hit_points}\n> "
			
			end
		elsif bear == "2"
			puts "The bear lumbers towards you, and with a single clawed swipe, tears your face off."
			Health.taking_critical_damage
			Health.taking_critical_damage
			Health.taking_critical_damage
			Health.taking_critical_damage
			Health.taking_critical_damage
			Health.taking_critical_damage
			print "Hit Points: #{$hit_points}\n"
			puts "You have died, faceless and in agony."
		end
	elsif door_2 == "2" || door_2 == "door #2" || door_2 == "Door #2" || door_2 == "#2" || door_2 == "door 2"
		puts "You enter door #2. Your eyes are drawn immediately to your own warped reflection at the mouth of a maze of funhouse mirrors. What do you do?"
		puts "1. 'Enter' the maze."
		puts "2. 'Look around'."
		puts "3. Understanding revolvers yelling melodies."

		print "Hit Points: #{$hit_points}\n> "
		maze_decision = $stdin.gets.chomp

		if maze_decision == "1" || maze_decision == "Enter" || maze_decision == "Enter the maze." || maze_decision == "enter"
			puts "You walk forwards into yourself, following a hallway that seems to always be shifting, even though your feet move ever in a straight line."
			puts "You see"
			puts "You hear"
			puts "Where do you go? You can go "
		elsif maze_decision == "2" || maze_decision == "Look around." || maze_decision == "look around" || maze_decision == "look"
			puts "You look around intensely, trying to decipher the falsehood of mirrors from the actual reality in the maze."
			puts "The longer you stare, the harder it becomes to recognize what's real and what is simple trickery."
			puts "A sudden dizzy spell comes over you, bringing you to your knees. When you stand back up, you notice the hall has shifted."
			puts "Do you 'continue' forward? Do you try to 'investigate' what's different about the hall?"
			print "Hit Points: #{$hit_points}\n> "
			maze_decision_2 = $stdin.gets.chomp
			if maze_decision_2 == "continue" || maze_decision_2 == "continue forward" || maze_decision_2 == "continue forwards"
				puts "You take a few steps forwards, head still swimming. Before you have gone ten paces, you run into a mirror."
				puts "You're almost certain that mirror wasn't there a moment ago. What do you want to do now?"
				puts "You can 'investigate' the mirror, 'turn left', 'turn right', or 'go back' the way you came."
				print "Hit Points: #{$hit_points}\n> "
				maze_decision_3 = $stdin.gets.chomp
				if maze_decision_3 == "investigate" || maze_decision_3 == "investigate the mirror" || maze_decision_3 == "mirror"
					puts "You peer at the mirror through squinted eyes, trying to discern the source of your sense of uneasiness."
					puts "Moving your gaze over the edges, you notice a small crack on the right edge. Following the crack, your eyes trace a symbol in the shape of a bird, wings spread in flight."
					puts "As soon as you notice the final detail of its claws, the symbol begins to glow, as if from within."
					puts "An unidentifiable light source spreads itself across the mirror."
				elsif maze_decision_3 == "turn left" || maze_decision_3 == "left" || maze_decision_3 == "Turn left." || maze_decision_3 == "Turn left"
					puts "You turn to the left, striking out in a new direction. As you walk, you begin to realize that there is no break in the mirrors to your right."
					puts "Upon closer inspection, you "

		end
	end
				

elsif door == "examine Door #2"
	puts "Looking closely at Door #2, you see a faint symbol scratched into the top of the door. It looks like a strangely hypnotic eye."
	print "Hit Points: #{$hit_points}\n> "
	door_2 = $stdin.gets.chomp
	if door_2 == "1" || door_2 == "door 1" || door_2 == "door #1" || door_2 == "Door #1" || door_2 == "one"
		puts "You enter door #1. It slams shut behind you. You look up to see a giant bear eating a comically large cheese cake. What do you do?"
		puts "1. 'Take' the cake."
		puts "2. 'Yell' at the bear, hoping to scare it away." 
		puts "3. 'Nothing'."
		print "Hit Points: #{$hit_points}\n> "
		bear = $stdin.gets.chomp
		if bear == "1" || bear =="take" || bear == "Take" || bear == "Take the cake" || bear == "take the cake" || bear == "Take the cake."
			puts "The bear tears your left arm off in one bite. Good job!"
			Health.taking_critical_damage
			puts "You are bleeding. What are you going to do about it?"
			puts "You can 'look around' for something to stop the bleeding, 'rush' at the bear in a last blaze of glory, or 'retreat' back through the door you just came in."
			print "Hit Points: #{$hit_points}\n> "
			bear_decision = $stdin.gets.chomp
			if bear_decision == "look around"
				puts "You look around frantically as the blood continues to gush from the hole where your arm used to be."
				puts "On the ground to your right, you see the tattered remains of a straitjacket."
				puts "On the ground to your left, you see about a meter's length of frayed rope."
				puts "Do you 'pick up the rope' or do you 'pick up the straitjacket'?"
				Health.no_damage_taken
				print "Hit Points: #{$hit_points}\n> "
				bear_pickup = $stdin.gets.chomp
				if bear_pickup == "pick up the rope"
					puts "You reach for the rope on the ground to your left. After a moment's consternation, you realize you reached for it with a hand you no longer have."
					puts "Shaking off the impending scream of horror, you reach for the rope with your right hand and pick it up."
				elsif bear_pickup == "pick up the straitjacket" || bear_pickup == "straitjacket" || bear_pickup == "pickup the straitjacket"
					puts "You reach for the strips of cloth that used to be a straitjacket."
					puts "The material feels thick and rough between your fingers."
				end
			elsif bear_decision == "rush" || bear_decision == "rush at the bear" || bear_decision == "rush bear" || bear_decision == "kill"
				puts "You rush towards the bear, trying your hardest to appear frightening while bleeding profusely, tantalizingly from one arm."
				puts "The bear lazily swipes you aside, scoring deep claw marks into your already gaping wound, and turns back to its cheesecake."
				Health.taking_damage
				Health.taking_damage
				puts "As you hit the ground, the edges of your vision start to go black. You are losing a lot of blood."
				puts "What are you going to do? 'Cry' about it? Are you going to try to 'crawl away' with what's left of your vital fluids?"
				puts "Alternatively, you can 'look around' for something to stop the bleeding."
				print "Hit Points: #{$hit_points}\n> "
				clawed_decision = $stdin.gets.chomp
				if clawed_decision == "look around" || clawed_decision == "look" || clawed_decision == "Look around"
					puts "You look frantically around the dim room as your vision starts to swim."
					puts "You see a frayed rope off to your left. Off to your right, you see the remains of a tattered straitjacket."
				elsif clawed_decision == "Cry" || clawed_decision == "cry" || clawed_decision == "cry about it" || clawed_decision == "Cry about it."
					puts "You cease caring about maintaining whatever pride you had left and you break down in tears."
					puts "Your keening rivals that of banshees in an unholy choir, driving the bear away, dragging its cheesake."
					puts "You continue to wail, all the despair and blood loss adding a ragged edge to your voice."
					puts "From the shadows, you hear an answering cry... or maybe it's just your mind beginning to enter shock."
				else
					puts "The blood loss must be making you incoherent. What were you trying to do?"
					print "Hit Points: #{$hit_points}\n> "
					try_again7 = $stdin.gets.chomp
					if 		
			
			end
		elsif bear == "2"
			puts "The bear lumbers towards you, and with a single clawed swipe, tears your face off."
			Health.taking_critical_damage
			Health.taking_critical_damage
			Health.taking_critical_damage
			Health.taking_critical_damage
			Health.taking_critical_damage
			Health.taking_critical_damage
			print "Hit Points: #{$hit_points}\n"
			puts "You have died, faceless and in agony."
		end
	end
else
	puts "You stumble around indecisively, falling face-first onto a sharp rock. You have died, forgotten and alone. Good job!"
end