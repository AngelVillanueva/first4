class ChangeJobsName < ActiveRecord::Migration
  def change
    rename_table :jobs, :professions
  end
end
