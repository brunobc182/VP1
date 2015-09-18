class CreateCadastros < ActiveRecord::Migration
  def change
    create_table :cadastros do |t|
      t.string :Nome
      t.text :Descricao
      t.string :Casa
      t.string :Mascote
      t.string :Rival
      t.string :Tecnico
      t.string :Cidade
      t.string :Estado

      t.timestamps null: false
    end
  end
end
