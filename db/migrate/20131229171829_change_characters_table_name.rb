class ChangeCharactersTableName < ActiveRecord::Migration
  def change
    rename_table :personajes, :characters
  end
end
