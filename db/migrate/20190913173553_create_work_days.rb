class CreateWorkDays < ActiveRecord::Migration[5.2]
  def change
    create_table :work_days do |t|
      t.belongs_to :user, foreign_key: true
      t.timestamp :entry_at
      t.timestamp :departure_at

      t.timestamps
    end
  end
end
