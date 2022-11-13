# Importação de arquivo
load 'menus.rb'
include Modules

option = 1
subtotal = 0
qtt_product = 0

hashProducts = {
  1 => 3000,
  2 => 1500,
  3 => 2800,
}

def calculateSubTotal (subtotal, products, code, quantity)
  subtotal += (products[code] * quantity)
  return subtotal
end

def returnToMenu
  print "\nDigite 0 para voltar ao menu inicial: "
  opc = gets.to_i

  if opc != 0  then 
    system "cls"
    print "Entrada inválida. Digite novamente: "
    opc = gets.to_i
  end

  return opc
end

# Loop Principal do Código
while option != 2
  system "cls"
  menu
  print "\nDigite a opção >>> "
  option = gets.to_i
  
  while option == 1
    system "cls"
    menu_products

    print "Opção: "
    cod_produto = gets.to_i

    print "Quantidade: "
    qtt_product = gets.to_i

    system "cls"

    subtotal = calculateSubTotal(subtotal, hashProducts, cod_produto, qtt_product)
    print "\nSubtotal: R$ #{subtotal}"

    option = returnToMenu
  end
end

system "cls"
puts "\nAté logo!!!"