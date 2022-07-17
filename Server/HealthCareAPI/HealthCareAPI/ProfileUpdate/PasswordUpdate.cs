using System.ComponentModel.DataAnnotations;

namespace HealthCareAPI.ProfileUpdate
{
    public class PasswordUpdate
    {
        [Required(ErrorMessage = "New Password is required")]
        public string CurrentPassword { get; set; }

        [Required(ErrorMessage = "New Password is required")]
        public string NewPassword { get; set; }

        [Required(ErrorMessage = "Corfim New Password is required")]
        public string ConfirmNewPassword { get; set; }
    }
}
