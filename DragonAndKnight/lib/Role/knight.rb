# To change this template, choose Tools | Templates
# and open the template in the editor.

require './Role/monster'
require './Role/dragon'
require './Role/helper'

class Knight
  def initialize (user_name,x_point,y_point)
    @user_name = user_name
    @user_statue = "live"
    @user_hp = 100
    @user_atk = 10
    @user_def = 10
    @user_speed = 0
    @user_exp = 0
    @user_level = 0
    @x_point = x_point
    @y_point = y_point
  end
  def get_user_statue
    @user_statue
  end
  def set_user_statue (user_statue)
    @user_statue = user_statue
  end
  def get_user_name
    @user_name
  end
  
  def get_user_hp
    @user_hp
  end
  
  def get_user_atk
    @user_atk
  end
  
  def get_user_def
    @user_def
  end
  
  def get_user_speed
    @user_speed
  end
  
  def get_user_exp
    @user_exp
  end
  
  def get_user_level
    @user_level
  end
  
  def get_x_point 
    @x_point
  end
  
  def get_y_point
    @y_point
  end
  
  #where should the user move to
  def user_move (move_way)
    @move_way = move_way
    if @move_way == "w"
      @x_point = @x_point -1
    end
    if @move_way == "a"
      @y_point = @y_point -1
    end
    if @move_way == "s"
      @x_point = @x_point +1
    end
    if @move_way == "d"
      @y_point = @y_point +1
    end
  end
  
  
  
  #the action of attack
  def user_attack (monster)
    @monster = monster 
    real = 0
    if @user_atk - @monster.get_monster_def > 0
      @monster.set_monster_hp(@monster.get_monster_hp-(@user_atk-@monster.get_monster_def))
    end
    
  end
  
end
