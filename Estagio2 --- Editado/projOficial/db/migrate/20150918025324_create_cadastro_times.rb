class CreateCadastroTime < ActiveRecord::Migration
  def change
    create_table :cadastro_time do |t|
      t.string :Nome
      t.text :Descricao
      t.string :Casa
      t.string :Mascote
      t.string :Rival
      t.string :Tecnico
      t.string :Cidade
      t.references :Estado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
