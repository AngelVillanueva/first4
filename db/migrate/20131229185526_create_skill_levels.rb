class CreateSkillLevels < ActiveRecord::Migration
  def change
    create_table :skill_levels do |t|
      t.belongs_to :character
      t.belongs_to :skill
      t.integer :percent

      t.timestamps
    end
  end
end
