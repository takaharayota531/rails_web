class CreateInternshipJobCategoryRelations < ActiveRecord::Migration[7.0]
  def change
    create_table :internship_job_category_relations do |t|

      t.timestamps
    end
  end
end
