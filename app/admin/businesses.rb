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
      
    end
  end
    sidebar :versionate, :partial => "layouts/version", :only => :show

#filter :name, :type, :manager
  
  #############

    action_item :only => :index do
      link_to 'Upload CSV', :action => 'upload_csv'
    end

    collection_action :upload_csv do
      render "admin/csv/upload_csv"
        # The method defaults to :get
        # By default Active Admin will look for a view file with the same
        # name as the action, so you need to create your view at
        # app/views/admin/posts/upload_csv.html.haml (or .erb if that's your weapon)
    end

    collection_action :import_csv, :method => :post do
        CsvDb.convert_save("businesses", params[:dump][:file])
        redirect_to :action => :index, :notice => "CSV imported successfully!"
    end



  #################
  
end
