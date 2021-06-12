class AddUserRefToProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :user, null: false, foreign_key: true
  end
end

rails g model studend_class studend_id:integer:index class_id:integer:index