class Aluno < ActiveRecord::Base
  attr_accessible :email, :matricula, :nome

  has_many :notas
  has_many :turmas, :through => :notas

  validates :email, :matricula, :nome, :presence => true
  validates :email, :uniqueness => true
end
