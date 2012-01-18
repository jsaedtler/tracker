class AddDefaultAdmin < ActiveRecord::Migration
  def up
    user = User.find_by_email('admin@example.com')
    User.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password') unless user
  end

  def down
    User.find_by_email('admin@example.com').destroy
  end
end
