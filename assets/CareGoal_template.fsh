Alias: $vitalink-practitioner-token-type-cs = https://www.vitalink.be/fhir/CodeSystem/vitalink-practitioner-token-type-cs
Alias: $vitalink-cs-goal-category = https://www.vitalink.be/standards/fhir/dzop/CodeSystem/vitalink-cs-goal-category
Alias: $goal-priority = http://terminology.hl7.org/CodeSystem/goal-priority

Instance: {{goalInstanceName}}
InstanceOf: Goal
Usage: {{usage}}
* meta.profile = "{{goalProfile}}"
* contained[0] = {{containedZeroReference}}
* contained[+] = {{containedPlusReference}}
* identifier.system = "{{identifierSystem}}"
* identifier.value = "{{identifierValue}}"
* lifecycleStatus = {{lifecycleStatus}}
* category = $vitalink-cs-goal-category#{{categoryCode}}
* priority = $goal-priority#{{priorityCode}} "{{priorityCodeText}}"
* priority.text = "{{priorityText}}"
* description.text = "{{descriptionText}}"
* subject.identifier.system = "{{subjectIdentifierSystem}}"
* subject.identifier.value = "{{subjectIdentifierValue}}"
* startDate = "{{startDate}}"
* target.measure.coding.display = "{{targetMeasureDisplay}}"
* target.detailRange.low = {{targetDetailRangeLow}} '{{targetDetailRangeUnit}}' "{{targetDetailRangeUnit}}"
* target.detailRange.high = {{targetDetailRangeHigh}} '{{targetDetailRangeUnit}}' "{{targetDetailRangeUnit}}"
* target.dueDate = "{{targetDueDate}}"
* statusDate = "{{statusDate}}"
* statusReason = "{{statusReason}}"
* expressedBy = Reference({{expressedByReference}})
* addresses.display = "{{addressesDisplay}}"

Instance: {{containedZeroInstanceName}}
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitioner"
* identifier[0].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* identifier[=].value = "{{containedZeroIdentifierValue}}"
* identifier[+].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi"
* identifier[=].value = "{{containedZeroNihdiValue}}"
* name.use = #official
* name.family = "{{containedZeroFamilyName}}"
* name.given = "{{containedZeroGivenName}}"

Instance: {{containedPlusInstanceName}}
InstanceOf: PractitionerRole
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitionerrole"
* practitioner = Reference({{containedZeroInstanceName}})
* code = $vitalink-practitioner-token-type-cs#{{containedPlusCode}} "{{containedPlusCodeText}}"
