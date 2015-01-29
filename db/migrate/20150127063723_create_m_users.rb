class CreateMUsers < ActiveRecord::Migration
  def change
    create_table :m_users do |t|
      t.comment 'ユーザマスタ'
      t.string :user_name, :limit => 128, :null => false, :default => 'No Name', :comment => 'ユーザ名'
      t.string :password_digest, :limit => 255, :null => false, :default => 'No Pass', :comment => '暗号化パスワード'
      t.string :remember_token, :limit => 255, :comment => 'ログイン状態保持トークン'
      t.integer :delete_flg, :limit => 1, :null => false, :default => 0, :comment => '削除フラグ'

      t.timestamps
    end
  end
end
