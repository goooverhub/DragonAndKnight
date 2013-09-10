# To change this template, choose Tools | Templates
# and open the template in the editor.

class Dragon
  def initialize
    @dragon_name = "DeathWing"
    @dragon_atk = 0
    @dragon_def = 0
    @dragon_hp = 0
 
  end
  
  #The action of dragon attack
  def dragon_attack (victim)
    @victim = victim
  end
  
end
