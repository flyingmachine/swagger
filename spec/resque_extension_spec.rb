require 'spec/spec_helper'

describe 'Resque' do
  
  it 'swaps redis implementation with impersonator' do
    Resque.redis.should be_a(RedisImpersonator)
  end  
  
  it 'can connect to the database' do
    Resque.should.respond_to?(:connect_to_database)
  end
end
