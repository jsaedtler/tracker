class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.text :content, :limit => 4.gigabytes - 1

      t.timestamps
    end

    create_table :campaigns_scripts, :id => false do |t|
      t.integer :campaign_id
      t.integer :script_id
    end
    add_index :campaigns_scripts, [:campaign_id, :script_id]

    create_table :events_scripts, :id => false do |t|
      t.integer :event_id
      t.integer :script_id
    end
    add_index :events_scripts, [:event_id, :script_id]

  end
end
