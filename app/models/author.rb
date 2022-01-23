class Author < ApplicationRecord
# o que vem depois do método validates é o que você vai validar.
# colocando presence true, estou colocando o seu campo como obrigátorio.
# não será registrado na base de dados um autor que não possua um firts_name, last_name
# outra validação o tamanho do campo deve ser no minimo 2 e no maximo 100
  validates :first_name, presence: true, length: { minimum: 2, maximum: 100 }
# se passar um valor nulo será salvo => allow_nil, mai uma validação de tamanho que no maximo seja 500
  validates :description, allow_nil: true, length: { maximum: 500 }

# depois que ocorrer a validação acima, será usado o callback
# vou transformar o last_name em titulos
# isto é um callback => after_validation vai ocorrenr depois da validação acima.
# faço uma verificação o ultimo nome do author esta presente |a| a.last_name.present? 
# se estiver presente execultamos o nosso callback
# caso não esteja presente não será execultado e não trará nenhum erro. sempre olhando =>  validates :last_name
#restringir o callback apenas para operações => create => on: :create
after_validation :titleize_last_name, if: Proc.new { |a| a.last_name.present? }, on: :create

#relacionamento entre model com o belongs_to :author 
#o author tem um endereço eo endereço pertence ao author
#banco de dados forienk
#dependent: :destroy => sempre que um author for excluido o seu endereço tambem será excluido.
#se tirar o comentario será habilitado o relacionamento has_one.
#has_one :address, dependent: :destroy
#=============================Outro exemplo de relacionamento========================
#outro exemplo um author não vai mais ter apenas um endereço, agora ele terá varios endereço.
#se um author terá mais de um endereço, então teremos usaremos has_many
#dependent: :destroy => sempre que um author for excluido o seu endereço tambem será excluido.
has_many :addresses, dependent: :destroy

#adicionar a relação post => mas sempre lembrar no plural :posts
#o author terá mais de um posts
has_many :posts

private
def titleize_last_name
#  titleize é um método do ruby on rails => vai transformar as primeiras letras em maiusculas e as outras em minusculas.
 # last_name é um atributo do model author, estou acessando com o self.
  self.last_name = last_name.titleize   
 end
end
