class CreateInscritos < ActiveRecord::Migration
  def change
    create_table :inscritos do |t|
      t.string :nome
      t.string :email
      t.string :sexo
      t.date :nascimento
      t.string :cpf
      t.string :equipe
      t.string :modalidade
      t.boolean :termo_responsabilidade
      t.string :camiseta

      t.timestamps null: false
    end
  end
end
