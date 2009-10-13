require File.dirname(__FILE__) + '/../test_helper'
require 'print_map/worker'
require 'print_map/job'
require 'print_map/legend_images_collector'

module PrintMap
  class WorkerTest < Test::Unit::TestCase
    should "create a pdf from a job request that responds to :render" do
      job = Job.new
      worker = Worker.new
      pdf = worker.do_job(job)
      assert_respond_to(pdf, :render)
    end

    context "when verifying expected behavior" do
      setup do
        @mock_map_exporter = mock do
          expects(:export).times(2).returns(Magick::Image.new(1,1), Magick::Image.new(1,1))
        end

        @mock_pdf_generator = mock do
          expects(:generate).once().returns(Prawn::Document.new)
        end

        services = [
          'http://sampleserver1.arcgisonline.com/ArcGIS/services/Demographics/ESRI_Census_USA/MapServer',
          'http://sampleserver1.arcgisonline.com/ArcGIS/rest/services/Petroleum/KGS_OilGasFields_Kansas/MapServer'
        ]

        @mock_legend_images_collector = mock do
          expects(:collect).times(2).returns([Magick::Image.new(1,1), Magick::Image.new(1,1)])
        end

        @job = Job.new('services' => services.join(','))
      end

      should "delegate third-party api work to adapters" do
        worker = Worker.new(
          :map_exporter => @mock_map_exporter,
          :pdf_generator => @mock_pdf_generator,
          :legend_images_collector => @mock_legend_images_collector
        )
        worker.do_job(@job)
      end
    end
  end
end
