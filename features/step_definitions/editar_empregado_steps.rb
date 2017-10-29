Dado("que estou logado no Orange") do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando("eu alterar o cadastro do funcionario") do
binding.pry
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]/b').click
  find(:xpath, '//*[@id="menu_pim_viewEmployeeList"]').click
  fill_in('empsearch[id]', :with => '0028')
  click_button('searchBtn')
  find(:xpath, '//*[@id="resultTable"]/tbody/tr/td[2]/a').click
  click_button('btnSave')
  fill_in('personal_txtEmpFirstName', :with => 'Fernandoedit')
  click_button('btnSave')
end

Entao("o funcionario será atualizado") do
  assert_text('Successfully Saved')
  assert_text('Fernandoedit')
end