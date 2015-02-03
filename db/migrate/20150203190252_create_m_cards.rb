class CreateMCards < ActiveRecord::Migration
  def change
    create_table :m_cards do |t|
      t.comment '�J�[�h�}�X�^'
      t.string :card_identification_code, :limit => 32, :null => false, :default => 'No ID CODE', :comment => '�J�[�h���ʃR�[�h'
      t.string :user_id, :limit => 32, :null => false, :default => 'No User', :comment => '���[�UID'
      t.integer :delete_flg, :limit => 1, :null => false, :default => 0, :comment => '�폜�t���O'

      t.timestamps
    end
  end
end
