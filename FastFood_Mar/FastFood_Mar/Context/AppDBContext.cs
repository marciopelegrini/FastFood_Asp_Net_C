using FastFood_Mar.Models;
using Microsoft.EntityFrameworkCore;

namespace FastFood_Mar.Context
{
	public class AppDBContext : DbContext
	{
		public AppDBContext(DbContextOptions<AppDBContext> options) :base(options)
		{

		}

		public DbSet<Categoria> Categorias { get; set; }
		public DbSet<Lanche> Lanches { get; set;}
	}
}

