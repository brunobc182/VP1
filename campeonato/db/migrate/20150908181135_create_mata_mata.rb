class CreateMataMata < ActiveRecord::Migration
  def change
    create_table :mata_mata do |t|
      t.string :nome_camp
      t.string :modalidade
      t.integer :competidores

      t.timestamps null: false
    end
  end
end
