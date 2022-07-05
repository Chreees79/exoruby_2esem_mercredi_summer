# une partie signup demandant à l'utilisateur de définir un mot de passe
#une partie login demandant  à l'utilisateur de rentrer son mot de passe jusqu'à ce qu'il corresponde à celui défini précédemment
#une partie welcome_screen, affichant un écran de bienvenue avec des informations top secrètes

def signup

  puts "                               ----------------------------------------------------- "
  puts "                              |                                                     |"
  puts "                              |     Veuillez enregistrer votre mot de passe         |"
  puts "                              |                                                     |"
  puts "                               -----------------------------------------------------"
  puts " "
  puts " "
  print "                              > "

  user_registration = gets.chomp
  puts ""
  puts ""
  return user_registration
end

def login (user_registration)

  puts "                               -----------------------------------------------------"
  puts "                              |                                                     |"
  puts "                              |     Veuillez entrer  votre mot de passe             |"
  puts "                              |                                                     |"
  puts "                               -----------------------------------------------------"
  puts "                              |          vous êtes proche du hack....               |"
  puts "                               -----------------------------------------------------"
  puts " "
  puts " "
  print "                              > "
 
  password = gets.chomp
  puts""
  puts""
    while password != user_registration
      puts "            ========================   !!!!!!   Mot de passe incorrect   !!!!!!  ========================= "
      puts ""
      puts ""
      puts ""
      print "                        > "
      password = gets.chomp
      puts ""
      puts ""
  end
end

def welcome_screen
  sleep 1
  puts "   #################################       CHARGEMENT DES DONNEES SENSIBLES DE LA NASA     ##############################################"
  sleep 1
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  sleep 2
  puts " *********************************************     PREPARE TOI A CHANGER DE VIE     ***********************************************************"
  sleep 2
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "   
  puts "            o   o          "
  puts "             )-(           "
  puts "            (O O)                        ------------------------------------------   "
  puts "              \=/                        |                                          |"    
  puts "            .-|- .                      |        BIENVENUE A TOI Ô TERRIEN !       |"
  puts "           //\ /\\                        |                                          | "
  puts "         _// / \ \\_                       ------------------------------------------   "
  puts "        =./ {,-. } .="
  puts "            || ||          "
  puts "            || ||          "
  puts "          __|| ||__        "
  puts "         `---" "---'       "
  puts " "
  puts "                                         "
  puts "                                         "
  puts "       Tu cherches des                   "
  puts "         informations                   "
  puts "           classées                    "
  puts "             TOP                       "
  puts"           SECRETES ?                 "
  puts"                                      "
  puts " "
  puts " "
  puts " "
  puts " "
  puts " "
  puts "                                                    SAVAIS-TU QUE    ......."
  puts "                                 -----------------------------------------------------"
  puts " "
  puts " "
  puts " "
  sleep 1
  puts "                                       les colibris peuvent voler à reculons !"
  sleep 2
  puts " "
  puts " "
  puts "                           Certaines araignées peuvent devenir plus grosses en milieu urbain !!"
  sleep 2
  puts ""
  puts ""
  puts "                               Lorsque les chenilles se métamorphosent, elles se digèrent"
  puts "                          elles-mêmes en une sorte de soupe, puis se reforment en papillon ! Sisi "
  sleep 2
  puts ""
  puts ""
  puts "                               La plus grande colonie de chauves-souris du monde se trouve"
  puts "                         à Bracken Cave au Texas, et contient environ 20 millions de chauves-souris"
  sleep 2
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""
  puts ""

end

def perform
  user_registration = signup
  login (user_registration)
  welcome_screen
end

perform