require File.dirname(__FILE__) + '/test_helper'
require 'print_map_service'

class PrintMapServiceTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    @app ||= PrintMapService.new
  end

  context "when requested job is valid" do
    setup do
      mock_job = mock do
        expects(:valid?).returns(true)
        expects(:title).returns('Test Title')
      end

      mock_pdf = mock(:render => 'pdf content')

      mock_worker = mock do
        expects(:do_job).with(mock_job).returns(mock_pdf)
      end
      
      @app = PrintMapService.new(:worker => mock_worker, :create_job => proc { |opts| mock_job })
    end

    should "return a pdf document for download" do
      get "/"
      assert_equal 200, last_response.status
      assert_equal "application/pdf", last_response.headers["Content-Type"]
      assert_equal 'attachment; filename="Test Title.pdf"', last_response["Content-Disposition"]
      assert_equal 'pdf content', last_response.body
    end
  end

  context "when requested job is invalid" do
    setup do
      mock_job = mock do
        expects(:valid?).returns(false)
        expects(:errors).returns([])
      end
      @app = PrintMapService.new(:create_job => proc { |opts| mock_job })
    end

    should "return an error report" do
      get "/"
      assert_equal 500, last_response.status
      assert_equal "text/plain", last_response.headers['Content-Type']
      assert_match(/^Print map failed because of the following errors:/, last_response.body)
    end
  end

  context "when an error occurs during execution" do
    setup do
      mock_job = mock do
        expects(:valid?).raises('Test Error')
      end
      @app = PrintMapService.new(:create_job => proc { |opts| mock_job })
    end

    should "trap the error and return a friendly response detailing what happened" do
      get "/"
      assert_equal 500, last_response.status
      assert_equal "text/plain", last_response.headers['Content-Type']
      assert_match /^An internal error occurred:\sTest Error/, last_response.body
    end
  end
end