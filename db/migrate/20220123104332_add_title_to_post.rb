class AddTitleToPost < ActiveRecord::Migration[6.1]
  def change
    #esta criando a tabela posts e a coluna title
    add_column :posts, :title, :string
  end
end
