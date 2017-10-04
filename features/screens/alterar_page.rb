class AlterarPage < Calabash::ABase

  def procurar_elemento_text(texto)
      sleep 5
      for i in 0..8 do
        if element_exists("* text:'#{texto}'")
          break
        end
        scroll_down
      end
  end

  def selecionar_elemento_text(texto)
      procurar_elemento_text(texto)
      touch("* text:'#{texto}'")
  end
end
