require 'arcserver'
require 'validatable'

module PrintMap
  class Job
    include Validatable
    include ArcServer::UrlHelper
    # services validations
    validates_length_of :services, :minimum => 1, :message => 'at least one service needs to be requested'
    validates_true_for  :services, :logic => lambda { 
      services.all? { |url| map_server?(url) }
    }, :message => 'all services need to be valid MapServer urls'
    # bbox validations
    validates_length_of :bbox, :is => 4, :message => "bad format for 'bbox' - try bbox=xmin,ymin,xmax,ymax"
    validates_true_for  :bbox, :logic => lambda { 
      env['bbox'].to_s.split(',').all? { |b| b.to_s.match(/^[-|+]?\d*\.?\d*$/) }
    }, :message => 'all bbox values must be valid positive/negative numbers'

    attr_reader :env

    def initialize(env = {})
      @env = env
    end

    def services
      @services ||= env['services'].to_s.split(',')
    end

    def bbox
      @bbox ||= env['bbox'].to_s.split(',').collect{ |b| b.to_f }
    end

    def page_layout
      @page_layout ||= (env['page_layout'] || 'portrait').to_sym
    end

    def page_size
      @page_size ||= env['page_size'] || 'A4'
    end

    def dpi
      @dpi ||= env['dpi'] || 96
    end

    def title
      @title = env['title'] || 'Untitled Map'
    end
  end
end