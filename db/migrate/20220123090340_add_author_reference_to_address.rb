class AddAuthorReferenceToAddress < ActiveRecord::Migration[6.1]
  def change   
    #fazendo foreink
    #comando aplicado => rails g migration AddAuthorReferenceToAddress author:references
    #add_reference => vamos adiconar a referencia dentro de addresses seria tabela de endereço.
    #e qual é esta referencia é author, nós não vamos aceitar valor nullo, e esta referencia é uma chave estrngeira.
    add_reference :addresses, :author, null: false, foreign_key: true
  end
end
