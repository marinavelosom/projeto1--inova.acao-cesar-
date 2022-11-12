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
  opc = gets.chomp.to_i
  opc
end

# Loop Principal do Código
while option != 2
  system "cls"
  menu
  option = gets.to_i
  break if option == 2
  
  while option == 1
    system "cls"
    menu_products

    print "Opção: "
    cod_produto = gets.to_i

    print "Quantidade: "
    qtt_product = gets.to_i

    system "cls"
    puts "Valor do Produto: #{hashProducts[cod_produto]}"
    puts "Quantidade Produto: #{qtt_product}"

    subtotal = calculateSubTotal(subtotal, hashProducts, cod_produto, qtt_product)
    print "\nSubtotal: R$ #{subtotal}"

    option = returnToMenu
  end
end

system "cls"
puts "Até logo!!!"