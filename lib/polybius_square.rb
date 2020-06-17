class PolybiusSquare
  require 'pry'
  attr_reader :polybius
  def initialize(number)
    alphanum = 'abcdefghijklmnopqrstuvwxyz0123456789'
    aux = alphanum.split('')
    @polybius = Array.new(number+1){Array.new(number+1)}
    cont = 0
    puts number
    for i in 1..number do
      for j in 1..number do
        @polybius[i][j] = cont >= aux.length ? '' : aux[cont]
        cont += 1
      end
    end
  end

end