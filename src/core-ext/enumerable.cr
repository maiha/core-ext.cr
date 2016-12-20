module Enumerable(T)
  def grep(klass : U.class) : Array(U) forall U
    sum = [] of U
    each do |i|
      sum << i if i.is_a?(U)
    end
    sum
  end
end
