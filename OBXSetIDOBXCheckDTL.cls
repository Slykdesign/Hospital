Class Hospital.OBXSetIDOBXCheckDTL Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Segment ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Segment' targetClass='EnsLib.HL7.Segment' sourceDocType='2.3.1:OBX' targetDocType='2.3.1:OBX' create='new' language='objectscript' >
<assign value='source.{SetIDOBX}' property='target.{SetIDOBX}' action='set' />
<if condition='source.{SetIDOBX}=""' >
<true>
<assign value='"NOT SPECIFIED"' property='target.{SetIDOBX}' action='set' />
</true>
</if>
<assign value='source.{ValueType}' property='target.{ValueType}' action='set' />
<assign value='source.{ObservationIdentifier}' property='target.{ObservationIdentifier}' action='set' />
<assign value='source.{ObservationSubID}' property='target.{ObservationSubID}' action='set' />
<assign value='source.{ObservationValue()}' property='target.{ObservationValue()}' action='set' />
<assign value='source.{Units}' property='target.{Units}' action='set' />
<assign value='source.{ReferencesRange}' property='target.{ReferencesRange}' action='set' />
<assign value='source.{AbnormalFlags()}' property='target.{AbnormalFlags()}' action='set' />
<assign value='source.{Probability()}' property='target.{Probability()}' action='set' />
<assign value='source.{NatureofAbnormalTest}' property='target.{NatureofAbnormalTest}' action='set' />
<assign value='source.{ObservationResultStatus}' property='target.{ObservationResultStatus}' action='set' />
<assign value='source.{DateLastObsNormalValues}' property='target.{DateLastObsNormalValues}' action='set' />
<assign value='source.{UserDefinedAccessChecks}' property='target.{UserDefinedAccessChecks}' action='set' />
<assign value='source.{DateTimeoftheObservation}' property='target.{DateTimeoftheObservation}' action='set' />
<assign value='source.{ProducersID}' property='target.{ProducersID}' action='set' />
<assign value='source.{ResponsibleObserver()}' property='target.{ResponsibleObserver()}' action='set' />
<assign value='source.{ObservationMethod()}' property='target.{ObservationMethod()}' action='set' />
</transform>
}

}
