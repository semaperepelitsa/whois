#
# = Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
#
# Category::    Net
# Package::     Whois
# Author::      Simone Carletti <weppos@weppos.net>
# License::     MIT License
#
#--
#
#++


require 'whois/answer/parser/base'


module Whois
  class Answer
    class Parser

      #
      # = whois.cira.ca parser
      #
      # Parser for the whois.cira.ca server.
      #
      # NOTE: This parser is just a stub and provides only a few basic methods
      # to check for domain availability and get domain status.
      # Please consider to contribute implementing missing methods.
      # See WhoisNicIt parser for an explanation of all available methods
      # and examples.
      #
      class WhoisCiraCa < Base

        property_supported :status do
          @status ||= if content.to_s =~ /Domain status:\s+(.*?)\n/
            case $1.downcase.to_sym
              when :exist then :registered
              when :avail then :available
            end
          end
        end

        property_supported :available? do
          @available ||= (status == :available)
        end

        property_supported :registered? do
          !available?
        end


        property_supported :created_on do
          @created_on ||= if content.to_s =~ /Approval date:\s+(.*?)\n/
            Time.parse($1)
          end
        end
        
        property_supported :updated_on do
          @updated_on ||= if content.to_s =~ /Updated date:\s+(.*?)\n/
            Time.parse($1)
          end
        end
        
        property_supported :expires_on do
          @expires_on ||= if content.to_s =~ /Renewal date:\s+(.*?)\n/
            Time.parse($1)
          end
        end

      end
      
    end
  end
end  