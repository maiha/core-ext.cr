struct Time::Span
  # Parses a Time in the given *time* string, using a heuristic.
  #
  # ```
  # Time::Span.parse("01:02:03")       # => Time::Span.new(1, 2, 3)
  # Time::Span.parse("5.01:02:03")     # => Time::Span.new(5, 1, 2, 3)
  # Time::Span.parse("5.01:02:03.010") # => Time::Span.new(5, 1, 2, 3, 10)
  # ```
  def self.parse(span : String)
    case span
    when /^(\d{0,4})\.?(\d{2}):(\d{2}):(\d{2})\.?(\d{0,7})/
      ms = $5.ljust(7,'0')[0,3].to_i
      d,h,m,s = [$1,$2,$3,$4].map{|i| "0#{i}".to_i}
      Time::Span.new(d,h,m,s,ms)
    else
      raise "invalid span: '#{span}'"
    end
  end
end

