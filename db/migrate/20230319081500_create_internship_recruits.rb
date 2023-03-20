class CreateInternshipRecruits < ActiveRecord::Migration[7.0]
  def change
    create_table :internship_recruits do |t|

      t.timestamps
    end
  end
end
