class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.boolean :extended, default: false

      t.timestamps
    end
  end
end
