%dw 2.0
output application/json encoding="UTF-8"
---
{
	"timestamp": now() as String {format : "yyyy-MM-dd'T'HH:mm:ss.SSSSSSZ"},
	"log-type": "SYSTEM",
	"corr-id-master": vars.correlationId,
	"corr-id-child": "",
	"msg-code": write(error.errorType, "application/json", {"encoding": "UTF-8"}),
	"message": write(error.exception, "application/json", {"encoding": "UTF-8"}),
	"biz-msg": write(error.errorMessage.payload, "application/json", {"encoding": "UTF-8"}),
	"stacktrace": write(error.detailedDescription, "application/json", {"encoding": "UTF-8"}),
	"environment": upper(p('env.name')),
	"level": "ERROR",
	"system": "",
	"app-name": app.name,
	"flow-name": vars.flowName default 'Flow Name not defined',
	"source": ""
}