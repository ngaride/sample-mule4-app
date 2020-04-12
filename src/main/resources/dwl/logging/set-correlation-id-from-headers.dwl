%dw 2.0
output application/java
---
if(attributes.headers? and attributes.headers.'X-CorrelationId'?) attributes.headers.'X-CorrelationId' else uuid()