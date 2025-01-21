namespace Backend.Models
{
    public class ServerPart
    {
        public int Id { get; set; }
        public string Name { get; set; } = string.Empty; // Default value
        public string Manufacturer { get; set; } = string.Empty; // Default value
        public decimal Price { get; set; }
        public string Vendor { get; set; } = string.Empty; // Default value
    }
}
