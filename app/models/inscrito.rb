class Inscrito < ActiveRecord::Base
  validates_acceptance_of :termo_responsabilidade, message: 'deve ser aceito', accept: true
  validates_presence_of :nome, :email, :sexo, :nascimento, :cpf, :modalidade, :camiseta, message: 'deve ser preenchido'
end
