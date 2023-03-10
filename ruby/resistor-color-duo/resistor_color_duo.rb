class ResistorColorDuo
    def self.value(colors)
      color_values = {
        black: 0,
        brown: 1,
        red: 2,
        orange: 3,
        yellow: 4,
        green: 5,
        blue: 6,
        violet: 7,
        grey: 8,
        white: 9
      }
      
      first_color = colors[0].to_sym
      second_color = colors[1].to_sym
  
      first_color_value = color_values[first_color]
      second_color_value = color_values[second_color]
  
      values = []
      values.push(first_color_value)
      values.push(second_color_value)
      return values.join.to_i
    end 
  end 