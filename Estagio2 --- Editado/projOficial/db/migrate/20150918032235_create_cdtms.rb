class CreateCdtms < ActiveRecord::Migration
  def change
    create_table :cdtms do |t|
      t.string :Nome
      t.text :Descricao
      t.string :Casa
      t.string :Mascote
      t.string :Rival
      t.string :Tecnico
      t.string :Cidade
      
      t.timestamps null: false
    end
  end
end
