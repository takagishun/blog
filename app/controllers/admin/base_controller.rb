class Admin::BaseController < ApplicationController
	layout 'admin'
	include Admin::SessionsHelper
end