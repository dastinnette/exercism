class ResistorColorDuo
    def self.value(colors)
        color_values = %w[black brown red orange yellow green blue violet grey white]

        values = colors.first(2).map do |color|
            color_values.index(color)
        end

        values.join.to_i 
    end 
  end 