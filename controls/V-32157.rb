# encoding: UTF-8

control "V-32157" do
  title "Couchbase must limit the number of concurrent sessions to an
  organization-defined number per user for all accounts and/or account types."
  desc  "Database management includes the ability to control the number of
  users and user sessions utilizing a Couchbase. Unlimited concurrent connections
  to Couchbase could allow a successful Denial of Service (DoS) attack by
  exhausting connection resources; and a system can also fail or be degraded by
  an overload of legitimate users. Limiting the number of concurrent sessions per
  user is helpful in reducing these risks.

  This requirement addresses concurrent session control for a single account.
  It does not address concurrent sessions by a single user via multiple system
  accounts; and it does not deal with the total number of sessions across all
  accounts.

  The capability to limit the number of concurrent sessions per user must be
  configured in or added to Couchbase (for example, by use of a logon trigger),
  when this is technically feasible. Note that it is not sufficient to limit
  sessions via a web server or application server alone, because legitimate users
  and adversaries can potentially connect to Couchbase by other means.

  The organization will need to define the maximum number of concurrent
  sessions by account type, by account, or a combination thereof. In deciding on
  the appropriate number, it is important to consider the work requirements of
  the various types of users. For example, 2 might be an acceptable limit for
  general users accessing the database via an application; but 10 might be too
  few for a database administrator using a database management GUI tool, where
  each query tab and navigation pane may count as a separate session.

  (Sessions may also be referred to as connections or logons, which for the
  purposes of this requirement are synonyms.)
  "
  desc  "check", "
  Determine whether the system documentation specifies limits on the number
  of concurrent Couchbase sessions per account by type of user. If it does not,
  assume a limit of 10 for database administrators and 2 for all other users.

  Review the concurrent-sessions settings in Couchbase and/or the
  applications using it, and/or the system software supporting it.
    
  If Couchbase is capable of enforcing this restriction but is not configured
  to do so, this is a finding. This holds even if the restriction is enforced by
  applications or supporting software.
    
  If it is not technically feasible for Couchbase to enforce this
  restriction, but the application(s) or supporting software are configured to do
  so, this is not a finding.
    
  If it is not technically feasible for Couchbase to enforce this
  restriction, and applications and supporting software are not so configured,
  this is a finding.

  If the value for any type of user account is not set, this is a finding.

  If a value is set but is not equal to the value specified in the
  documentation (or the default value defined in this check) for the type of
  user, this is a finding.
  "
  desc  "fix", "
  If Couchbase is capable of enforcing this restriction, but is not
  configured to do so, configure it to do so. (This may involve the development
  of one or more triggers.)
    
  If it is not technically feasible for Couchbase to enforce this
  restriction, and the application(s) and supporting software are not configured
  to do so, configure them to do so.
    
  If the value for any type of user account is not set, determine the correct
  value and set it.
    
  If a value is set but is not equal to the value specified for the type of
  user, determine the correct value, set it, and update the documentation, as
  appropriate.
  "
  impact 0.5
  tag "severity": "medium"
  tag "gtitle": "SRG-APP-000001-DB-000031"
  tag "gid": "V-32157"
  tag "rid": "SV-42474r3_rule"
  tag "stig_id": "SRG-APP-000001-DB-000031"
  tag "fix_id": "F-36081r2_fix"
  tag "cci": ["CCI-000054"]
  tag "nist": ["AC-10", "Rev_4"]

  describe "This test requires a Manual Review: It is not technically feasible 
  for Couchbase to enforce this restriction. Ensure that the application(s) or 
  supporting software are configured to do so. If not, this is a finding." do
    skip "This test requires a Manual Review: It is not technically feasible 
    for Couchbase to enforce this restriction. Ensure that the application(s) or 
    supporting software are configured to do so. If not, this is a finding."
  end
end
