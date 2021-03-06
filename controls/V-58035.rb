# encoding: UTF-8

control "V-58035" do
  title "Couchbase must provide logout functionality to allow the user to
  manually terminate a session initiated by that user."
  desc  "If a user cannot explicitly end a Couchbase session, the session may
  remain open and be exploited by an attacker; this is referred to as a zombie
  session.

  Such logout may be explicit or implicit. Examples of explicit are: clicking
  on a \"Log Out\" link or button in the application window; clicking the Windows
  Start button and selecting \"Log Out\" or \"Shut Down.\" Examples of implicit
  logout are: closing the application's (main) window; powering off the
  workstation without invoking the OS shutdown.

  Both the explicit and implicit logouts must be detected by Couchbase.

  In all cases, Couchbase must ensure that the user's Couchbase session and
  all processes owned by the session are terminated.

  This should not, however, interfere with batch processes/jobs initiated by
  the user during his/her online session: these should be permitted to run to
  completion.
  "
  desc  "check", "
  Determine, by reviewing Couchbase documentation and/or inquiring of the
  vendor's technical support staff, whether the Couchbase satisfies this
  requirement; and, if it does, determine whether this is inherent, unchangeable
  behavior, or a configurable feature.
  If Couchbase does not satisfy the requirement, this is a permanent finding.
  If the behavior is inherent, this is permanently not a finding.
  If the behavior is configurable, and the current configuration does not
  enforce it, this is a finding.
  "
  desc  "fix", "Where relevant, modify the configuration to allow the user to
  manually terminate a session initiated by that user."
  impact 0.5
  tag "severity": "medium"
  tag "gtitle": "SRG-APP-000296-DB-000306"
  tag "gid": "V-58035"
  tag "rid": "SV-72465r1_rule"
  tag "stig_id": "SRG-APP-000296-DB-000306"
  tag "fix_id": "F-63243r1_fix"
  tag "cci": ["CCI-002363"]
  tag "nist": ["AC-12 (1)", "Rev_4"]

  describe "This test requires a Manual Review: Review Couchbase documentation and/or inquiring of the
  vendor's technical support staff, whether the Couchbase satisfies this
  requirement; and, if it does, determine whether this is inherent, unchangeable
  behavior, or a configurable feature." do
    skip "This test requires a Manual Review: Review Couchbase documentation and/or inquiring of the
    vendor's technical support staff, whether the Couchbase satisfies this
    requirement; and, if it does, determine whether this is inherent, unchangeable
    behavior, or a configurable feature."
  end
end
