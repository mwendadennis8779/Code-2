def cube_checker(volume, side)
    return false if volume <= 0 || side <= 0
    cube_side = (volume / side.to_f) ** (1.0 / 3)
    cube_side.to_i == side
  end
  