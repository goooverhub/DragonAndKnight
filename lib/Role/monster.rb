# To change this template, choose Tools | Templates
# and open the template in the editor.

class Monster
  def initialize
    @monster_name = "little monster"
    @monster_atk = rand(3)+1
    @monster_hp = rand(10)+10
    @monster_def = rand(5)+1
    @monster_exp = 4
    @monster_statue = "live"
  end
  def get_monster_statue 
    @monster_statue
  end
  def set_monster_statue(monster_statue)
    @monster_statue = monster_statue
  end
  def get_monster_name
    @monster_name
  end
  
  def get_monster_atk
    @monster_atk
  end
  
  def get_monster_hp
    @monster_hp
  end
  
  def set_monster_hp (monster_hp)
    @monster_hp = monster_hp
  end
  
  def get_monster_def
    @monster_def
  end
  
  def get_monster_exp
    @monster_exp
  end
  
  #the action of monster attack
  def monster_attack (victim)
    @victim = victim
  end
  
end
