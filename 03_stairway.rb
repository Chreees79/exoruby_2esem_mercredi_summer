#lancer une partie de jeu avec un nombre aléatoire entre 1 et 6 et monter 10 marches
# s'il fait 5 ou 6 => il avance d'une marche et le programme le lui dit (ainsi que la marche où il est)
#s'il fait 1 => il descend d'une marche et le programme le lui dit (ainsi que la marche où il est)
#s'il fait 2, 3 ou 4 => il reste sur la même marche (et le programme le lui dit ainsi que la marche où il est resté)
#quand le joueur est à la 10eme marche: le programme lui dit avec un super message, et le jeu se termine
#STATISTIQUE: fais une méthode average_finish_time qui va simuler au moins 100 parties et retourner le nombre de tous moyen pour arriver à la 10ème marche


def welcome_screen
puts "=====================     Bonjour à toi! tu vas jouer à un jeu!     =============================="
puts "======================           tu vas lancer un dé et:         ================================="
puts "================        s'il fait 5 ou 6, tu avances d'une marche        ========================="
puts "===================       s'il fait 1, tu descends d'une marche     =============================="
puts "================   s'il fait 2, 3, ou 4, tu restes sur la même marche    ========================="
puts "======================          Bonne chance à toi !!!            ================================"
puts""
puts""
puts""

end

def dice
  puts "tape entrer pour faire jouer le dé !!! "
  print ">  🎲"
  gets
  dice_value = rand (1..6)
  puts "le dé roule et ..... tu viens de faire un #{dice_value}"
  return dice_value
end
def move (dice_value, step)
    if dice_value == 5 || dice_value == 6
      step = step + 1
      puts "tu avances d'une marche! ⭐" 
    elsif dice_value == 1
      step = step - 1
      puts "tu descends d'une marche "
    else
      puts "tu restes sur la même marche"
    end
    return step
  end


def game
    turn_counter = 0
    step = 1
  until step == 10
    puts "tu es à la marche #{step}"
    dice_value = dice
    step = move(dice_value, step)
    turn_counter += 1
    if step <= 0
      step = 1
      puts "tu ne peux pas creuser!! donc tu reste à la marche #{step} "
      turn_counter += 1
    end
  end
  puts "################  il aura fallu #{turn_counter} tours pour arriver à la 10ème marche    #####################"
  puts ""
  puts "⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐      hourra!! tu y es arrivé!!    ⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐"
end

def perform
  welcome_screen
  game
end

perform