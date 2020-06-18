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
    word = word.gsub(' ','').downcase
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

  def self.decrypt(number, encrypt)
    poly = PolybiusSquare.new(number)
    encrypt = encrypt.scan(/../)
    aux = ''
    encrypt.each do |nn|
      for i in 1..number do
        for j in 1..number do
          if nn == i.to_s + j.to_s
            aux << poly.polybius[i][j]
          end
        end
      end
    end
    aux
  end
end