class CreateCompanyOveralls < ActiveRecord::Migration[7.0]
  def change
    create_table :company_overalls do |t|

      t.timestamps
    end
  end
end
