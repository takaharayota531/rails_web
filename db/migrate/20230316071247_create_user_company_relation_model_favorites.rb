class CreateUserCompanyRelationModelFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :user_company_relation_model_favorites do |t|

      t.timestamps
    end
  end
end
