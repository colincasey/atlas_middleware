require 'print_map/job'
require 'print_map/worker'

class PrintMapService
  attr_reader :worker, :create_job

  def initialize(opts = {})
    @worker = opts[:worker] ||= PrintMap::Worker.new
    @create_job = opts[:create_job] ||= proc { |opts| PrintMap::Job.new(opts) }
  end

  def call(env)
    puts 'calling print map'
    job = create_job.call(Rack::Request.new(env).params)
    if job.valid?
      puts 'valid job'
      pdf = worker.do_job(job)
      puts 'rendering to client'
      # now stream the pdf to the client
      [
        200, {
          "Content-Type" => "application/pdf", 
          "Content-Disposition" => "attachment; filename=\"#{job.title}.pdf\""
        },
        pdf.render
      ]
    else
      create_invalid_job_response(job)
    end

    rescue Exception => e
      create_error_response(e)
  end

  def create_invalid_job_response(job)
    body = "Print map failed because of the following errors:\n#{job.errors.full_messages.join("\n")}"
    puts 'failed to generate print map:'
    puts body
    [500, { "Content-Type" => "text/plain" }, body]
  end

  def create_error_response(e)
    body = "An internal error occurred:\n#{e.message}"
    puts 'failed to generate print map:'
    puts body
    [500, { "Content-Type" => "text/plain" }, body]
  end
end