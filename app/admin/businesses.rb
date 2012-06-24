ActiveAdmin.register Business, { :sort_order => :name_asc } do
  scope :all, :default => true do |businesses|
    businesses.includes [:type]
  end
  index do
    column :name
    column :type, :sortable => 'types.category'
    
    column :manager
    column :email
    default_actions
  end
  
      
  controller do
    def show
        @business = Business.find(params[:id])
        @versions = @business.versions 
        @business = @business.versions[params[:version].to_i].reify if params[:version]
        show! #it seems to need this
    end
  end
    sidebar :versionate, :partial => "layouts/version", :only => :show

#filter :name, :type, :manager
  
end
