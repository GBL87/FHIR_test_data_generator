Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode

Instance: {{careteamInstanceName}}
InstanceOf: CareTeam
Usage: {{usage}}
* meta.profile = "{{careteamProfile}}"
* contained = {{containedReference}}
* status = {{status}}
* category.coding.display = "{{categoryDisplay}}"
* name = "{{careteamName}}"
* subject.identifier.system = "{{subjectIdentifierSystem}}"
* subject.identifier.value = "{{subjectIdentifierValue}}"
* period.start = "{{periodStartDate}}"
* period.end = "{{periodEndDate}}"
* participant.role.coding.display = "{{participantRoleDisplay}}"
* participant.role.text = "{{participantRoleText}}"
* participant.member = Reference({{participantMemberReference}})

Instance: {{relatedPersonInstanceName}}
InstanceOf: RelatedPerson
Usage: {{usage}}
* meta.profile = "{{relatedPersonProfile}}"
* active = {{relatedPersonActive}}
* patient.identifier.system = "{{patientIdentifierSystem}}"
* patient.identifier.value = "{{patientIdentifierValue}}"
* relationship = $v3-RoleCode#{{relationshipCode}}
* name.family = "{{relatedPersonLastName}}"
* name.given = "{{relatedPersonFirstName}}"
* telecom.system = {{relatedPersonTelecomSystem}}
* telecom.value = "{{relatedPersonTelecomValue}}"
* gender = {{relatedPersonGender}}
