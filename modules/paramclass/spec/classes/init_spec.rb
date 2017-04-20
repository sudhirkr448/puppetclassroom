require 'spec_helper'
describe 'paramclass' do
  context 'with default values for all parameters' do
    it { should contain_class('paramclass') }
  end
end
