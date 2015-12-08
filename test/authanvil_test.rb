require 'test_helper'

class AuthanvilTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::Authanvil::VERSION
  end


  def test_connection_to_authanvil
    response = Authanvil.request("test_user", "1Fd3a", "test.com", "test_site_id")
    assert_equal "passcode", response["result"]
  end

end
