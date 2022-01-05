Use [DemoDB]
go

print 's.i stored procedure'
If Exists(Select s.[name] + '.' + p.[name]
          From [sys].[procedures] p
          Join [sys].[schemas] s
            On s.[schema_id] = p.[schema_id]
          Where s.[name] = N's'
            And p.[name] = N'i')
 begin
  print ' - Dropping s.i stored procedure'
  Drop Procedure s.i
  print ' - s.i stored procedure dropped'
 end

print ' - Creating s.i stored procedure'

go

Create Procedure s.i
  @id int
, @name varchar(255)
As

Insert Into s.i
  (id
, [name])
Values
 (@id
, @name)

go

print ' - s.i stored procedure created'
print ''