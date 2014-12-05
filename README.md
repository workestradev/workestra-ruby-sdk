workestra-ruby-sdk
==========

A Ruby SDK library for the [Workestra API](https://www.workestra.co/developers/docs)



Quick Start
===========

You will need an API key to get started. You can find instructions on obtaining an API key [here](https://www.workestra.co/developers/docs#authentication)

Once you have that, the following code will get the latest notifications (as long as your user is able to access those notifications)

````
require_relative 'workestraSDK'


#Create a new instance of the SDK
sdk = Workestra::SDK.new


#set your Api key
sdk.set_api_key '{Your-API-Key}'

#or use basic authentication
sdk.setBasicAuth '{Email}','{Password}'


#list the latest notification
response = sdk.listNotifications
puts response.body

````

After that, you may want to explore the stream [api](https://www.workestra.co/developers/docs#sream), or just look through the wrapper code.

