json.array!(@inscritos) do |inscrito|
  json.extract! inscrito, :id, :nome, :email, :sexo, :nascimento, :cpf, :equipe, :modalidade, :termo_responsabilidade, :camiseta
  json.url inscrito_url(inscrito, format: :json)
end
