# # encoding: utf-8

# Inspec test for recipe test::gitlab

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe http('https://172.20.10.10/users/password/edit?reset_password_token=Gub1eXy7DXeh995q-MdN', ssl_verify: false) do
  its('status') { should cmp 302 }
end
