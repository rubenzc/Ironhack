require "radio3/version"
require "radio3/r3_client"

module Radio3
  def self.get_programs(page)
    data = r3_client.new.get_programs(page)
    data['items'].each do |item|
      puts item ['name'] + ': ' + item['id']
    end
  end

end
