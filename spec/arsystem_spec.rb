require "spec_helper"

describe Arsystem do
  context "arsystem" do
    before(:all) {
      config = {
        :username => 'Demo',
        :password => '',
        :server => '192.168.56.1',
        :locale => '',
        :port => 20000,
      }
      @user = Arsystem::ARServerUser.new(
        config[:username],
        config[:password],
        config[:locale],
        config[:server],
        config[:port])
    }
    
    after(:all) { @user.logout }
    
    context "initialize" do
      it "should return version staring with a number" do
        @user.getServerVersion.should eql "8.1.00 201301251157"
      end
    end
    
  end
end