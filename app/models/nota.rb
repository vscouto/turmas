class Nota < ActiveRecord::Base
  belongs_to :turma
  belongs_to :aluno
  attr_accessible :turma_id, :aluno_id, :g1, :g2, :g3

  validates_presence_of :aluno
  validates_presence_of :turma
  validates_presence_of :g1, :g2, :g3

  # Valida um aluno por turma
  validates :aluno_id, :uniqueness => { :scope => :turma_id }

  validates :g1, :g2, :g3, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10 }

end
