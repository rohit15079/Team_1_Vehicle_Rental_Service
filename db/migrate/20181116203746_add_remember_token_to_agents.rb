class AddRememberTokenToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :remember_token, :string
    add_index  :agents, :remember_token
  end
end
