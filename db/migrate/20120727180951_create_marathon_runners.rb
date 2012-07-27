class CreateMarathonRunners < ActiveRecord::Migration
  def change
    create_table :marathon_runners do |t|
      t.integer :marathon_id
      t.integer :runners_id

      t.timestamps
    end
  end
end
