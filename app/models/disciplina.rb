class Disciplina < ActiveRecord::Base
  attr_accessible :codigo, :nome

  has_many :turmas

  validates :codigo, :nome, :presence => true
  validates :codigo, :uniqueness => true
end
