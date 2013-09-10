# To change this template, choose Tools | Templates
# and open the template in the editor.
require 'Role/knight'
require 'Role/monster'

class Game_room
  def initialize (map_x_point,map_y_point, user_knight , monster_profile)
    @map_x_point = map_x_point
    @map_y_point = map_y_point
#   @user_knight = Knight.new
    @user_knight = user_knight
    @monster_profile = monster_profile
  end
  
  def get_map_x_point
    @map_x_point
  end
  
  def get_user_knight
    @user_knight
  end
  
  def get_monster_profile
    @monster_profile
  end
  
  def get_map_y_point
    @map_y_point
  end
  
  def room_fight
    ii = 2
    
    while !(@monster_profile.get_monster_hp <= 0 || @user_knight.get_user_hp <= 0)
    if ii%2 == 0
      @user_knight.user_attack(@monster_profile)
      ii = ii +1
    else
      @monster_profile.monster_attack(@user_knight)
      ii = ii+ 1
    end
    end 
    
  end
  
  
end
