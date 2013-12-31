# rake feeder:all
# rake RAILS_ENV=test feeder:all

require 'csv'

namespace :feeder do
  desc 'Feeding Habilidades'
  task :habilidades => :environment do
    Skill.delete_all
    CSV.foreach("#{Rails.root}/db/seeds/skills.csv") do |row|
      sk = Skill.new
      sk.name = row[0]
      sk.base = row[1]
      sk.save!
    end
  end

  desc 'Feeding Profesiones'
  task :profesiones => :environment do
    Profession.delete_all
    CSV.foreach("#{Rails.root}/db/seeds/professions.csv") do |row|
      prof = Profession.new
      prof.name = row[0]
      prof.extended = row[1]
      prof.save!
    end
  end

  desc 'Run all feedings'
  task :all => [:habilidades, :profesiones]
  
  task :default => :all
end