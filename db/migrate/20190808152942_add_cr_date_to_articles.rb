class AddCrDateToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :crdate, :date
  end
end
