class AddCompletedAtToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :completed_at, :date
  end
end
