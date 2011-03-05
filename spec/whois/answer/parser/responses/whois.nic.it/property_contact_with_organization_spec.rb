# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.nic.it/property_contact_with_organization_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.nic.it'

describe Whois::Answer::Parser::WhoisNicIt, "property_contact_with_organization.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.it/property_contact_with_organization.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#admin_contact" do
    it do
      @parser.admin_contact.should be_a(_contact)
    end
    it do
      @parser.admin_contact.type.should         == Whois::Answer::Contact::TYPE_ADMIN
    end
    it do
      @parser.admin_contact.id.should           == "TT4277-ITNIC"
    end
    it do
      @parser.admin_contact.name.should         == "Tsao Tu"
    end
    it do
      @parser.admin_contact.organization.should == "Tu Tsao"
    end
    it do
      @parser.admin_contact.address.should      == "30 Herbert Street"
    end
    it do
      @parser.admin_contact.city.should         == "Dublin"
    end
    it do
      @parser.admin_contact.zip.should          == "2"
    end
    it do
      @parser.admin_contact.state.should        == "IE"
    end
    it do
      @parser.admin_contact.country_code.should == "IE"
    end
    it do
      @parser.admin_contact.created_on.should   == Time.parse("2008-11-27 16:47:22")
    end
    it do
      @parser.admin_contact.updated_on.should   == Time.parse("2008-11-27 16:47:22")
    end
  end
end