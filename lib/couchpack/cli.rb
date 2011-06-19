require 'thor'
require 'thor/actions'
require 'couchwatcher'
require 'couchpack'

module CouchPack

  class CLI < ::Thor
    include Thor::Actions

    class_option "version",
        :type => :boolean,
        :aliases => '-v',
        :banner => "print version and exit"

    default_task :help

    def initialize(*)
      super
      if options[:version]
        say "couchpack #{::CouchPack::VERSION}", :green
        exit
      end
    end

    desc 'document [DOCUMENT_URL] [OUTFILE]', 'extracts the document from a couchdb and prepares for upload to Couchbase'
    def document(document_url, outfile)
      auto = options[:auto]

      # pack now
      ::CouchPack::CouchPack::pack_document(document_url, outfile)

      # watch for changes
      if auto
        couch_watcher = CouchWatcher::CouchWatcher.new()
        couch_watcher.add_document_watcher(document_url, false) {|url, id, rev| ::CouchPack::CouchPack::pack_document(document_url, outfile)}
        couch_watcher.start_watching(false)

        # keep the watcher running
        while(true)
          sleep(1000)
        end        
      end
    end
    method_option '--auto', :for => :document, :type => :boolean, :default => false,
      :banner => 'watches a couchdb document for changes and repacks when it changes'
  end
end
