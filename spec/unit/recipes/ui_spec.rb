require 'spec_helper'

describe_recipe 'consul::ui' do
  it { expect(chef_run).to include_recipe('ark::default') }
  it { expect(chef_run).to put_ark('consul_ui').with(path: '/var/lib/consul/ui', version: '0.3.1') }
end