%dw 2.0
output application/json
---
{
	code: if(error.errorMessage.typedAttributes.statusCode?) error.errorMessage.typedAttributes.statusCode as String else "500",
	message : error.errorType.namespace as String ++ ":" ++ error.errorType.identifier as String,
	description: error.description,
	//Value previously read from HTTP Headers in the inbound call for the API
	transactionId: vars.correlationId
}