using LibraryManagementBackend.Models;
using Microsoft.EntityFrameworkCore;

namespace LibraryManagementBackend.Data
{
    public class LibraryContext : DbContext
    {
        public LibraryContext(DbContextOptions<LibraryContext> options) : base(options) { }

        //allows to interact with the Books table
        public DbSet<Book> Books { get; set; }
    }
}
