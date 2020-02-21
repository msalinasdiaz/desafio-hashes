userInput = ARGV[0].to_i

def busqueda(hash, cifras)   
    cifras.each do |i|
        counter = 0    
        hash.each do |k,v|
            if v == i
                puts k
            else
                counter += 1  
            end   
        end
        if counter == hash.count 
            puts "no encontrado"   
        end   
    end   
end

userInput = ARGV[0].to_i
cifras = [] 
ARGV.each do |numero|
    cifras.push numero.to_i
end

ventas = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 20000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
}

busqueda(ventas, cifras)

