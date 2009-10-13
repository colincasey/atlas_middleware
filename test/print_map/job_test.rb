require File.dirname(__FILE__) + '/../test_helper'
require 'print_map/job'

module PrintMap
  class JobTest < Test::Unit::TestCase
    context "created job" do
      should "not contain any services if none were specified" do
        job = Job.new
        assert job.services.empty?
      end

      should "not contain any services if 'services' parameter is blank" do
        job = Job.new('services' => '')
      end

      should "be able to accept a single service" do
        job = Job.new('services' => 's')
        assert_equal 1, job.services.length
        assert_equal 's', job.services[0]
      end

      should "be able to accept multiple services" do
        job = Job.new('services' => 's1,s2')
        assert_equal 2, job.services.length
        assert_equal 's1', job.services[0]
        assert_equal 's2', job.services[1]
      end

      should "have an empty bounding box if parameter is not specified" do
        job = Job.new
        assert job.bbox.empty?
      end

      should "have an empty bounding box if 'bbox' parameter is blank" do
        job = Job.new('bbox' => '')
        assert job.bbox.empty?
      end

      should "be able to configure the bounding box" do
        job = Job.new('bbox' => "1,2,3,4")
        assert_equal [1,2,3,4], job.bbox
      end

      should "use :portrait as default page layout" do
        job = Job.new
        assert_equal :portrait, job.page_layout
      end

      should "be able to set page layout to :portrait" do
        job = Job.new('page_layout' => 'portrait')
        assert_equal :portrait, job.page_layout
      end

      should "be able to set page layout to :landscape" do
        job = Job.new('page_layout' => 'landscape')
        assert_equal :landscape, job.page_layout
      end

      should "use A4 paper as default page size" do
        job = Job.new
        assert_equal 'A4', job.page_size
      end

      should "be able to set the page size" do
        job = Job.new('page_size' => 'LEGAL')
        assert_equal 'LEGAL', job.page_size
      end

      should "use 96 as the default DPI" do
        job = Job.new
        assert_equal 96, job.dpi
      end

      should "be able to set the DPI" do
        job = Job.new('dpi' => 300)
        assert_equal 300, job.dpi
      end

      should "use 'Untitled Map' as the default title" do
        job = Job.new
        assert_equal 'Untitled Map', job.title
      end

      should "be able to set the title" do
        job = Job.new('title' => 'My Title')
        assert_equal 'My Title', job.title
      end
    end

    context "when validating a job" do
      should "require at least one service" do
        job = Job.new
        job.validate_only("length_of/services")
        assert_match /at least one service needs to be requested/, job.errors.on(:services)
      end

      should "require all service urls to be MapServer urls" do
        job = Job.new('services' => 'http://not.a.map/server/url')
        job.validate_only("true_for/services")
        assert_match /all services need to be valid MapServer urls/, job.errors.on(:services)
      end

      should "require bbox to contain four values" do
        job = Job.new('bbox' => '1,2,3')
        job.validate_only("length_of/bbox")
        assert_match /bad format for 'bbox'/, job.errors.on(:bbox)

        job = Job.new('bbox' => '1,2,3,4,5')
        job.validate_only("length_of/bbox")
        assert_match /bad format for 'bbox'/, job.errors.on(:bbox)

        job = Job.new('bbox' => '1,2,3,4')
        job.validate_only('length_of/bbox')
        assert_nil job.errors.on(:bbox)
      end

      should "require bbox to be composed of only positive or negative numbers" do
        job = Job.new('bbox' => 'a,b,c,d')
        job.validate_only('true_for/bbox')
        assert_match /all bbox values must be valid positive\/negative number/, job.errors.on(:bbox)

        job = Job.new('bbox' => '0,1,0.1,-0.1')
        job.validate_only('true_for/bbox')
        assert_nil job.errors.on(:bbox)
      end

      should "be able to pass validations" do
        job = Job.new(
          'bbox' => [0, 1, 0.1, -0.1].join(','),
          'services' => [
            'http://sampleserver1.arcgisonline.com/ArcGIS/services/Portland/ESRI_LandBase_WebMercator/MapServer',
            'http://sampleserver2.arcgisonline.com/ArcGIS/services/Portland/ESRI_LandBase_WebMercator/MapServer'
          ].join(',')
        )
        assert job.valid?, job.errors.full_messages.join(', ')
      end
    end
  end
end