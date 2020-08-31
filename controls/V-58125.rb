# encoding: UTF-8

control "V-58125" do
  title "Couchbase must enforce access restrictions associated with changes to
the configuration of Couchbase or database(s)."
  desc  "Failure to provide logical access restrictions associated with changes
to configuration may have significant effects on the overall security of the
system.

    When dealing with access restrictions pertaining to change control, it
should be noted that any changes to the hardware, software, and/or firmware
components of the information system can potentially have significant effects
on the overall security of the system.

    Accordingly, only qualified and authorized individuals should be allowed to
obtain access to system components for the purposes of initiating changes,
including upgrades and modifications.
  "
  desc  "rationale", ""
  desc  "check", "
    Review Couchbase vendor documentation with respect to its ability to
enforce access restrictions associated with changes to the configuration of
Couchbase or database(s).
    If it is not able to do this, this is a finding.
    Review the security configuration of Couchbase and database(s).
    If it does not enforce access restrictions associated with changes to the
configuration of Couchbase or database(s), this is a finding.
    Obtain the list of users in those group(s)/roles:
    $ couchbase-cli user-manage -c <host>:<port> -u <Full Admin> -p <Password>
--list
    Identify the individuals authorized to modify configurations.
    If unauthorized access to the configurations has been granted, this is a
finding.
  "
  desc  "fix", "
    Ensure Couchbase is capable of enforcing access restrictions associated
with changes to the configuration of Couchbase or database(s).
    Configure Couchbase to enforce access restrictions associated with changes
to the configuration of Couchbase or database(s).
  "
  impact 0.5
  tag "severity": "medium"
  tag "gtitle": "SRG-APP-000380-DB-000360"
  tag "gid": "V-58125"
  tag "rid": "SV-72555r1_rule"
  tag "stig_id": "SRG-APP-000380-DB-000360"
  tag "fix_id": "F-63333r1_fix"
  tag "cci": ["CCI-001813"]
  tag "nist": ["CM-5 (1)", "Rev_4"]
end
