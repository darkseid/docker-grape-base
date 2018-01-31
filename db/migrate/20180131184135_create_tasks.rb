class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table(:tasks) do |t|
      t.string      :title,       null: false
      t.text        :description, null: false
      t.datetime    :created_at,  null: false
    end
  end
end
