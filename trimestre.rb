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

# 1
trimestre = ["Q1", "Q2", "Q3", "Q4"]
ventas_trimestre_values = []
ventas.each_slice(3) do |ventas_trimestre|
    sum = 0
    ventas_trimestre.each do |ventas_mes|
        sum += ventas_mes[1]
    end
    ventas_trimestre_values << sum
end

print trimestre.zip(ventas_trimestre_values).to_h

# o 2
trimestre = ["Q1", "Q2", "Q3", "Q4"]
ventas_trimestre_values = []

ventas.each_slice(3) do |ventas_trimestre_array|
    ventas_trimestre_values << ventas_trimestre_array.to_h.values.sum
end

print trimestre.zip(ventas_trimestre_values).to_h


