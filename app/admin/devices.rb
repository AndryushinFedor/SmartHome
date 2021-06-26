ActiveAdmin.register Device do
  permit_params :tags, :title, :about, :price, :image, :user_id

  index do
    column :id
    column :title
    column :about
    column :tags
    column :price
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs 'Detalis' do
      f.input :title
      f.input :tags
      f.input :about
      f.input :price
      f.input :image
      f.input :user
    end

    f.actions
  end
end
