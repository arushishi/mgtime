class CreateMCards < ActiveRecord::Migration
  def change
    create_table :m_cards do |t|
      t.comment 'カードマスタ'
      t.string :card_identification_code, :limit => 32, :null => false, :default => 'No ID CODE', :comment => 'カード識別コード'
      t.string :user_id, :limit => 32, :null => false, :default => 'No User', :comment => 'ユーザID'
      t.integer :delete_flg, :limit => 1, :null => false, :default => 0, :comment => '削除フラグ'

      t.timestamps
    end
  end
end
