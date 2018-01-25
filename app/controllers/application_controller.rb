require 'barby'
require 'barby/barcode/code_128'    
require 'barby/outputter/png_outputter'  
require 'chunky_png'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
