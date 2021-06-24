ActiveAdmin.register Post do
  permit_params :tags, :title, :content, :color, :author, :image, :user_id, :category_id, :device_ids

  index do
    column :id
    column :title
    column :tags
    column :created_at
    column :updated_at
    column :user
    column :category
    column :is_main
    actions
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs 'Detalis' do
      f.input :title
      f.input :tags
      f.input :category
      f.input :content, as: :ckeditor
      f.input :author
      f.input :image
      f.input :color, as: :select, collection: ['green', 'orange', 'purple', 'red']
      f.input :user_id, as: :select, collection: User.all.map { |u| [u.username, u.id] }, include_blank: false
      f.input :devices, as: :select
    end

    f.actions
  end
end
