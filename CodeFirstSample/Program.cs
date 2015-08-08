using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirstSample
{
	class Program
	{
		static void Main(string[] args)
		{
			using (var db = new MyContext())
			{
				var results = db.RoomList();

				foreach (var item in results)
				{
					Console.WriteLine(item.Name);
				}

				Console.ReadKey();
			}
		}
	}
}
