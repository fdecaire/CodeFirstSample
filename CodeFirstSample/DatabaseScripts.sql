USE [APIUniversity]
GO

-- Create the Room table
CREATE TABLE [dbo].[Room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[RoomNumber] [int] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- populate table
insert into room (name,roomnumber) values ('Gym',1)
insert into room (name,roomnumber) values ('Math Room',100)
insert into room (name,roomnumber) values ('Chemistry Lab',101)
insert into room (name,roomnumber) values ('Lecture 1',102)
insert into room (name,roomnumber) values ('Lecture 2',103)
insert into room (name,roomnumber) values ('Art Room',104)


-- create the stored procedure
CREATE PROCEDURE [dbo].[select_rooms]
AS
BEGIN
	SELECT id,name FROM Room
END
GO
