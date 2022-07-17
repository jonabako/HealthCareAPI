using System.ComponentModel.DataAnnotations;

namespace HealthCareAPI.ProfileUpdate
{
    public class EmailUpdate
    {
        [EmailAddress]
        [Required(ErrorMessage = "New Email is required.")]
        public string NewEmail { get; set; }
    }
}
