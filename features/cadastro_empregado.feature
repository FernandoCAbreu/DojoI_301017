#language: pt
#utf-8

@cadastro
Funcionalidade: Cadastrar funcionario
	Eu como usuário
	Quero cadastrar um funcionario
	Para ter seu cadastro realizado

	Cenario: Cadastro de usuário no site OrangeHRM
		Dado que estou logado no OrangeHRM
		Quando eu realizar o cadastro do funcionario
		Entao o funcionario será cadastrado


