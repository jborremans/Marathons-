class CreateMarathons < ActiveRecord::Migration
  def change
    create_table :marathons do |t|
      t.string :city
      t.date :date
      t.string :event_name

      t.timestamps
    end
  end
end
