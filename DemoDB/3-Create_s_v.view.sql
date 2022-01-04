Use [DemoDB]
go

print 's.v view'
If Exists(Select s.[name] + '.' + v.[name]
          From [sys].[views] v
          Join [sys].[schemas] s
            On s.[schema_id] = v.[schema_id]
          Where s.[name] = N's'
            And v.[name] = N'v')
 begin
  print ' - Dropping s.v view'
  Drop View s.v
  print ' - s.v view dropped'
 end

print ' - Creating s.v view'

go

Create View s.v
As

Select
  id
, [name]
From s.t

go

print ' - s.v view created'
print ''