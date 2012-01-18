class CreateRolesForCancan < ActiveRecord::Migration
  def up
    create_table :roles do |t|
      t.string :name
      t.timestamps
    end
    create_table :roles_users, :id => false do |t|
      t.references :role, :user
    end
    add_index :roles_users, [:role_id, :user_id]
    role = Role.create(:name => 'system_admin')
    User.first.roles << role
  end

  def down
    drop_table :roles
    drop_table :roles_users
  end
end
