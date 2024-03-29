class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds)
    @birds = birds  
  end

  def yesterday
    @birds[-2]
  end

  def total
    @birds.sum 
  end

  def busy_days
    @birds.count { |bird| bird >= 5 }
  end

  def day_without_birds?
    @birds.any? { |bird| bird == 0 }
  end
end
