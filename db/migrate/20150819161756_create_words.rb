class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :hanzi
      t.string :pinyin
      t.string :english
      t.timestamps
    end
  end
end
