using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using HeznekLaatid.Services.Entities;
using HeznekLaatid.Services.Interfaces;

namespace HeznekLaatid.Services.Controllers
{
    [AllowAnonymous]
    public class ScolarshipController : ApiController
    {
        private readonly IScholarshipRepository scholarshipRepository;
        public ScolarshipController(IScholarshipRepository scholarshipRepository)
        {
            this.scholarshipRepository = scholarshipRepository;
        }

        [Route("api/scolarship")]
        [HttpGet]
        public IEnumerable<Scolarship> GetScolarships()
        {
            return this.scholarshipRepository.GetScholarships();
        }
    }
}
