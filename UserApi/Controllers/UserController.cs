using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using UserApi.models;

namespace UserApi.Controllers
{
    [Route("users")]
    [ApiController]
    public class UserController : ControllerBase
    {
        [HttpGet]
        public ActionResult<User> Get()
        {
            using (var context = new UserDbContext())
            {
                return Ok(context.NewUsers.ToList());
            }
                
        }


        [HttpPost]
        public ActionResult<User> Post(Dto.CreateUserDto createUserDto)
        {
            using (var context = new UserDbContext())
            {
                var user = new User
                {
                    Id = Guid.NewGuid(),
                    Name = createUserDto.Name,
                    Age = createUserDto.Age,
                    License = createUserDto.License,
                };

                if (user != null)
                {
                    context.NewUsers.Add(user);
                    context.SaveChanges();
                    return Ok(user);
                }
                return BadRequest();

                
            }
        }
    }
}
