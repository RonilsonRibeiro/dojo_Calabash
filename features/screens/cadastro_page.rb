class CadastroVeiculosPage < Calabash::ABase

  def touch_operacao(operacao)
    touch "* id:'#{operacao.downcase}'"
  end

  def set_modelo_marca(modelo)
    sleep 3
    set_with_id('modelo', modelo)
  end

  def set_ano(ano)
    set_with_id('ano', ano)
  end

  def set_placa(placa)
    set_with_id('placa', placa)
  end

  def set_kilometragem(kilometragem)
    set_with_id('km', kilometragem)
  end

  def set_valor(valor)
    set_with_id("valor", valor)
  end

  private
  def set_with_id(id, valor)
    clear_text_in("* id:'#{id}'")
    touch "* id:'#{id}'"
    keyboard_enter_text valor
    hide_soft_keyboard
  end
end
