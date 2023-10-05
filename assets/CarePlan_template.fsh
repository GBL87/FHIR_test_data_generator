Alias: $vitalink-practitioner-token-type-cs = {{vitalinkPractitionerTokenTypeCs}}
Alias: $loinc = {{loinc}}

Instance: {{instance1Name}}
InstanceOf: CarePlan
Usage: {{usage1}}
* meta.profile = "{{metaProfile1}}"
* contained[0] = {{contained1}}
* contained[+] = {{contained2}}
* identifier.system = "{{IdentifierSystem}}"
* identifier.value = "{{IdentifierValue}}"
* status = {{status}}
* intent = {{intent}}
* description = "{{description}}"
* subject.identifier.system = "{{subjectIdentifierSystem}}"
* subject.identifier.value = "{{subjectIdentifierValue}}"
* period.start = "{{periodStart}}"
* period.end = "{{periodEnd}}"
* created = "{{created}}"
* author = Reference({{authorReference}})
* careTeam = {{careTeamReference}}
* activity.outcomeReference.display = "{{activityOutcomeDisplay}}"
* activity.detail.code = {{activityDetailCode}} "{{activityDetailCodeText}}"
* activity.detail.status = {{activityDetailStatus}}
* activity.detail.statusReason.text = "{{activityDetailStatusReason}}"
* activity.detail.doNotPerform = false
* activity.detail.scheduledTiming.repeat.frequency = {{activityDetailRepeatFrequency}}
* activity.detail.scheduledTiming.repeat.period = {{activityDetailRepeatPeriod}}
* activity.detail.scheduledTiming.repeat.periodUnit = {{activityDetailRepeatPeriodUnit}}
* activity.detail.location.display = "{{activityDetailLocationDisplay}}"
* activity.detail.performer.display = "{{activityDetailPerformerDisplay}}"

Instance: {{instance2Name}}
InstanceOf: Practitioner
Usage: {{usage2}}
* meta.profile = "{{metaProfile2}}"
* identifier[0].system = "{{identifierSystem1}}"
* identifier[=].value = "{{identifierValue1}}"
* identifier[+].system = "{{identifierSystem2}}"
* identifier[=].value = "{{identifierValue2}}"
* name.use = {{nameUse}}
* name.family = "{{nameFamily}}"
* name.given = "{{nameGiven}}"

Instance: {{instance3Name}}
InstanceOf: PractitionerRole
Usage: {{usage3}}
* meta.profile = "{{metaProfile3}}"
* practitioner = Reference({{practitionerReference}})
* code = {{practitionerCode}} "{{practitionerCodeText}}"
