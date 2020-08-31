# encoding: UTF-8

control "V-58159" do
  title "Couchbase must implement NIST FIPS 140-2 validated cryptographic
modules to provision digital signatures."
  desc  "Use of weak or untested encryption algorithms undermines the purposes
of utilizing encryption to protect data. The application must implement
cryptographic modules adhering to the higher standards approved by the federal
government since this provides assurance they have been tested and validated.

    For detailed information, refer to NIST FIPS Publication 140-2, Security
Requirements For Cryptographic Modules. Note that the product's cryptographic
modules must be validated and certified by NIST as FIPS-compliant.
  "
  desc  "rationale", ""
  desc  "check", "
    As the system administrator, run the following:
    $ openssl version
    If \"fips\" is not included in the openssl version, this is a finding.
    Run the following command to check if the OS has FIPS enabled:
    $ cat /proc/sys/crypto/fips_enabled
    If fips_enabled is not 1, this is a finding.
  "
  desc  "fix", "
    Configure OpenSSL to meet FIPS Compliance.
    To configure OpenSSL to be FIPS 140-2 compliant, see the official RHEL
Documentation:
https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Security_Guide/sect-Security_Guide-Federal_Standards_And_Regulations-Federal_Information_Processing_Standard.html
  "
  impact 0.5
  tag "severity": "medium"
  tag "gtitle": "SRG-APP-000514-DB-000381"
  tag "gid": "V-58159"
  tag "rid": "SV-72589r1_rule"
  tag "stig_id": "SRG-APP-000514-DB-000381"
  tag "fix_id": "F-63367r2_fix"
  tag "cci": ["CCI-002450"]
  tag "nist": ["SC-13", "Rev_4"]
end
