"""
 Copyright (c) 2014 Workestra LLC
 All rights reserved.

 Redistribution and use in source and binary forms, with or without modification,
 are permitted provided that the following conditions are met:

 * Redistributions of source code must retain the above copyright notice, this
 list of conditions and the following disclaimer.

 * Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation
 and/or other materials provided with the distribution.

 * Neither the name of Workestra nor the names of its contributors may be used
 to endorse or promote products derived from this software without specific
 prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
"""

#file: workestraSDK.rb

# -*- encoding: utf-8 -*-
require 'json'
require 'net/http'
require 'open-uri'
require 'openssl'

module Workestra
	class SDK
		@@SDK_ID = "rails"
		@@basicAuthUsername = ""
		@@basicAuthPassword = ""
		@@endpoint = 'https://www.workestra.co/api/v1'


		def initialize()
			
			return self
		end

		def setBasicAuth(username, password)
		    @@basicAuthUsername = username
		    @@basicAuthPassword = password
		end

		def set_api_key(key)
		    @@basicAuthUsername = key
		    @@basicAuthPassword = "w"
		    return self
		end

		def listNotifications
    	    url = @@endpoint + "/notifications"

    	    uri = URI.parse(url)

    	    http = Net::HTTP.new(uri.host,uri.port)

    	    http.use_ssl = true
			http.verify_mode = OpenSSL::SSL::VERIFY_NONE

			req = Net::HTTP::Get.new(uri.request_uri)

			req.basic_auth @@basicAuthUsername, @@basicAuthPassword

    	    response = http.request(req)

    	    return response
  
      	end



	end
end