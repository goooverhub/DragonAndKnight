# To change this template, choose Tools | Templates
# and open the template in the editor.
require 'Role/knight'
require 'Function/world_map'
require 'Role/dragon'
require 'Function/game_room'
require 'Role/helper'
require 'Role/monster'
#initialize
x_point = 0
y_point = 0
user_status = "live"
#output the welcome information
puts "HI KNIGHT! PLEASE ENTER YOUR USERNAME:"
#input the username and create the knight
user_name = gets 
user_knight = Knight.new(user_name,x_point,y_point)
#show the username and begin the game
puts "Congratulations, Knight #{user_knight.get_user_name}"
puts "Let's begin the game"

#Create map
new_map = WorldMap.new(x_point, y_point)
#Show the original map
print "This is your current Map Status\nYou are the K\nThe E means that the map can not see now\nThe D means where is the Dragon\nThe X means you have discovered this point\n"
ii=0
for ii in 0..9
  print "#{new_map.get_current_map[ii]}\n"
  ii=ii+1
end

#game looping begin

test=String.new
puts test
while user_status == "live"
  puts "Please enter your move way"
  #"real" is a temporary variable
  real = nil
  loop do
      move_way = gets.sub("\n","")
      real = move_way
      if move_way ==  "w" && x_point - 1 >=0
        break
      end
      if move_way == "a" && y_point - 1 >=0
        break
      end
      if move_way == "s" && x_point + 1 <=9
        break
      end
      if move_way == "d" && y_point +1 <=9
        break
      end
      puts "You can't go that way, Please re-enter your way"
  end  
  move_way = real
  user_knight.user_move(move_way)
  x_point = user_knight.get_x_point
  y_point = user_knight.get_y_point
  puts "Now your at this point"
  new_map.set_x_point(x_point)
  new_map.set_y_point(y_point)
  ii=0
  for ii in 0..9
  print "#{new_map.get_current_map[ii]}\n"
  ii=ii+1
  end
  key_number = rand(9)
  #The user is in normal point
  if !((x_point == 9) and (y_point ==9))
     #If key number equal 0 or 3, that means nothing will happen
    if key_number == 0 or key_number == 3
      puts "There is nothing at this point\n"
    end
    #If key number equal 1, that means you meet a monster
    if key_number != 1 and key_number !=0 and key_number != 2 and key_number !=3
      puts "There is a monster. It want to kill you.\n"
      monster = Monster.new
      puts "This is the monster's profile\n"
      puts "Monster HP: #{monster.get_monster_hp}\n"
      puts "Monster ATK: #{monster.get_monster_atk}\n"
      rooms = Game_room.new(x_point, y_point, user_knight, monster)
      rooms.room_fight
      
    end
    #If key number equal 2 or 1, that means you meet a helper
    if key_number == 2 or key_number == 1
      puts "There is a helper. She can heal you"
    end
  else 
    puts "Aha, you find the dragon"
  end 
  
  
  #The user find the dragon
 
  #monster = Monster.new
  #game_room = Game_room.new(x_point, y_point, user_knight, monster)
  
  
  #user_status = "dead"
  
end


