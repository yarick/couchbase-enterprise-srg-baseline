# encoding: UTF-8

control 'V-58041' do
  title "The DBMS must associate organization-defined types of security labels
having organization-defined security label values with information in
transmission."
  desc  "Without the association of security labels to information, there is no
basis for the DBMS to make security-related access-control decisions.

    Security labels are abstractions representing the basic properties or
characteristics of an entity (e.g., subjects and objects) with respect to
safeguarding information.

    These labels are typically associated with internal data structures (e.g.,
tables, rows) within the database and are used to enable the implementation of
access control and flow control policies, reflect special dissemination,
handling or distribution instructions, or support other aspects of the
information security policy.

    One example includes marking data as classified or FOUO. These security
labels may be assigned manually or during data processing, but, either way, it
is imperative these assignments are maintained while the data is in storage. If
the security labels are lost when the data is stored, there is the risk of a
data compromise.

    The mechanism used to support security labeling may be a feature of the
DBMS product, a third-party product, or custom application code.
  "
  desc  'rationale', ''
  desc  'check', "
    If security labeling is not required, this is not a finding.

    If security labeling requirements have been specified, but the security
labeling is not implemented or does not reliably maintain labels on information
in transmission, this is a finding.
  "
  desc  'fix', "Enable DBMS features, deploy third-party software, or add
custom data structures, data elements and application code, to provide reliable
security labeling of information in transmission."
  impact 0.5
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000314-DB-000310'
  tag gid: 'V-58041'
  tag rid: 'SV-72471r1_rule'
  tag stig_id: 'SRG-APP-000314-DB-000310'
  tag fix_id: 'F-63249r1_fix'
  tag cci: ['CCI-002264']
  tag nist: ['AC-16 a']
end
