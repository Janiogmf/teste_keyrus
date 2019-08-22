require 'httparty'

RSpec.describe 'Validar a api de cep' do
    
  it 'Deve retornar 200 para a request valida' do
    response = HttParty.get('/ws/04524030/json/')
    expect(response.code).to eql(200)
  end  

  it "Bairo deve retornar como Moema" do
    response = HttParty.get('/ws/04524030/json/')
    expect(response['bairro']).to eql("Moema")
  end
  it "Validar tipo de campos" do
    response = HttParty.get('/ws/04524030/json/')
    expect(response['cep']).to be_a_kind_of(String)
    expect(response["logradouro"]).to be_a_kind_of(String)
    expect(response["complemento"]).to be_a_kind_of(String)
    expect(response["bairro"]).to be_a_kind_of(String)
    expect(response["localidade"]).to be_a_kind_of(String)
    expect(response["uf"]).to be_a_kind_of(String)
    expect(response["unidade"]).to be_a_kind_of(String)
    expect(response["ibge"]).to be_a_kind_of(String)
    expect(response["gia"]).to be_a_kind_of(String)
  end
  
end