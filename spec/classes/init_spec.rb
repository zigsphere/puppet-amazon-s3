require 'spec_helper'
describe 'amazon_s3' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('amazon_s3') }
  end
end
