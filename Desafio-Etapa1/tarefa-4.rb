#Tarefa - 4: Faça o somatório da sua data de nascimento.


data_inicial = gets.split("/").map { |d| d.to_i }
ano = data_inicial[-1].to_s
ano_nascimento = []
ano.each_char { |a| ano_nascimento << a.to_i }
data_nascimento = data_inicial[0], data_inicial[1], *ano_nascimento

puts "#{data_nascimento[0]} + #{data_nascimento[1]} + #{data_nascimento[2]} + #{data_nascimento[3]} + #{data_nascimento[4]} + #{data_nascimento[5]} = #{data_nascimento.reduce(:+)} "






