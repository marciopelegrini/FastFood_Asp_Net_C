using FastFood_Mar.Models;

namespace FastFood_Mar.Repositories.Interfaces
{
    public interface ICategoriaRepository
    {
        IEnumerable<Categoria> Categorias { get; }
    }
}
