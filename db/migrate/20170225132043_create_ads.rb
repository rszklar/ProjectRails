class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.text :desc
      t.integer :tel
      t.string :name

      t.timestamps
    end
  end
end
