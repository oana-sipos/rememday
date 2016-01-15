class A

  attribute_reader :thingy

  def foo
    bar
    self.bar
  end

  def bar
    # thingy = 1
    thingy
    @thingy
    self.thingy
  end

end

mya = A.new
mya.thingy
