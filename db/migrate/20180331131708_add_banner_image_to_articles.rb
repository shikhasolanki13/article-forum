class AddBannerImageToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :banner_image, :string
  end
end
