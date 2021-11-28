def proc(list_init, extract, ate, cont,cont_dimantes)

    while cont < ate do
    
    cont2 = cont+1
    
    if list_init[cont] == '<' and list_init[cont2] == '>'
    
        extract << list_init[cont]
        extract << list_init[cont2]
        list_init.delete_at(cont)
        list_init.delete_at(cont2)
        cont_dimantes += 1
    end

    cont += 1 

 end

 [list_init, extract, cont_dimantes]

end

list_init = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'.delete('.')


extract = []

list_init = list_init.split("")
ate = list_init.length
cont_dimantes = 0
cont = 0

result = proc(list_init, extract, ate, cont, cont_dimantes)
r = result[0].join("")



flag = true

while flag do

if r.include? "<>"

    result = proc(result[0], result[1], ate, cont, result[2])
    
else

    flag = false

end
r = result[0].join("")
end

puts result[2]
