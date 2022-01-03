Use [master]
go

print 'DemoDB database'

If Not Exists(Select [name]
              From [sys].[databases]
			  Where [name] = N'DemoDB')
 begin
  print ' - Creating DemoDB database'
  Create Database DemoDB
  print ' - DemoDB database created'
 end
Else
 begin
    print ' - DemoDB database already exists.'
 end
print ''