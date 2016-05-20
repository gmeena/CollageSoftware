namespace DatabaseEntity.Account
{
    public interface IPerson
    {
        string DOB { get; set; }
        string Email { get; set; }
        string First_Name { get; set; }
        string Gender { get; set; }
        int Gender_Id { get; set; }
        string Last_Name { get; set; }
        string Middle_Name { get; set; }
        int Person_Id { get; set; }
        string Phone { get; set; }

        string GetFullName();
    }
}