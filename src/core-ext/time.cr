struct Time
  # Parses a Time in the given *time* string, using a heuristic.
  #
  # ```
  # Time.parse("2001-02-03")              # => 2001-02-03 00:00:00
  # Time.parse("2001-02-03 04:05:06")     # => 2001-02-03 04:05:06
  # Time.parse("2001-02-03 04:05:06 UTC") # => 2001-02-03 04:05:06 UTC
  # Time.parse("2001-02-03 04:05:06.789") # => 2001-02-03 04:05:06.789
  # ```
  def self.parse(time : String, kind = Time::Kind::Unspecified)
    case time
    when /(\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}(.*?))$/
      Time.parse($1, to_fmt($2))
    when /(\d{4}-\d{2}-\d{2})/
      Time.parse($1, "%F")
    else
      raise "invalid time: '#{time}'"
    end      
  end

  private def self.to_fmt(opt)
    case opt
    when /^\.\d{3}$/    then "%F %T.%L"
    when /^\.\d{3} \S+/ then "%F %T.%L %z"
    when /^ \S+/        then "%F %T %z"
    else                ;    "%F %T"
    end
  end
end

