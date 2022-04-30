defmodule Dictionary.Runtime.Server do
  @type t :: pid()
  # @me :wilma
  @me __MODULE__

  use Agent
  alias Dictionary.Impl.Wordlist

  def start_link(_arguments) do
    # Agent.start_link(&Wordlist.word_list/0)
    Agent.start_link(&Wordlist.word_list/0, name: @me)
  end

  # def random_word(pid) do
  def random_word() do
    # Agent.get(pid, &Wordlist.random_word/1)
    # if :rand.uniform() < 0.33 do
    #   Agent.get(@me, fn _ -> exit(:boom) end)
    # end
    #
    Agent.get(@me, &Wordlist.random_word/1)
  end
end
