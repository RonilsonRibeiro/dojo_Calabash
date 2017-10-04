Dado("que estou na tela de cadastro de veículo") do
  page(HomePage).acao("cadastrar")
end

Quando("preencher os dados de cadastro") do
  page(CadastroVeiculosPage).set_modelo_marca("Monza")
  page(CadastroVeiculosPage).set_ano("1990")
  page(CadastroVeiculosPage).set_placa("ABC0301")
  page(CadastroVeiculosPage).set_kilometragem("100000")
  page(CadastroVeiculosPage).set_valor("5000.00")
end

Quando("tocar no botão Cadastrar") do
  page(CadastroVeiculosPage).touch_operacao "cadastrar"
end

Então("será apresentada mensagem de sucesso de cadastro") do
  wait_for_element_exists("* text:'Carro cadastrado com sucesso'")
  assert_text 'Carro cadastrado com sucesso'
end
