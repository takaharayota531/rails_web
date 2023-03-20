class CreateUserResumes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_resumes do |t|

      t.timestamps
    end
  end
end
