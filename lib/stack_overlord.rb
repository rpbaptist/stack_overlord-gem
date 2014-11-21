require "stack_overlord/version"

module Stackoverlord
at_exit do
  stack_master = Overlord.new($!) if $!
  stack_master.run
end

class Overlord
  def initialize(collected_error)
    p collected_error
    @mash = Mac.addr.encrypt
    @error = {message: collected_error.message, error_class: collected_error.class, mash: @mash}
  end


  def post_message
    error = @error.to_json
    RestClient.post "http://localhost:3000/addresses/#{@mash}/gawks", error, :content_type => :json, :accept => :json
  end

  def puts_link
    puts "Your Overlord resides here: http://localhost:3000/#{@mash}"
  end

  def run
    self.puts_link
    self.post_message
  end

end
end
