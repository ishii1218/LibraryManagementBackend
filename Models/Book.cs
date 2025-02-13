using System.ComponentModel.DataAnnotations;

namespace LibraryManagementBackend.Models
{
    public class Book
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public required string Title { get; set; }

        [Required]
        public required string Author { get; set; }

        public required string Description { get; set; }
    }
}
