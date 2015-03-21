class AdicionaTipoAoInscritos < ActiveRecord::Migration
  def change
      change_table :inscritos do |t|
          t.string :tipo
      end
  end
end
