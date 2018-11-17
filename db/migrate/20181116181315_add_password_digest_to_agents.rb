class AddPasswordDigestToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :password_digest, :string
  end
end
