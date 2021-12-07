class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.datetime :data_nascimento
      t.string :telefone

      t.timestamps
    end
  end
end
