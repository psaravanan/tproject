class AddFieldToFacebook < ActiveRecord::Migration
  def change
    add_column :facebooks, :email, :string
    add_column :facebooks, :password, :string
  end
end
