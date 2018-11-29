using System;
using System.Collections.Generic;
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
        public async Task<IHttpActionResult> GetScolarships()
        {
            try
            {
                return Ok(await this.scholarshipRepository.GetScholarships());
            }
            catch (Exception)
            {
                return InternalServerError();
            }
        }

        [Route("api/bank")]
        [HttpGet]
        public async Task<IHttpActionResult> GetBankInformations()
        {
            try
            {
                return Ok(await this.scholarshipRepository.GetBankInformation());
            }
            catch (Exception)
            {
                return InternalServerError();
            }
        }

        [Route("api/academic")]
        [HttpGet]
        public async Task<IHttpActionResult> GetAcademicInstitutions()
        {
            try
            {
                return Ok(await this.scholarshipRepository.GetAcademicInstitutions());
            }
            catch (Exception)
            {
                return InternalServerError();
            }
        }

        [Route("api/volunteer")]
        [HttpGet]
        public async Task<IHttpActionResult> GetStudentVolunteer()
        {
            try
            {
                return Ok(await this.scholarshipRepository.GetStudentVolunteer());
            }
            catch (Exception e)
            {
                return InternalServerError();
            }
        }
    }
}
