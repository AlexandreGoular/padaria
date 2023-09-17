puts ("Deseja ir na Padaria? ")
ir = gets.chomp
if (ir == "s")
  puts ("Menu: ")
  puts ("[1] Pão 0.70R$ Unidade")
  puts ("[2] Café 1Kg 25R$")
  puts ("[3] Tortuguita 1.25R$ Unidade")
  puts ("Vai querer algo? ")
  algo = gets.chomp
  if (algo == "s")
    mais = "s"
    precoPao = 0
    precoCafe = 0
    precoTortuguita = 0
    while (mais != "n")
      puts ("Oque deseja: ")
      desejo = gets.chomp.to_i
      case desejo
      when 1
        puts ("Quantos Pães: ")
        unidadePao = gets.chomp.to_i
        precoPao += unidadePao * 0.70
      when 2
        puts ("Quantos pacotes de Café: ")
        unidadeCafe = gets.chomp.to_i
        precoCafe += unidadeCafe * 25
      when 3
        puts ("Quantas tortuguitas deseja: ")
        unidadeTortuguita = gets.chomp.to_i
        precoTortuguita += unidadeTortuguita * 1.25
      end
      puts ("Algo +? S/N")
      mais = gets.chomp
    end
    preco = precoPao + precoCafe + precoTortuguita
    puts ("O preço total da Compra ficou #{preco}R$")
  end
end
