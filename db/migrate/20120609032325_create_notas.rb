class CreateNotas < ActiveRecord::Migration
  def change
    create_table :notas do |t|
      t.references :turma
      t.references :aluno
      t.float :g1, :default => 0
      t.float :g2, :default => 0
      t.float :g3, :default => 0

      t.timestamps
    end
    add_index :notas, :turma_id
    add_index :notas, :aluno_id
  end
end
