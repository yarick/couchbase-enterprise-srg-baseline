# encoding: UTF-8

control "V-32395" do
  title "The audit information produced by Couchbase must be protected from
unauthorized deletion."
  desc  "If audit data were to become compromised, then competent forensic
analysis and discovery of the true source of potentially malicious system
activity is impossible to achieve.

    To ensure the veracity of audit data, the information system and/or the
application must protect audit information from unauthorized deletion. This
requirement can be achieved through multiple methods which will depend upon
system architecture and design.

    Some commonly employed methods include: ensuring log files enjoy the proper
file system permissions utilizing file system protections; restricting access;
and backing up log data to ensure log data is retained.

    Applications providing a user interface to audit data will leverage user
permissions and roles identifying the user accessing the data and the
corresponding rights the user enjoys in order make access decisions regarding
the deletion of audit data.

    Audit information includes all information (e.g., audit records, audit
settings, and audit reports) needed to successfully audit information system
activity.

    Deletion of database audit data could mask the theft of, or the
unauthorized modification of, sensitive data stored in the database.
  "
  desc  "rationale", ""
  desc  "check", "
    Review locations of audit logs, both internal to the database and database
audit logs located at the operating system level.
    Review the ownership and permissions of the audit logs:
    $ ls \xE2\x80\x93ald /opt/couchbase/var/lib/couchbase/logs
    If the logs are not owned by both the \"couchbase\" user and group, this is
a finding. If the file permission are not 660, this is a finding.
  "
  desc  "fix", "
    Apply controls and modify permissions to protect database audit log data
from unauthorized deletion, whether stored in the database itself or at the OS
level.
    As the root or sudo user, change the permissions/ownership of the logs
using the following commands:
    $ chown -R couchbase:couchbase /opt/couchbase/var/lib/couchbase/logs
    $ chmod 700 /opt/couchbase/var/lib/couchbase/logs
    $ chmod 660 /opt/couchbase/var/lib/couchbase/*.logs
  "
  impact 0.5
  tag "severity": "medium"
  tag "gtitle": "SRG-APP-000120-DB-000061"
  tag "gid": "V-32395"
  tag "rid": "SV-42732r3_rule"
  tag "stig_id": "SRG-APP-000120-DB-000061"
  tag "fix_id": "F-36310r2_fix"
  tag "cci": ["CCI-000164"]
  tag "nist": ["AU-9", "Rev_4"]
end
