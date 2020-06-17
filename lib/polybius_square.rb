class PolybiusSquare
  
  attr_accessor :polybius
  def initialize(number)
    alphanum = 'abcdefghijklmnopqrstuvwxyz0123456789'
    aux = alphanum.split('')
    @polybius = Array.new(number+1){Array.new(number+1)}
    cont = 0
    
    for i in 1..number do
      for j in 1..number do
        @polybius[i][j] = cont >= aux.length ? '' : aux[cont]
        cont += 1
      end
    end
    self.polybius = @polybius
    
  end

  def self.encrypt(number, word)
    polybius = PolybiusSquare.new(number)
    word = word.split('')
    aux = ''
    word.each do |letter|
      for i in 1..number do
        for j in 1..number do
          if letter == polybius.polybius[i][j]
            aux << i.to_s + j.to_s
          end
        end
      end
    end
    aux
  end
end