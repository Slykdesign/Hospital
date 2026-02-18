Class Hospital.ApptListRequest Extends Ens.Request
{

Property Appointments As list Of PatientApptRequest;

Storage Default
{
<Data name="ApptListRequestDefaultData">
<Subscript>"ApptListRequest"</Subscript>
<Value name="1">
<Value>Appointments</Value>
</Value>
</Data>
<DefaultData>ApptListRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
