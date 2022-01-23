class RemoveDescriptionFromAuthor < ActiveRecord::Migration[6.1]
  def change
    # tabela que ele vai remover a coluna authors e o campo description e o tipo string
    remove_column :authors, :description, :string
  end
end
