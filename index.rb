# Projeto 1 - Inova.Ação | Cesar
# falta criar blocos e adicionar a função de voltar para o menu inicial e incrementar os subtotais

puts "Selecione a opção desejada: "
puts "[1] Comprar"
puts "[2] Sair"
  
option = gets.to_i

if option == 1 then
  system "cls"
  puts "Selecione a opção desejada:"
  puts "[1] Produto A: R$ 50,00"
  puts "[2] Produto A: R$ 100,00"
  puts "[3] Produto A: R$ 200,00"
  product = gets.to_i
  system "cls"

  puts "Digite a quantidade desejada: "
  quantity = gets.to_i

  if product == 1 then 
    subtotal = 50 * quantity
  elsif product == 2 then 
    subtotal = 100 * quantity
  elsif product == 3 then
    subtotal = 200 * quantity
  else 
    puts "Opção inválida"
  end
  system "cls"

  puts "Subtotal: R$ #{subtotal}"

  # puts "Digite 0 para voltar ao menu inicial: "
  # back = gets.to_i

elsif option == 2 then
  system "cls"
  puts "Até breve!!! :)"
  return 1
else 
  system "cls"
  puts "Opção inválida."
end


