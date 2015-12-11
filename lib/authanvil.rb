require "authanvil/version"
require 'pry'
require 'savon'

module Authanvil

  # Params
  # username: testEmail@email.com
  # one_time_password: 4-8 digit pin + Password on auth device
  # sas_url: authanvil company designated sas server
  # site-id: site id default 1
  # Returns Bool
  def self.request(username, one_time_password, sas_url, site_id="1")

    # create a client for the service
    client = Savon.client(wsdl: "#{sas_url}?wsdl")

    client.operations

    # call the 'authenticate' operation
    response = client.call(:authenticate, message: { 'Username' => username, 'Passcode' => one_time_password, 'TokenType' => 1, 'SiteID' => site_id })

    response.body[:authenticate_response][:authenticate_result]
  end
end
