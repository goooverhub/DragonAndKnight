# To change this template, choose Tools | Templates
# and open the template in the editor.

class WorldMap
  def initialize (x_point,y_point)
    @x_point = x_point
    @y_point = y_point
    @map_array = Array.new(10) {Array.new(10,"E")}
    @map_array [9][9] = "D"
    @map_array [0][0] = "K"
  end
  
  def set_x_point (x_point)
    @x_point = x_point
  end
  
  def set_y_point (y_point)
    @y_point = y_point
  end
  
  def get_x_point
    @x_point
  end
  
  def get_y_point
    @y_point
  end
  
  def get_map_array
    @map_array
  end
  def get_current_map
    
    @map_array[@x_point][@y_point]="K"
    @map_array
  end
end
