opc = 1
subtotal = 0
codigo_produto = ""
qtd_produto = 0

produtos = {
  1 => 3000,
  2 => 1500,
  3 => 2800,
}

# Loop Principal do Código
while opc != 2
  puts "Selecione a opção desejada: "
  puts "[1] Comprar "
  puts "[2] Sair "
  opc = gets.to_i
  break if opc == 2
  
  opc_compra = 1
  while opc_compra != 0
    puts "Selecione a opção desejada: "
    puts "[1] Notebook: R$ 3000,00 "
    puts "[2] Celular: R$ 1500,00 "
    puts "[3] Tablet: R$ 2800,00 "
    puts "\n"

    print "Opção: "
    cod_produto = gets.to_i

    print "Quantidade: "
    qtd_produto = gets.to_i

    puts "Valor do Produto: #{produtos[cod_produto]}"
    puts "Quantidade Produto: #{qtd_produto}"

    subtotal += (produtos[cod_produto] * qtd_produto)
    print "\nSubtotal: R$ #{subtotal}"

    print "\nDigite 0 para voltar ao menu inicial: "
    opc_compra = gets.to_i 
  end
end

puts "Até logo!!!"