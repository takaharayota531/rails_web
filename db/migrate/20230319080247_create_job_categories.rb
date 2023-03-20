class CreateJobCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :job_categories do |t|

      t.timestamps
    end
  end
end
