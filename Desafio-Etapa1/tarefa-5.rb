#Tarefa - 5: Leia um número inteiro que representa um código de DDD para discagem 
#interurbana. Em seguida, informe à qual cidade o DDD pertence, considerando a tabela 
#abaixo: 

codigo = gets.to_i

case codigo
when  61
    puts "Brasília"

when 71
    puts "Salvador"

when 11 
    puts "Sao Paulo"

when 21
    puts "Rio de Janeiro"

when 32 
    puts "Juiz de Fora"
    
when 19
    puts "Campinas"
    
else
    puts "Codigo inválido"
end