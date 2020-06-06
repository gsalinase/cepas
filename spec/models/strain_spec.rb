require 'rails_helper'

RSpec.describe Strain, type: :model do
  # Que las cepas no pueden tener el mismo nombre 
  it "don't have the same name" do
    Strain.create(name: 'syrah')
    strain = Strain.create(name: 'syrah')

    expect(strain).to_not be_valid
  end

  # Una cepa no puede tener un nombre vacio, probar 3 casos
  # nombre = nil
  it "never is nil" do
    strain = Strain.create(name: nil)

    expect(strain).to_not be_valid
  end

  # nombre = “”
  it "never is empty string" do
    strain = Strain.create(name: '')

    expect(strain).to_not be_valid
  end

  # nombre “Carmenere”
  it "always have a name" do
    strain = Strain.create(name: 'Carmenere')

    expect(strain).to be_valid
  end
end
