str = "Будете у нас на #Колыме? Нет, уж лучше #вы_к_нам"

regexp = /#[[:word:]-]+/

words = str.scan(regexp)

p words

# /[[:word:]]/  слово
