require 'csv'
class CsvDb
  class << self
    
   
    
    def convert_save(model_name, csv_data)
      csv_file = csv_data.read
      
      CSV.parse(csv_file, {:headers => true}) do |row|
        target_model = model_name.classify.constantize
        new_object = target_model.new
        column_iterator = -1
        target_model.column_names.each do |key|
          column_iterator += 1
        
          unless key == "id"
            value = row[column_iterator]
            
            new_object.send "#{key}=", value
          
        end
        end
        new_object.save
      end
    end
  end
end
