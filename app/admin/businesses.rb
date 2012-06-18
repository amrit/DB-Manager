ActiveAdmin.register Business do
  
  index do
    column :name
   # column :category
    column :manager
    column :email
    default_actions
  end
  

  
end
