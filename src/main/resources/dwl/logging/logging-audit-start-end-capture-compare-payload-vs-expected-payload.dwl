%dw 2.0
import filterFromMap from dwl::libs::maps
output application/java

var fieldsToIgnore = ['timestamp', 'corr-id-master', 'environment']
---
filterFromMap(vars.expectedPayload, fieldsToIgnore) == filterFromMap(payload, fieldsToIgnore)
