Use [DemoDB]
go

print 's.t table'
If Not Exists(Select s.[name] + '.' + t.[name]
              From [sys].[tables] t
			  Join [sys].[schemas] s
			    On s.[schema_id] = t.[schema_id]
			  Where s.[name] = N's'
			    And t.[name] = N't')
 begin
  print ' - Creating s.t table'
  Create Table s.t
  (
    id int Not NULL
  , [name] varchar(255) NULL
  )
  print ' - s.t table created'
 end
Else
 begin
  print ' - s.t table already exists.'
 end
print ''