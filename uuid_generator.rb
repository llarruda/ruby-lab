# frozen_string_literal: true

#
# UUID generate with Rails ActiveSupport
# Ruby version 2.7.2p137, ActiveSupport gem version 5.2.4
#
# Wed Feb 10 17:12:40 2021 -0300
# created by @llarruda
#

require 'active_support/core_ext/digest/uuid'
require 'digest'

# The 128 bits hexadecimal hash is the same whether the same arguments are provided
uuid_v3 = Digest::UUID.uuid_v3(Digest::UUID::DNS_NAMESPACE, 'ninsei-street.com')
puts uuid_v3

# See the hash collision passing a pseudo-random number with highly probably to be the same as previous value
10.times do
  pseudo_random = rand(1..2)
  uuid_v3 = Digest::UUID.uuid_v3(Digest::UUID::DNS_NAMESPACE, pseudo_random.to_s)
  puts uuid_v3
end

# Using SHA-1 as encryption algorithm
uuid_v5 = Digest::UUID.uuid_v5(Digest::UUID::DNS_NAMESPACE, 'ninsei-street.com')
puts uuid_v5
