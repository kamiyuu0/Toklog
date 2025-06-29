class ChangeColumnUsersName < ActiveRecord::Migration[7.2]

  def up

    # 既存のレコードに現在の時間を設定する
    execute "UPDATE users SET name = 'testname' WHERE name IS NULL"

    # null: false制約を適用する
    change_column :users, :name, :string, null: false
  end

  def down
    remove_column :users, :name
  end
end
