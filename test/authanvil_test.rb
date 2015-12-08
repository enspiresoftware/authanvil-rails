require 'test_helper'

class AuthanvilTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Authanvil::VERSION
  end

  def setup
    username = "test_user"
    one_time_password = "1Fd3a"
    sas_url = "test.com"
    site_id = "test_id"
  end

  def test_connection_to_authanvil
    response = Authanvil.request(username, one_time_password, sas_url, site_id)
    assert_equal "passcode", response["result"]
  end

end
