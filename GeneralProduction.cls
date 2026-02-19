Class Hospital.GeneralProduction Extends Ens.Request
{

XData ProductionDefinition
{
<Production Name="Hospital. General Production" TestingEnabled="true" LogGeneralTraceEvents="false">
	<Description></Description>
	<ActorPoolSize>2</ActorPoolSize>
	<Item Name="Hospital. PatientDBOperation" Category="" ClassName="Hospital. PatientDBOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
		<Setting Target="Adapter" Name="DSN">User</Setting>
	</Item>
	<Item Name="Hospital.MakeLetterOperation" Category="" ClassName="Hospital.MakeLetterOperation" PoolSize="1" Enabled="true" Foreground="fals e" Comment="" LogTraceEvents="false" Schedule="">
		<Setting Target="Adapter" Name="FilePath">/home/kasm-user/Desktop/project/data/Out</Setting>
		<Setting Target="Adapter" Name="Overwrite">1</Setting>
	</Item>
</Production>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
