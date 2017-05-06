package model;

public class Customers {
    private int custID;
    private String firstName;
    private String lastName; 
    private String addrOne;
    private String addrTwo; 
    private String city;
    private String state;
    private String zip;
    private String emailAddr;
    
    public Customers() {
        this.custID = 0;
        this.firstName = "";
        this.lastName = "";
        this.addrOne = "";
        this.addrTwo = "";
        this.city = "";
        this.state = "";
        this.zip = "";
        this.emailAddr = "";
    }
    
    public Customers(int custID, String firstName, String lastName, String addrOne, String addrTwo, String city, String state, String zip, String emailAddr) {
        this.custID = custID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.addrOne = addrOne;
        this.addrTwo = addrTwo;
        this.city = city;
        this.state = state;
        this.zip = zip;
        this.emailAddr = emailAddr;
    }

    public int getCustID() {
        return custID;
    }

    public void setCustID(int custID) {
        this.custID = custID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddrOne() {
        return addrOne;
    }

    public void setAddrOne(String addrOne) {
        this.addrOne = addrOne;
    }

    public String getAddrTwo() {
        return addrTwo;
    }

    public void setAddrTwo(String addrTwo) {
        this.addrTwo = addrTwo;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getEmailAddr() {
        return emailAddr;
    }

    public void setEmailAddr(String emailAddr) {
        this.emailAddr = emailAddr;
    }

    @Override
    public String toString() {
        return "Customers{" + "custID=" + custID + ", firstName=" + firstName + ", lastName=" + lastName + ", addrOne=" + addrOne + ", addrTwo=" + addrTwo + ", city=" + city + ", state=" + state + ", zip=" + zip + ", emailAddr=" + emailAddr + '}';
    }
    
    
}
