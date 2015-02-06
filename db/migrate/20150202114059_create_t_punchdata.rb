class CreateTPunchdata < ActiveRecord::Migration
  def change
    create_table :t_punchdata do |t|
      t.integer :m_user_id
      t.string :card_identification_code
      t.string :access_control_kubun
      t.datetime :punch_time

      t.timestamps
    end
  end
end
