# encoding: UTF-8

control 'V-32394' do
  title "The audit information produced by the DBMS must be protected from
unauthorized modification."
  desc  "If audit data were to become compromised, then competent forensic
analysis and discovery of the true source of potentially malicious system
activity is impossible to achieve.

    To ensure the veracity of audit data the information system and/or the
application must protect audit information from unauthorized modification.

    This requirement can be achieved through multiple methods that will depend
upon system architecture and design. Some commonly employed methods include
ensuring log files enjoy the proper file system permissions and limiting log
data locations.

    Applications providing a user interface to audit data will leverage user
permissions and roles identifying the user accessing the data and the
corresponding rights that the user enjoys in order to make access decisions
regarding the modification of audit data.

    Audit information includes all information (e.g., audit records, audit
settings, and audit reports) needed to successfully audit information system
activity.

    Modification of database audit data could mask the theft of, or the
unauthorized modification of, sensitive data stored in the database.
  "
  desc  'rationale', ''
  desc  'check', "
    Review locations of audit logs, both internal to the database and database
audit logs located at the operating system level.

    Verify there are appropriate controls and permissions to protect the audit
information from unauthorized modification.

    If appropriate controls and permissions do not exist, this is a finding.
  "
  desc  'fix', "Apply controls and modify permissions to protect database audit
log data from unauthorized modification, whether stored in the database itself
or at the OS level."
  impact 0.5
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000119-DB-000060'
  tag gid: 'V-32394'
  tag rid: 'SV-42731r3_rule'
  tag stig_id: 'SRG-APP-000119-DB-000060'
  tag fix_id: 'F-36309r2_fix'
  tag cci: ['CCI-000163']
  tag nist: ['AU-9']
end
