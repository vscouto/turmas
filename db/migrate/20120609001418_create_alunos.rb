class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :matricula
      t.string :nome
      t.string :email

      t.timestamps
    end
  end
end
