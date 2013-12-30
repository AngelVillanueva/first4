class CreateProfessionsSkills < ActiveRecord::Migration
  def change
    create_table :professions_skills do |t|
      t.belongs_to :profession
      t.belongs_to :skill
    end
  end
end
