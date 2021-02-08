require 'csv'

namespace :user do

  desc "import user"
  task :import, [:filename] => [:environment] do |t, args|
  
  csv_text = File.read(args[:filename])
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
  User.create!(row.to_hash)
  end
  end
  
  desc "export user"
  task :export => :environment do

  CSV.open("data.csv","w") do |wr|
    #wr << ["first_name", "last_name", "personal_data", "password", "email", "birthday"]

    User.all.each {|x| wr <<  [x.first_name, x.last_name, x.personal_data, x.password, x.email, x.birthday]}

end
end
end
