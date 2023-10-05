Alias: $vitalink-practitioner-token-type-cs = https://www.vitalink.be/fhir/CodeSystem/vitalink-practitioner-token-type-cs
Alias: $task-code = http://hl7.org/fhir/CodeSystem/task-code

Instance: {{taskInstanceName}}
InstanceOf: Task
Usage: {{usage}}
* meta.profile = "{{taskProfile}}"
* contained[0] = {{containedZeroReference}}
* contained[+] = {{containedPlusReference}}
* identifier.system = "{{identifierSystem}}"
* identifier.value = "{{identifierValue}}"
* status = {{status}}
* intent = {{intent}}
* code = $task-code#fulfill "{{codeText}}"
* for.identifier.system = "{{forIdentifierSystem}}"
* for.identifier.value = "{{forIdentifierValue}}"
* requester = Reference({{requesterReference}})

Instance: {{containedZeroInstanceName}}
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitioner"
* identifier[0].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* identifier[=].value = "{{containedZeroIdentifierValue1}}"
* identifier[+].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi"
* identifier[=].value = "{{containedZeroIdentifierValue2}}"
* name.use = {{containedZeroNameUse}}
* name.family = "{{containedZeroFamilyName}}"
* name.given = "{{containedZeroGivenName}}"

Instance: {{containedPlusInstanceName}}
InstanceOf: PractitionerRole
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitionerrole"
* practitioner = Reference({{containedZeroInstanceName}})
* code = $vitalink-practitioner-token-type-cs#PHYSICIAN "PHYSICIAN"
