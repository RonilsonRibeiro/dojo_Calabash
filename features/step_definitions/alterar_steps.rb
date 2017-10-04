Dado("que estou na tela de consulta de cadastro") do
  page(HomePage).acao("consulta")
end

Quando("seleciono o registro criado no teste de cadastro") do
  page(HomePage).load
  page(AlterarPage).selecionar_elemento_text("ABC0301")
end

Quando("faço alterações no cadastro") do
  page(CadastroVeiculosPage).set_modelo_marca("Monza II")
  page(CadastroVeiculosPage).set_ano("1990")
  page(CadastroVeiculosPage).set_placa("ABC0201")
  page(CadastroVeiculosPage).set_kilometragem("100000")
  page(CadastroVeiculosPage).set_valor("5000.00")
  page(CadastroVeiculosPage).touch_operacao("alterar")
end

Então("meu registro é atualizado com sucesso") do
  wait_for_element_exists("* text:'Carro alterado com sucesso.'")
  assert_text 'Carro alterado com sucesso'
end
