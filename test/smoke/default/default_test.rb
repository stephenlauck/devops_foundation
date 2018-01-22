# # encoding: utf-8

# Inspec test for recipe test::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.

describe http('https://172.20.10.10/users/password/edit?reset_password_token=Gub1eXy7DXeh995q-MdN', ssl_verify: false) do
  its('status') { should cmp 200 }
end

describe http('http://172.20.10.11:8080/') do
  its('status') { should cmp 200 }
end
