Alias: $vitalink-practitioner-token-type-cs = https://www.vitalink.be/fhir/CodeSystem/vitalink-practitioner-token-type-cs
Alias: $messagetypes = http://acme.org/messagetypes

Instance: {{communicationInstanceName}}
InstanceOf: Communication
Usage: {{usage}}
* meta.profile = "{{communicationProfile}}"
* contained[0] = {{containedZeroReference}}
* contained[+] = {{containedPlusReference}}
* identifier.system = "{{identifierSystem}}"
* identifier.value = "{{identifierValue}}"
* status = {{status}}
* category = $messagetypes#notification
* category.text = "{{categoryText}}"
* sender = Reference({{senderReference}})
* subject.identifier.system = "{{subjectIdentifierSystem}}"
* subject.identifier.value = "{{subjectIdentifierValue}}"
* recipient = Reference({{recipientReference}})
* partOf = Reference({{partOfReference}})
* payload.contentString = "{{payloadContentString}}"

Instance: {{containedZeroInstanceName}}
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "{{containedZeroProfile}}"
* identifier[0].system = "{{containedZeroIdentifierSystem1}}"
* identifier[=].value = "{{containedZeroIdentifierValue1}}"
* identifier[+].system = "{{containedZeroIdentifierSystem2}}"
* identifier[=].value = "{{containedZeroIdentifierValue2}}"
* name.use = {{containedZeroNameUse}}
* name.family = "{{containedZeroFamilyName}}"
* name.given = "{{containedZeroGivenName}}"

Instance: {{containedPlusInstanceName}}
InstanceOf: PractitionerRole
Usage: #inline
* meta.profile = "{{containedPlusProfile}}"
* practitioner = Reference({{containedZeroInstanceName}})
* code = $vitalink-practitioner-token-type-cs#PHYSICIAN "PHYSICIAN"
