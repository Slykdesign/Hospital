Class Hospital.PrimaryPhysicianRequest Extends Ens.Request
{

Property PatientID As %Integer;

Storage Default
{
<Data name="PrimaryPhysicianRequestDefaultData">
<Subscript>"PrimaryPhysicianRequest"</Subscript>
<Value name="1">
<Value>PatientID</Value>
</Value>
</Data>
<DefaultData>PrimaryPhysicianRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
