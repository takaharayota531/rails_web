class CreateInternships < ActiveRecord::Migration[7.0]
  def change
    create_table :internships do |t|

      t.timestamps
    end
  end
end
