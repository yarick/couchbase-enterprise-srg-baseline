# encoding: UTF-8

control "V-58099" do
  title "Couchbase must generate audit records when categories of information
  (e.g., classification levels/security levels) are modified."
  desc  "Changes in categories of information must be tracked. Without an audit
  trail, unauthorized access to protected data could go undetected.

  For detailed information on categorizing information, refer to FIPS
  Publication 199, Standards for Security Categorization of Federal Information
  and Information Systems, and FIPS Publication 200, Minimum Security
  Requirements for Federal Information and Information Systems.
  "
  desc  "check", "
  Review Couchbase documentation to verify that audit records can be produced when 
  categories of information are modified.

  If Couchbase is not capable of this, this is a finding.

  Review the Couchbase database security and audit configurations to verify that audit 
  records are produced when categories of information are modified.

  If they are not produced, this is a finding.
  "
  desc  "fix", "
  Deploy a Couchbase database capable of producing the required audit records when categories of 
  information are modified.

  Configure Couchbase to produce audit records when categories of information are 
  modified.
  "
  impact 0.5
  tag "severity": "medium"
  tag "gtitle": "SRG-APP-000498-DB-000346"
  tag "gid": "V-58099"
  tag "rid": "SV-72529r1_rule"
  tag "stig_id": "SRG-APP-000498-DB-000346"
  tag "fix_id": "F-63307r1_fix"
  tag "cci": ["CCI-000172"]
  tag "nist": ["AU-12 c", "Rev_4"]

  describe "Couchbase is not currently capable of differentiating between catergories of information." do
    subject { input('cb_audit_categories_of_information') }
    it { should eq 'true'}
  end

end
