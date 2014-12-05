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

