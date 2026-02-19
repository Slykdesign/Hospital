Class Hospital.PatientApptRequest Extends Ens.Request
{

Property PatientID As %Integer;

Property PatientName As %String;

Property ApptTime As %String;

Property ApptDate As %String;

Storage Default
{
<Data name="PatientApptRequestDefaultData">
<Subscript>"PatientApptRequest"</Subscript>
<Value name="1">
<Value>PatientID</Value>
</Value>
<Value name="2">
<Value>PatientName</Value>
</Value>
<Value name="3">
<Value>ApptTime</Value>
</Value>
<Value name="4">
<Value>ApptDate</Value>
</Value>
</Data>
<DefaultData>PatientApptRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
