require 'spec_helper'
describe 'common_resources' do

  context 'with defaults for all parameters' do
    it { should contain_class('common_resources') }
  end
end
