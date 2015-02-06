class CreateMUsers < ActiveRecord::Migration
  def change
    create_table :m_users do |t|
      t.string :user_name, :limit => 128, :null => false, :default => 'No Name'
      t.string :password_digest, :limit => 255, :null => false, :default => 'No Pass'
      t.string :remember_token, :limit => 255
      t.integer :delete_flg, :limit => 1, :null => false, :default => 0

      t.timestamps
    end
  end
end
