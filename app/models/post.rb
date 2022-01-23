class Post < ApplicationRecord
  # como eu passei na migration o tipo author com reference o rails já adiciona o => belongs_to :author
  belongs_to :author
  #validação no titulo => validação de presença obrigatoria do title.
  #validação obrigatoria do tamanho do caracter minimo 3 maximo 200
  validates :title, presence: true, length: { minimum: 3, maximum: 200 }
  # validação content possa ser salvo com valor nulo.
  validates :content, allow_nil: true
  # que o publish_at, tambem possa ser salvo com o valor nulo.
  validates :publish_at, allow_nil: true
end
