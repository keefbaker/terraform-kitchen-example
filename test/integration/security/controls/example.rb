# frozen_string_literal: true

control "check security group" do
  describe aws_security_group(attribute("security_group")) do
    it { should exist }
    it { should_not allow_in(port: 22, ipv4_range: '0.0.0.0/0') }
    it { should_not allow_in(port: 3389) }
    it { should allow_in(port: 666, ipv4_range: '10.0.0.0/8')}
    its('outbound_rules.count') { should cmp 0 }
    its('inbound_rules.count') { should cmp 1 }
  end
end

control "check s3 bucket" do
  describe aws_s3_bucket(attribute("bucket_name")) do
    it { should exist }
    it { should_not be_public }
    it { should have_default_encryption_enabled }
  end
end