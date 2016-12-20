struct Nil
  def any?
    false
  end
end

class String
  def any?
    ! empty?
  end
end
