%dw 2.0
output application/java
---
{
	JobName: attributes.queryParams.JobName,
	JobId: attributes.queryParams.JobId as String,
	OrderId: attributes.queryParams.OrderId as String
}