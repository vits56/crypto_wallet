namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Apagando Banco de Dados...")
      spinner.auto_spin 
      %x(rails db:drop)
      spinner.success("(Concluido com sucesso!)")

      spinner = TTY::Spinner.new("[:spinner] Criando Banco de Dados...")
      spinner.auto_spin
      %x(rails db:create)
      spinner.success("(Concluido com sucesso!)")

      spinner = TTY::Spinner.new("[:spinner] Migrando Banco de Dados...")
      spinner.auto_spin
      %x(rails db:migrate)
      spinner.success("(Concluido com sucesso!)")

      spinner = TTY::Spinner.new("[:spinner] Populando Banco de Dados...")
      spinner.auto_spin
      %x(rails db:seed)
      spinner.success("(Concluido com sucesso!)")
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

end
