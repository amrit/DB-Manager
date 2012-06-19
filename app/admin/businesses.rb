ActiveAdmin.register Business do
  
  index do
    column :name
    column :type
    column :manager
    column :email
    default_actions
  end
  

  
end
