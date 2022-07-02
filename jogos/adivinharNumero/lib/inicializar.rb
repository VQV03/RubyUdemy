require 'tty-cursor'
require 'tty-spinner'

class Inicializacao
  def self.inicializando
    system("cls")

    cursor = TTY::Cursor
    print cursor.move_to(60, 15)

    spinner = TTY::Spinner.new
    spinner = TTY::Spinner.new("[:spinner] Carregando ...", format: :pulse_2)
    spinner.auto_spin # Automatic animation with default interval
    sleep(5) # Perform task
    spinner.stop("Pronto!") # Stop animation
    system("cls")
  end
end
