Use [DemoDB]
go

print 's Schema'

If Not Exists(Select [name]
              From [sys].[schemas]
			  Where [name] = N's')
 begin
  print ' - Creating s schema'
  declare @sSchemaSql varchar(100) = 'Create Schema s'
  exec(@sSchemaSql)
  print ' - s schema created'
 end
Else
 begin
    print ' - s schema already exists.'
 end
print ''