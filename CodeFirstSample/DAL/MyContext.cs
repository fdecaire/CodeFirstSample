using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

namespace CodeFirstSample
{
	public class MyContext : DbContext, IDisposable
	{
		public MyContext()
			: base("My Connection String")
		{

		}

		// define tables here
		public DbSet<Room> Rooms { get; set; }

		public DbRawSqlQuery<RoomListResult> RoomList()
		{
			return this.Database.SqlQuery<RoomListResult>("select_rooms");
		}
	}
}
