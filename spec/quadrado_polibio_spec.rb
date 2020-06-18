require 'spec_helper'

describe PolybiusSquare do
  it 'initialize matrix' do
    polybius = PolybiusSquare.new(6)

    expect(polybius.polybius[1][1]).to include('a') 
  end

  it 'encrypt polibio' do
    poly = PolybiusSquare.encrypt(6, 'polibio')
    
    expect(poly).to include('34332623122333')
  end

  it 'decrypt 34332623122333' do
    poly = PolybiusSquare.decrypt(6, '34332623122333')

    expect(poly).to include('polibio')
  end

  it 'encrypt 1 anel para a todos governar' do
    poly = PolybiusSquare.encrypt(6, '1 anel para a todos governar')
    
    expect(poly).to include('5411321526341136111142331433412133441536321136')
  end

  it 'decrypt 5411321526341136111142331433412133441536321136' do
    poly = PolybiusSquare.decrypt(6, '5411321526341136111142331433412133441536321136')

    expect(poly).to include('1anelparaatodosgovernar')
  end

  it 'encrypt Ada Lovelace foi a primeira programadora em 1842' do
    poly = PolybiusSquare.encrypt(6, 'Ada Lovelace foi a primeira programadora em 1842')
    
    expect(poly).to include('11141126334415261113151633231134362331152336113436332136113'\
                            '11114333611153154656155')
  end

  it 'decrypt 11141126334415261113151633231134362331152336113436332136113'\
     '11114333611153154656155' do
    poly = PolybiusSquare.decrypt(6, '11141126334415261113151633231134362331152336113436332136113'\
                                     '11114333611153154656155')

    expect(poly).to include('adalovelacefoiaprimeiraprogramadoraem1842')
  end
end
