require 'Player_Health.rb'

current_player_eq = []

class Armor
	def initialize(item_name, armor_bonus, description)
		@item_name = item_name
		@armor_bonus = armor_bonus
		@description = description
	end
end

class Weapon
	def initialize(item_name, attack_damage, description)
		@item_name = item_name
		@attack_damage = attack_damage
		@description = description
	end
end

cake_knife = Weapon.new("Cake Knife", 10, "This small knife was once used to cut a cake. You can still see some frosting on the edge of the fairly dull blade.")

module Equipment

	$Equipment = Array.new() { iii }

	def Equipment.pickup(item)
		item >> $Equipment[]
	end

	def Equipment.armor_wear(item)
		item 

	end

	def Equipment.weapon_wield(item)
		item

	end

end