class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title,         null: false
      t.text :catch_copy,      null: false
      t.text :concept,         null: false
      t.references :user, foreign_key: true
      # ↑references:userによりuser_idカラム作成 →テーブル同士の結びつきを作るものである
    # foreign key trueは外部キー（他のテーブルとの結びつき）がないとDBへ保存できないようにしている
      t.timestamps
    end
  end
end
