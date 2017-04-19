require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'

#Configurando o Driver Capybara
Capybara.register_driver :driver do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome)
end

#Setando a configuração do driver como padrão
Capybara.default_driver = :driver

#timeout padrão na execução
Capybara.default_max_wait_time = 15

#Maximizar a tela ao iniciar o teste
Capybara.page.driver.browser.manage.window.maximize
