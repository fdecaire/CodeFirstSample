using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CodeFirstSample
{
	[Table("Room")]
	public class Room
	{
		[Key]
		public int id { get; set; }
		public string Name { get; set; }
		public int RoomNumber { get; set; }
	}
}
