Dado(/^eu tenha realizado o login no site$/) do
  visit 'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername',:with => 'Admin')
  fill_in('txtPassword',:with => 'admin')
  find(:id, 'btnLogin').click
end

Quando(/^acesso a tela de Add Employee$/) do
  find(:id, 'menu_pim_viewPimModule').click
  find(:id, 'menu_pim_viewEmployeeList').click
  click_link('Bidarra')
end

Então(/^os dados cadastrias do funcionario é alterado com sucesso$/) do
  find(:id, 'btnSave').click
  fill_in('personal_txtLicenNo', :with => '09988797777777')
  fill_in('personal_txtLicExpDate', :with => '2018-12-31')
  select('Brazilian', :from => 'personal_cmbNation')
  fill_in('personal_DOB', :with => '1940-03-14')
  find(:id, 'btnSave').click

  assert_text('Successfully Saved')
end
