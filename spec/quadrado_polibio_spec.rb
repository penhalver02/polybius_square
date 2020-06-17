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

  xit 'encrypt 1 anel para todos governar' do
  end

  xit 'decrypt 5411321526341136111142331433412133441536321136' do
  end

  xit 'encrypt Ada Lovelance foi a primeira programadora em 1842' do
  end

  xit 'decrypt 11141126334415261113151633231134362331152336113436332136113'\
     '11114333611153154656155' do
  end
end
