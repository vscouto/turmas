class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :codigo
      t.string :semestre
      t.integer :creditos
      t.references :disciplina
      t.references :professor

      t.timestamps
    end
  end
end
