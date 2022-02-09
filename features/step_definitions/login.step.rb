Dado('que o usuario queira se logar') do
      login.load
  end
  
  Quando('ele digitar as credenciais validas') do
      @test.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:email])
  end
  
  Entao('deve acessar o site com sucesso') do
    home.checkLoginSuccessful
  end