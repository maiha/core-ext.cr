class String
  def first?(regex : Regex) : String?
    scan(regex) do
      return $1
    end
    return nil
  end
end
