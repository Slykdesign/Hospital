Class Hospital.AllergyDataDTL Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='2.3.1:ORM_O01' targetDocType='PharmacySchema:ORM_O01' create='new' language='objectscript' >
<assign value='source.{MSH}' property='target.{MSH}' action='set' />
<assign value='source.{NTE()}' property='target.{NTE()}' action='set' />
<assign value='source.{PIDgrp}' property='target.{PIDgrp}' action='set' />
<assign value='source.{PIDgrp.PID}' property='target.{PIDgrp.PID}' action='set' />
<assign value='source.{PIDgrp.PD1}' property='target.{PIDgrp.PD1}' action='set' />
<assign value='source.{PIDgrp.NTE()}' property='target.{PIDgrp.NTE()}' action='set' />
<assign value='source.{PIDgrp.PV1grp}' property='target.{PIDgrp.PV1grp}' action='set' />
<assign value='source.{PIDgrp.PV1grp.PV1}' property='target.{PIDgrp.PV1grp.PV1}' action='set' />
<assign value='source.{PIDgrp.PV1grp.PV2}' property='target.{PIDgrp.PV1grp.PV2}' action='set' />
<assign value='source.{PIDgrp.IN1grp()}' property='target.{PIDgrp.IN1grp()}' action='set' />
<assign value='source.{PIDgrp.IN1grp().IN1}' property='target.{PIDgrp.IN1grp().IN1}' action='set' />
<assign value='source.{PIDgrp.IN1grp().IN2}' property='target.{PIDgrp.IN1grp().IN2}' action='set' />
<assign value='source.{PIDgrp.IN1grp().IN3}' property='target.{PIDgrp.IN1grp().IN3()}' action='set' />
<assign value='source.{PIDgrp.GT1}' property='target.{PIDgrp.GT1}' action='set' />
<assign value='source.{PIDgrp.AL1()}' property='target.{PIDgrp.AL1()}' action='set' />
<if condition='source.{PIDgrp.AL1(1):AllergyType}&apos;=""'  expanded='false' >
<true>
<assign value='"ALLERGY"' property='target.{ZAL:AllergyIdentified}' action='set' />
</true>
</if>
<assign value='source.{ORCgrp()}' property='target.{ORCgrp()}' action='set' />
<assign value='source.{ORCgrp().ORC}' property='target.{ORCgrp().ORC}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp}' property='target.{ORCgrp().OBRuniongrp}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp.OBRunion}' property='target.{ORCgrp().OBRuniongrp.OBRunion}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp.OBRunion.OBR}' property='target.{ORCgrp().OBRuniongrp.OBRunion.OBR}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp.OBRunion.RQD}' property='target.{ORCgrp().OBRuniongrp.OBRunion.RQD}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp.OBRunion.RQ1}' property='target.{ORCgrp().OBRuniongrp.OBRunion.RQ1}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp.OBRunion.ODS}' property='target.{ORCgrp().OBRuniongrp.OBRunion.ODS}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp.OBRunion.ODT}' property='target.{ORCgrp().OBRuniongrp.OBRunion.ODT}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp.OBRunion.RXO}' property='target.{ORCgrp().OBRuniongrp.OBRunion.RXO}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp.NTE()}' property='target.{ORCgrp().OBRuniongrp.NTE()}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp.DG1()}' property='target.{ORCgrp().OBRuniongrp.DG1()}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp.OBXgrp()}' property='target.{ORCgrp().OBRuniongrp.OBXgrp()}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp.OBXgrp().OBX}' property='target.{ORCgrp().OBRuniongrp.OBXgrp().OBX}' action='set' />
<assign value='source.{ORCgrp().OBRuniongrp.OBXgrp().NTE()}' property='target.{ORCgrp().OBRuniongrp.OBXgrp().NTE()}' action='set' />
<assign value='source.{ORCgrp().CTI()}' property='target.{ORCgrp().CTI()}' action='set' />
<assign value='source.{ORCgrp().BLG}' property='target.{ORCgrp().BLG}' action='set' />
</transform>
}

}
