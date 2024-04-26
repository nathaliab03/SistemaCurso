using Microsoft.AspNetCore.Mvc;

namespace CadastroCursoAluno.Controllers
{
    public class AlunoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
