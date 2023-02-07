using FastFood_Mar.Context;
using FastFood_Mar.Models;
using FastFood_Mar.Repositories.Interfaces;

namespace FastFood_Mar.Repositories
{
    public class CategoriaRepository : ICategoriaRepository
    {
        private readonly AppDBContext _context;

        public CategoriaRepository(AppDBContext context)
        {
            _context = context;
        }

        public IEnumerable<Categoria> Categorias => _context.Categorias;
    }
}
