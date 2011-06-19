require 'json'
require 'typhoeus'
require 'thor/shell/basic'
require "fileutils"
require 'couchpack/cli'

$LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__))))

module CouchPack
  VERSION = '0.2.0'

  class CouchPack
    # shortcut to say
    def self.say(message, color=nil)
      @shell ||= Thor::Shell::Basic.new
      @shell.say message, color
    end

    def self.pack_document(document_url, outfile)
      
#      puts "GET #{document_url}"
      document_url_with_attachments = document_url
      document_url_with_attachments += "/" if !document_url_with_attachments.end_with?("/")
      document_url_with_attachments += "?attachments=true"

      response = Typhoeus::Request.get(document_url_with_attachments)
#      puts "Response: #{response.code} #{JSON.parse(response.body).inspect}"
      json = response.code == 200 ? JSON.parse(response.body) : nil

      error = json.nil? || json["error"]

      # success
      if error.nil?
        version = json["_rev"]

        json.delete("_rev")
        json.delete("_id")

        # make the directory
        filename = File.basename(outfile)
        directoryname = File.dirname(outfile)
        #puts "DIRECTORY: " + directoryname
        #puts "FILENAME: " + filename 
        if (directoryname != "")
          FileUtils.mkdir_p(directoryname)
        end

        file_existed = File.exists?(outfile + ".json")

        f = open(outfile + ".json", "w")
        f.write(json.to_json)
        f.close

        f = open(outfile + ".version", "w")
        f.write(version)
        f.close

        say "Created packed document: '#{filename}.json' and version file: '#{filename}.version' in: '#{directoryname}'", :green
        say "Don't forget to add them as a resource to your project!", :yellow if !file_existed

      # failure
      else
        say "couchpack failed: couch responded with: #{json.inspect} for document url: #{document_url}", :red
      end
    end
  end
  
end
