Dado(/^eu tenha realizado o login$/) do
  visit 'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername',:with => 'Admin')
  fill_in('txtPassword',:with => 'admin')
  find(:id,'btnLogin').click
end

Quando(/^acesso a tela de Employee List$/) do
  find(:id, 'menu_pim_viewPimModule').click
  find(:id, 'menu_pim_addEmployee').click
  fill_in('firstName',:with => 'Camilla')
  fill_in('lastName',:with => 'Bidarra')
  $id_emp = find(:id,'employeeId').value
  find(:id,'btnSave').click
end

Então(/^realizo o cadastro do funcionario com sucesso$/) do

     assert_text('Personal Details')
end
