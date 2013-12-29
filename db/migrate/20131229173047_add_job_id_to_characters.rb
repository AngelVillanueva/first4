class AddJobIdToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :job_id, :integer
  end
end
