using Microsoft.AspNetCore.Mvc;

namespace CadastroCursoAluno.Controllers
{
    public class CursoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
