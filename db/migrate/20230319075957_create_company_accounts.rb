class CreateCompanyAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :company_accounts do |t|

      t.timestamps
    end
  end
end
