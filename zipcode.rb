require 'httparty'
class Zipcode
  
  class << self
    def search(zipcode)
      base_url = 'http://viacep.com.br/ws' 
      sanitized_zipcode = zipcode.gsub(/\D+/, '')
      return 'CEP INVÁLIDO' if sanitized_zipcode.size != 8
      begin
        response = HTTParty.get("#{base_url}/#{sanitized_zipcode}/json/")
        JSON.parse(response.body)
      rescue
        nil
      end
    end
  end
end