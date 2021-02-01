class UpdateColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :username, :personal_data
    change_column :users, :personal_data, :jsonb, using: 'personal_data::text::jsonb'
  end
end
