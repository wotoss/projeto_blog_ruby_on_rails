class AddDescriptionToAuthor < ActiveRecord::Migration[6.1]
  def change
    #adicionou na tabela autor a coluna description e o tipode dado é integer.
    add_column :authors, :description, :string
  end
end
