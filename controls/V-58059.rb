# encoding: UTF-8

control 'V-58059' do
  title "The DBMS must provide an immediate real-time alert to appropriate
support staff of all audit log failures. "
  desc  "It is critical for the appropriate personnel to be aware if a system
is at risk of failing to process audit logs as required. Without a real-time
alert, security personnel may be unaware of an impending failure of the audit
capability, and system operation may be adversely affected.

    The appropriate support staff include, at a minimum, the ISSO and the
DBA/SA.

    A failure of database auditing will result in either the database
continuing to function without auditing or in a complete halt to database
operations. When audit processing fails, appropriate personnel must be alerted
immediately to avoid further downtime or unaudited transactions.

    Alerts provide organizations with urgent messages. Real-time alerts provide
these messages immediately (i.e., the time from event detection to alert occurs
in seconds or less).
  "
  desc  'rationale', ''
  desc  'check', "
    Review SQL Server settings, OS, or third-party logging software settings to
determine whether a real-time alert will be sent to the appropriate personnel
when auditing fails for any reason.

    If real-time alerts are not sent upon auditing failure, this is a finding.

  "
  desc  'fix', "Configure the system to provide immediate real-time alerts to
appropriate support staff when an audit log failure occurs."
  impact 0.5
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000360-DB-000320'
  tag gid: 'V-58059'
  tag rid: 'SV-72489r2_rule'
  tag stig_id: 'SRG-APP-000360-DB-000320'
  tag fix_id: 'F-63267r2_fix'
  tag cci: ['CCI-001858']
  tag nist: ['AU-5 (2)']
end
