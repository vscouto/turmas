class Turma < ActiveRecord::Base
  attr_accessible :codigo, :creditos, :disciplina_id, :professor_id, :semestre

  belongs_to :disciplina
  belongs_to :professor
  has_many :alunos, :through => :notas

  validates_presence_of :disciplina
  validates_presence_of :professor

  validates :codigo, :creditos, :semestre, :presence => true
end
