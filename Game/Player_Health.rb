module Health

	# Let's define the player's initial health. 

	def Health.initial
		vitals = 100
		return vitals
	end

	# We need to declare a global variable for the player's health.

	$hit_points = Health.initial

	# This method generates a random number of damage to deal to the player when method is called.

	def Health.damage
		damage = Random.new
		return damage.rand(30)
	end

	# This method generates a random number of damage to deal to the player when method is called.

	def Health.critical_damage
		crit_damage = Random.new
		return crit_damage.rand(60)
	end
	# This method generates a random number of hitpoints the player will heal when method is called.

	def Health.healing
		healing = Random.new
		return healing.rand(5)
	end

	# These three methods modify the player's health using the three methods defined above. 
	# Health.taking_damage uses the number from Health.damage to deal subtract from the player's health,
	# $hit_points, but also adds the number from Health.healing.
	# Health.taking_critical_damage does the same with Health.critical_damage.
	# Health.no_damage_taken only adds Health.healing to $hit_points.

	def Health.taking_damage
		if $hit_points == 100
			current_health = Health.initial - Health.damage + Health.healing
			$hit_points = current_health
		elsif $hit_points != 100
			current_health = $hit_points - Health.damage + Health.healing
			$hit_points = current_health
		end
	end

	def Health.taking_critical_damage
		if $hit_points == 100
			current_health = Health.initial - Health.critical_damage + Health.healing
			$hit_points = current_health
		elsif $hit_points != 100
			current_health = $hit_points - Health.critical_damage + Health.healing
			$hit_points = current_health
		end		
	end

	def Health.no_damage_taken
		if $hit_points == 100
			return $hit_points
		elsif $hit_points != 100
			current_health = $hit_points + Health.healing
			$hit_points = current_health
		end
	end
				
end