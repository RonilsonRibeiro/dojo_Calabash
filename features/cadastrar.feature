#language: pt
#enconde: utf-8

Funcionalidade: Cadastrar Carro

@cadastrar
Cenario: Cadastrar um novo carro
  Dado que estou na tela de cadastro de veículo
  Quando preencher os dados de cadastro
  E tocar no botão Cadastrar
  Então será apresentada mensagem de sucesso de cadastro
