require 'rails_helper'

RSpec.describe Devise::SessionsController, regressor: true do
  # === Routes (REST) ===

  # === Callbacks (Before) ===
	it { should use_before_filter(:verify_signed_out_user) }
	it { should use_before_filter(:allow_params_authentication!) }
	it { should use_before_filter(:require_no_authentication) }
	it { should use_before_filter(:assert_is_devise_resource!) }
	it { should use_before_filter(:verify_authenticity_token) }
	it { should use_before_filter(:set_xhr_redirected_to) }
	it { should use_before_filter(:set_request_method_cookie) }
	it { should use_before_filter(:configure_permitted_parameters) }
  # === Callbacks (After) ===
  it { should use_after_filter(:abort_xdomain_redirect) }
	it { should use_after_filter(:verify_same_origin_request) }
  # === Callbacks (Around) ===

end
