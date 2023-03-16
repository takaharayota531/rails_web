class CreateUserCompanyRelationModelSelectionStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_company_relation_model_selection_statuses do |t|

      t.timestamps
    end
  end
end
