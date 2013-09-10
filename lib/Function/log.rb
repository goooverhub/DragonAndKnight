# To change this template, choose Tools | Templates
# and open the template in the editor.

class Log
  def initialize 
    @fight_info_arr = Array.new()
  end
  
  def get_fight_info_arr 
    @fight_info_arr
  end
  
  def set_fight_info_arr (info)
    @fight_info_arr << info
  end
  
  def destory_fight_info_arr 
    ii = @fight_info_arr.length
    i = 0 
    for i in 0..ii-1
      @fight_info_arr.pop
    end
  end
  
end
