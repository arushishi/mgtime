class CreateMUsers < ActiveRecord::Migration
  def change
    create_table :m_users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :remember_token
      t.integer :delete_flg

      t.timestamps
    end
  end
end
