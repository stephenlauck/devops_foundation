# # encoding: utf-8

# Inspec test for recipe test::jenkins

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe http('http://172.20.10.11:8080/') do
  its('status') { should cmp 200 }
end

describe command('wget -O - http://localhost:8080') do
  its(:stdout) { should match(/Jenkins/) }
end
