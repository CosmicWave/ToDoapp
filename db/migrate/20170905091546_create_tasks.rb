class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|


    	t.string :title
    	t.text  :description
    	t.references :tasklist, foreign_key: true
    	t.datetime :due_at
    	t.string :priority
        t.string :status
    	
    	t.timestamps




    end
  end
end
