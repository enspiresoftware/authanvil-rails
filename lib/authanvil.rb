require "authanvil/version"
require 'pry'
require 'savon'

module Authanvil

  def request(username, one_time_password, sas_url, site_id)

    # create a client for the service
    client = Savon.client(wsdl: "#{sas_url}?wsdl")

    client.operations

    # call the 'authenticate' operation
    response = client.call(:authenticate, message: { 'Username' => username, 'Passcode' => one_time_password, 'TokenType' => 1, 'SiteID' => site_id })

    response.body
  end
end
