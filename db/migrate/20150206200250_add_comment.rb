class AddComment < ActiveRecord::Migration
  change_table :m_cards do |t|
    t.change_comment :id, 'ID'
    t.change_comment :created_at, '作成日時'
    t.change_comment :updated_at, '修正日時'
  end
  change_table :m_users do |t|
    t.change_comment :id, 'ID'
    t.change_comment :created_at, '作成日時'
    t.change_comment :updated_at, '修正日時'
  end
  add_index(:m_users, [:remember_token])
  change_table :t_correcteddata do |t|
    t.change_comment :id, 'ID'
    t.change_comment :created_at, '作成日時'
    t.change_comment :updated_at, '修正日時'
  end
  change_table :t_punchdata do |t|
    t.change_comment :id, 'ID'
    t.change_comment :created_at, '作成日時'
    t.change_comment :updated_at, '修正日時'
  end
end
