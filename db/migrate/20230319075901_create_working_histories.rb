class CreateWorkingHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :working_histories do |t|

      t.timestamps
    end
  end
end
