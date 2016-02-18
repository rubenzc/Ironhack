require "httparty"
require "json"

class R4Client
  def initialize
    @base_url = "http://api.rtve.es/api"
    @radio3_id = "849"
  end

  def get_programs(page)
    url = @base_url+'cadenas/'+@radio3_id+'/programas.json?'page.to_s
    response = HTTParty.get(url)
    JSON.parse (response.body)['page']
  end
end