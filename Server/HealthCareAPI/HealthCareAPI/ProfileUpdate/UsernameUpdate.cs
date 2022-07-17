using System.ComponentModel.DataAnnotations;

namespace HealthCareAPI.ProfileUpdate
{
    public class UsernameUpdate
    {
        [Required(ErrorMessage = "Please enter your new username.")]
        public string Username { get; set; }
    }
}
