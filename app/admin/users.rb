ActiveAdmin.register User do
  permit_params :email, :username, :state, :isadmin, :password
  actions :all, except: %i[new create]

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs 'Detalis' do
      f.input :email
      f.input :username
      f.input :state, as: :select, collection: ['active', 'banned']
      f.input :isadmin
    end

    f.actions
  end
end
