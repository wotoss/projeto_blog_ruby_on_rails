class Address < ApplicationRecord
# estou definindo que o meu model => addresses pertence ao author 
# estou definindo que o endereço pertençe ao author
#relacionamento entre model com o belongs_to :author 
#o author tem um endereço eo endereço pertence ao author
  belongs_to :author  
end
