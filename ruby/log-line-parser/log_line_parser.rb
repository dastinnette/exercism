class LogLineParser
  def initialize(lines)
    @line = lines
  end

  def message
    @line.split(":").last.strip
  end

  def log_level
    @line.split(":").first.downcase.delete("[]")
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
