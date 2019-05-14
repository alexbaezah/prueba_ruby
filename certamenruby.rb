def read_alum(file_name)
    file = File.open(file_name, 'r')
    alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
    file.close
    alum
    end

    def promedio
        array = read_alum('alumnos.csv')
        array.each_with_index do |alumno, notas|
            suma = 0
            a = 0
            alumno.each_with_index do |nom, foo|
                if foo != 0
                    suma += nom.to_f
                    a += 1
                end
            end
            puts "Alumno: #{alumno[0]} --promedio : #{suma.to_f/a} "
        end
end

def aprobados
    array = read_alum('alumnos.csv')
    array.each_with_index do |alumno, notas|
        suma = 0
        a = 0
        alumno.each_with_index do |nom, foo|
            if foo != 0
                suma += nom.to_f
                a += 1
            
            end
        end
        b = suma.to_f/a 
        if b >= 5 
        puts "Alumno: #{alumno[0]} aprobó con promedio : #{b} "
        else 
         puts "Alumno: #{alumno[0]} no aprobó con promedio : #{b} " 
    end
end
end

condicion = 0
while condicion != 4
puts 'Ingresa una opcion'
    puts '1)Promedio de alumnos'
    puts '2)Asistencia alumnos'
    puts '3)Alumnos aprobados'
    puts '4)Salir de menu'
    condicion = gets.chomp.to_i 
            
    case condicion
    when 1
      promedio
            
    when 2
      puts 'asistencia'
    when 3
      puts 'alumnos aprobados'
      aprobados
    when 4
        puts 'Adios'
    end

  end