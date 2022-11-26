class Acc
{
    private String name;
    private int age;
    private String addrs;
    private String phno;
    private String dob;
    public Acc(String n,int ag,String addrs,String phno,String db)
    {
        name=n;
        age=ag;
        this.addrs=addrs;
        this.phno=phno;
        dob=db;
    }
    public int getage()
    {
        return age;
    }
    public String getaddrs()
    {
        return addrs;
    }
    public void setage(int age)
    {
        this.age=age;
    }
    public void setaddrs(String addr)
    {
        addrs=addr;
    }
    public void show()
    {
        System.out.println("name: "+name+" age: "+age+" addrs: "+addrs+" phno: "+phno+" dob: "+dob);
    }
}
class details extends Acc
{
    int balance;
    public details(String n, int ag, String addrs, String phno, String db,int balance) {
        super(n, ag, addrs, phno, db);
        balance=this.balance;

    }


    public void deposit(int amt)
{
    balance=balance+amt;
}
    public void withdraw(int amt)
    {
        balance=balance-amt;
    }
    public void display()
    {
        System.out.print("balace "+balance);
    }
}
public class Account {
    public static void main(String args[])
    {
        details d=new details("hema",13,"pnr","89678756456","67/09/2002",123);
        d.show();
        d.deposit(898);
        //d.withdraw(900);
        d.display();

    }

}
