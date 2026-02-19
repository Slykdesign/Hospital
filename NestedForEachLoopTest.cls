Class Hospital.NestedForEachLoopTest Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='2.5:ADT_A01' targetDocType='2.5:ADT_A01' create='new' language='objectscript' >
<annotation>Testing usage of ForEach loops.</annotation>
<assign value='source.{MSH}' property='target.{MSH}' action='set' />
<assign value='source.{SFT()}' property='target.{SFT()}' action='set' />
<assign value='source.{EVN}' property='target.{EVN}' action='set' />
<assign value='source.{PID}' property='target.{PID}' action='set' />
<assign value='source.{PD1}' property='target.{PD1}' action='set' />
<assign value='source.{ROL()}' property='target.{ROL()}' action='set' />
<assign value='source.{NK1()}' property='target.{NK1()}' action='set' />
<assign value='source.{PV1}' property='target.{PV1}' action='set' />
<assign value='source.{PV2}' property='target.{PV2}' action='set' />
<assign value='source.{ROLi2()}' property='target.{ROLi2()}' action='set' />
<assign value='source.{DB1()}' property='target.{DB1()}' action='set' />
<assign value='source.{OBX()}' property='target.{OBX()}' action='set' />
<assign value='source.{AL1()}' property='target.{AL1()}' action='set' />
<assign value='source.{DG1()}' property='target.{DG1()}' action='set' />
<assign value='source.{DRG}' property='target.{DRG}' action='set' />
<assign value='source.{PR1grp()}' property='target.{PR1grp()}' action='set' />
<assign value='source.{PR1grp().PR1}' property='target.{PR1grp().PR1}' action='set' />
<assign value='source.{PR1grp().ROL()}' property='target.{PR1grp().ROL()}' action='set' />
<assign value='source.{GT1()}' property='target.{GT1()}' action='set' />
<assign value='source.{IN1grp()}' property='target.{IN1grp()}' action='set' />
<assign value='source.{IN1grp().IN1}' property='target.{IN1grp().IN1}' action='set' />
<assign value='source.{IN1grp().IN2}' property='target.{IN1grp().IN2}' action='set' />
<assign value='source.{IN1grp().IN3()}' property='target.{IN1grp().IN3()}' action='set' />
<foreach property='source.{IN1grp()}' key='k1' >
<foreach property='source.{IN1grp(k1).IN3()}' key='k2' >
<assign value='k2 _ ":" _ source.{IN1grp(k1).IN3(k2):SetIDIN3}' property='target.{IN1grp(k1).IN3(k2):SetIDIN3}' action='set' />
</foreach>
</foreach>
<foreach property='source.{IN1grp()}' key='k3' >
<foreach property='source.{IN1grp(k3).IN1:InsuranceCoContactPerson()}' key='k4' >
<if condition='k4=2' >
<true>
<assign value='"Only call if first contact not available"' property='target.{IN1grp(k3).IN1:InsuranceCoContactPerson(k4).NameContext}' action='set' />
</true>
</if>
<if condition='k4=3' >
<true>
<assign value='"Only call if first and second contacts not available"' property='target.{IN1grp(k3).IN1:InsuranceCoContactPerson(k4).NameContext}' action='set' />
</true>
</if>
</foreach>
</foreach>
<assign value='source.{IN1grp().ROL()}' property='target.{IN1grp().ROL()}' action='set' />
<assign value='source.{ACC}' property='target.{ACC}' action='set' />
<assign value='source.{UB1}' property='target.{UB1}' action='set' />
<assign value='source.{UB2}' property='target.{UB2}' action='set' />
<assign value='source.{PDA}' property='target.{PDA}' action='set' />
</transform>
}

}
