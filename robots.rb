class Robot
   attr_accessor :name
   def initialize(name, energy=100, caliber=3)
	@name=name
	@energy=energy 
        @caliber=caliber
	puts "Welcome, " + @name
   end

   def shoot(other_guy)
	@energy=@energy-@caliber
	puts self.name + " shot " + other_guy.name + "!"
	other_guy.get_shot(@caliber)
   end

   def get_shot(caliber)
	@energy=@energy-(@caliber*@caliber)
        if @energy<0
           puts self.name+" died!"
	end
   end
end
