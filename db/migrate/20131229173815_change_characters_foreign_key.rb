class ChangeCharactersForeignKey < ActiveRecord::Migration
  def change
    rename_column :characters, :job_id, :profession_id
  end
end
