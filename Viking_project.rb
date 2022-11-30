class Viking
    def initialize(name, age, health, strength)
        # set up your new viking however you want
        @name = name
        @age = age
        @health = health
        @strength = strength
    end
    def attack(enemy)
         code to fight
    end 
    def health
        @health
    end
    def health=(new_health)
    @health = new_health
    end
   
    def take_damage(damage)
      self.health -= damage
      
    # OR we could have said @health -= damage
      self.shout("OUCH!")
    end 
    
   def shout(str)
     puts str
   end
end

p oleg = Viking.new("oleg", 19, 100, 8)
p oleg.health
p oleg.take_damage(10)
p oleg.health
