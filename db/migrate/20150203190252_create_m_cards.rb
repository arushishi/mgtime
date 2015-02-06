class CreateMCards < ActiveRecord::Migration
  def change
    create_table :m_cards do |t|
      t.string :card_identification_code
      t.string :m_user_id
      t.integer :delete_flg

      t.timestamps
    end
  end
end
