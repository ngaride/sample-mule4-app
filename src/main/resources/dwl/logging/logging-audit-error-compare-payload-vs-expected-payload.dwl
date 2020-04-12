%dw 2.0
import compareMultipleMaps from dwl::libs::maps
output application/json

var expectedErrorPayload = readUrl('classpath://logging/expected-audit-error-payload.json', 'application/json')
---
compareMultipleMaps(
	[
		{
			expected: expectedErrorPayload,
			current: payload,
			fieldsToIgnore: ['timestamp', 'msg-code', 'message', 'environment']
		},
		{
			expected: read(expectedErrorPayload.'msg-code', 'application/json'),
			current: read(payload.'msg-code', 'application/json'),
			fieldsToIgnore: ['']
		}
	]
)