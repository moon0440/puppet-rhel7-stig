require 'spec_helper'
describe 'rhel7stig' do

  context 'with defaults for all parameters' do
    it { should contain_class('rhel7stig') }
  end
end
