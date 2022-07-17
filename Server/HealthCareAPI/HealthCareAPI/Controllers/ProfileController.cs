using HealthCareAPI.IdentityAuth;
using HealthCareAPI.Models;
using HealthCareAPI.ProfileUpdate;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace HealthCareAPI.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class ProfileController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> _userManager;
        public ProfileController(UserManager<ApplicationUser> userManager)
        {
            _userManager = userManager;
        }

        [HttpGet]
        [Route("view-profile")]
        public Task<ApplicationUser> ViewProfile()
        {
            return _userManager.FindByNameAsync(User.Identity.Name);
        }

        [HttpPost]
        [Route("change-email")]
        public async Task<IActionResult> UpdateEmail([FromBody] EmailUpdate model)
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);

            var token = await _userManager.GenerateChangeEmailTokenAsync(user, model.NewEmail);

            var result = await _userManager.ChangeEmailAsync(user, model.NewEmail, token);
            if (!result.Succeeded)
            {
                var errors = new List<string>();
                foreach (var error in result.Errors)
                {
                    errors.Add(error.Description);
                }

                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = string.Join(Environment.NewLine, errors) });
            }

            return Ok(new Response { Status = "Success", Message = "Email updated successfully!" });
        }

        [HttpPost]
        [Route("change-password")]
        public async Task<IActionResult> UpdatePassword([FromBody] PasswordUpdate model)
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);

            if (string.Compare(model.NewPassword, model.ConfirmNewPassword) != 0)
                return StatusCode(StatusCodes.Status400BadRequest, new Response { Status = "Error", Message = "The new password and confirmed new password do not match!" });

            var result = await _userManager.ChangePasswordAsync(user, model.CurrentPassword, model.NewPassword);
            if (!result.Succeeded)
            {
                var errors = new List<string>();
                foreach(var error in result.Errors)
                {
                    errors.Add(error.Description);
                }

                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = string.Join(Environment.NewLine, errors) });
            }

            return Ok(new Response { Status = "Success", Message = "Password updated successfully!" });
        }

    }
}
