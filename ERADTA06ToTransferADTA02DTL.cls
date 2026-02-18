Class Hospital.ERADTA06ToTransferADTA02DTL Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='2.3.1:ADT_A06' targetDocType='2.3.1:ADT_A02' create='new' language='objectscript' >
<assign value='source.{MSH}' property='target.{MSH}' action='set' />
<assign value='source.{MSH:SendingFacility}' property='target.{MSH:SendingFacility}' action='set' />
<assign value='source.{MSH:SendingApplication} _ " : " _ source.{MSH:SendingFacility}' property='target.{MSH:SendingApplication}' action='set' />
<assign value='source.{NK1(2):Name()}' property='target.{MSH:Security}' action='set' />
<assign value='' property='target.{MSH:MessageType.triggerevent}' action='clear' />
<assign value='"A02"' property='target.{MSH:MessageType.triggerevent}' action='set' />
<assign value='' property='target.{MSH:SequenceNumber}' action='clear' />
<assign value='source.{EVN}' property='target.{EVN}' action='set' />
<assign value='source.{PID}' property='target.{PID}' action='set' />
<assign value='source.{PID:PatientID}' property='target.{PID:PatientID}' action='set' />
<assign value='source.{PID:PatientIdentifierList()}' property='target.{PID:PatientIdentifierList()}' action='set' />
<assign value='source.{PID:AlternatePatientIDPID()}' property='target.{PID:AlternatePatientIDPID()}' action='set' />
<assign value='source.{PID:PatientIdentifierList(1).ID}' property='target.{PID:AlternatePatientIDPID(1).ID}' action='set' />
<group>
<assign value='..Pad(source.{PID:PatientID.ID},-10,"0")' property='target.{PID:PatientIdentifierList(1).ID}' action='set' />
<assign value='..Strip(source.{PID:PhoneNumberHome(1)},"*P")' property='target.{PID:PhoneNumberHome(1)}' action='set' />
<assign value='..ReplaceStr(source.{PID:PatientName(1)},".","")' property='target.{PID:PatientName(1)}' action='set' />
</group>
<assign value='source.{PID:PatientAddress()}' property='target.{PID:PatientAddress()}' action='set' />
<assign value='source.{PID:PatientAddress().ziporpostalcode}' property='target.{PID:PatientAddress().ziporpostalcode}' action='set' />
<if condition='..Length(target.{PID:PatientAddress().ziporpostalcode}) &lt; 5' >
<true>
<assign value='"INVALID ZIPCODE"' property='target.{PID:11.5}' action='set' />
<comment>
<annotation>Check the zip code for validity.</annotation>
</comment>
</true>
</if>
<assign value='source.{PID:PatientAddress().country}' property='target.{PID:PatientAddress().country}' action='set' />
<if condition='source.{PID:PatientAddress(1).country}=""' >
<true>
<assign value='"US"' property='target.{PID:PatientAddress(1).country}' action='set' />
</true>
</if>
<assign value='source.{PID:PrimaryLanguage}' property='target.{PID:PrimaryLanguage}' action='set' />
<assign value='source.{PID:PrimaryLanguage.identifier}' property='target.{PID:PrimaryLanguage.identifier}' action='set' />
<if condition='source.{PID:PrimaryLanguage.identifier}=""' >
<true>
<assign value='"UNKNOWN"' property='target.{PID:PrimaryLanguage.identifier}' action='set' />
</true>
</if>
<assign value='source.{PD1}' property='target.{PD1}' action='set' />
<assign value='source.{PV1}' property='target.{PV1}' action='set' />
<assign value='source.{PV2}' property='target.{PV2}' action='set' />
<assign value='##class(HICGTest.Hospital.TheMessageClassName).GetCurrentDateTime()' property='target.{PV2:ExpectedAdmitDateTime}' action='set' />
<assign value='source.{PV2:ClinicOrganizationName()}' property='target.{PV2:ClinicOrganizationName()}' action='set' />
<if condition='..Exists(,target.{PV2:ClinicOrganizationName(1).organizationname})' >
<true>
<assign value='..Lookup("GetShortName",source.{PV2:ClinicOrganizationName(1).organizationname})' property='target.{PV2:ClinicOrganizationName(1).organizationname}' action='set' />
</true>
<false>
<assign value='"UNKNOWN:" + source.{PV2:ClinicOrganizationName(1).organizationname}' property='target.{PV2:ClinicOrganizationName(1).organizationname}' action='set' />
<assign value='"U"' property='target.{PV2:ClinicOrganizationName(1).organizationname}' action='set' />
</false>
</if>
<assign value='source.{DB1()}' property='target.{DB1()}' action='set' />
<group>
<assign value='source.{OBX()}' property='target.{OBX()}' action='set' />
<foreach property='source.{OBX()}' key='k1' >
<subtransform class='HICGTest.Hospital.OBXSetIDOBXCheckDTL' targetObj='target.{OBX(k1)}' sourceObj='source.{OBX(k1)}' />
<assign value='source.{OBX(1):SetIDOBX}' property='target.{OBX(4):SetIDOBX}' action='set' />
<assign value='source.{OBX(1):ValueType}' property='target.{OBX(4):ValueType}' action='set' />
<assign value='source.{OBX(3):ObservationValue}' property='target.{OBX(4):ObservationIdentifier}' action='set' />
</foreach>
</group>
<code>
<![CDATA[ //gets the current date and time then removes a space and a :
 set today=$ZDATETIME($H,8,2) 
 set today=$TRANSLATE(today," :") //notice the space before the :
 do target.SetValueAt(today,"PV2:9")]]></code>
</transform>
}

}
