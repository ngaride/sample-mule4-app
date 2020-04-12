%dw 2.0
output application/json
---
{
	"timestamp": now() as String {format : "yyyy-MM-dd'T'HH:mm:ss.SSSSSSZ"},
	"log-type": "SYSTEM",
	"corr-id-master": vars.correlationId,
	"corr-id-child": "",
	"msg-code": "",
	"message": app.name as String ++ ': Ended',
	"biz-msg": '',
	"stacktrace": "",
	"environment": upper(p('env.name')),
	"level": "INFO",
	"system": "",
	"app-name": app.name,
	"flow-name": vars.flowName default 'Flow Name not defined',
	"source": ""
}