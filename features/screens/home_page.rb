class HomePage < Calabash::ABase
  def acao(tipo)
    #cadastrar #consulta
    touch "* id:'#{tipo}'"
  end

  def load()
    wait_for_element_exists("* id:'message'")
    wait_for_element_does_not_exist("* id:'message'")
  end
end
