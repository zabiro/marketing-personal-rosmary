class Pedido < ApplicationRecord

    has_many :solicitud
    belongs_to :tpedido
    belongs_to :estado, optional: true

    def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |pedido|
        csv << pedido.attributes.values_at(*column_names)
      end
    end
  end


def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    pedido = find_by_id(row["id"]) || new
    pedido.attributes = row.to_hash.slice(*row.to_hash.keys)
    pedido.save!
  end
end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
   when '.csv' then Roo::Csv.new(file.path)
   when '.xls' then Roo::Excel.new(file.path)
   when '.xlsx' then Roo::Excelx.new(file.path)
   else raise "Unknown file type: #{file.original_filename}"
  end
end

   
end
