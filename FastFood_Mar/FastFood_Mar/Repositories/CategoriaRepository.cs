using FastFood_Mar.Context;
using FastFood_Mar.Models;
using FastFood_Mar.Repositories.Interfaces;

namespace FastFood_Mar.Repositories
{
    public class CategoriaRepository : ICategoriaRepository
    {
        private readonly AppDbContext _context;

        public CategoriaRepository(AppDbContext context)
        {
            _context = context;
        }

        public IEnumerable<Categoria> Categorias => _context.Categorias;
    }
}
