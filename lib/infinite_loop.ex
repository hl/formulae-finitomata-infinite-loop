defmodule InfiniteLoop do
  def run(formula \\ "hello(world)") do
    Finitomata.start_fsm(InfiniteLoop, Compiler, Formulae.Compiler, nil)

    Formulae.Compiler.compile(InfiniteLoop, Compiler, formula, [])
    Formulae.Compiler.eval(InfiniteLoop, Compiler, formula, [])
  end
end
