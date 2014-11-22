require 'spec_helper'
require 'stack_overlord'
require "macaddr"
require "encrypted_strings"
require "json"
require "rest_client"


describe Overlord do

let!(:test_lord) {Overlord.new(NoMethodError.new)}

    describe '#self.make_overlord' do
      it 'should make a new Overlord then run that overlord. This method is called by module StackOverLord at exit if $! is present.' do
      end
    end


  describe '#initialize' do
    it 'sets attr_reader @error to a hash with keys message and error_class and values from the error' do
      expect(test_lord.error[:message]).to be_a(String)
      expect(test_lord.error[:error_class]).to be(NoMethodError)
    end
  end

  describe '#mash' do
   it 'returns an encrypted MAC address' do
    # test_lord = Overlord.new(NoMethodError.new)
      expect(test_lord.mash).to be_a(String)
    end
  end

  describe '#post_message' do
    it 'should send the errors to our server as json' do
  #     RestClient = double
  #     response = double
  #     response.stub(:code) { 200 }
  #     RestClient.stub(:post) { response }
  #     expect(test_lord.post_message).to exist
    end
  end

  describe '#puts_link' do
    it 'should diplay the url of server/mash in the terminal' do
      expect{test_lord.puts_link}.to output.to_stdout
    end
  end

  describe '#run' do
    it 'should call self.post_message and self.puts_link' do
      # expect(subject).to receive(:post_message)
      # expect(test_lord).to receive(:puts_link)
    end
  end

end
