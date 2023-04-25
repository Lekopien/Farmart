class Binding
  def repl
    BindingRepl.new(self)
  end

  def repl!
    repl.auto
  end
end
