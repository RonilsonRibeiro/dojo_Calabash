#language: pt
#utf-8

Funcionalidade: Alterar cadastro
  Eu como usuário
  Quero realizar alterações nos cadastros
  Para manter a minha base atualizada

  @alterar
  Cenário: Alterar cadastro
    Dado que estou na tela de consulta de cadastro
    Quando seleciono o registro criado no teste de cadastro
    E faço alterações no cadastro
    Então meu registro é atualizado com sucesso
