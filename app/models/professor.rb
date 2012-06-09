class Professor < ActiveRecord::Base
  attr_accessible :cgu, :nome
  has_many :turmas

  validates :cgu, :nome, :presence => true
end
