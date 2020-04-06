class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.string :location
      t.string :time
      t.string :date
      t.string :img_src

      t.timestamps
    end
  end
end
