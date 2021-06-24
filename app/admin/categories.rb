ActiveAdmin.register Category do
  permit_params :name, :description, :display_in_navbar

  index do
    column :id
    column :name
    column :description
    column :display_in_navbar
    actions
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs 'Detalis' do
      f.input :name
      f.input :description
      f.input :display_in_navbar
    end

    f.actions
  end
end
