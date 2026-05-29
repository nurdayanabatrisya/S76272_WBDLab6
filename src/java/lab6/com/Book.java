/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

public class Book {
    private String stuid;
    private String stuname;
    private String stuprogram;

    public Book() {}

    public String getStuid() { return stuid; }
    
    // Regular Expression validation: Must start with Capital letters followed by numbers
    public void setStuid(String stuid) { 
        if (!stuid.matches("^[A-Z]+[0-9]+$")) {
            throw new IllegalArgumentException("Student ID must start with Capital letters followed by numbers (e.g., UK12489)!");
        }
        this.stuid = stuid; 
    }

    public String getStuname() { return stuname; }
    public void setStuname(String stuname) { this.stuname = stuname; }

    public String getStuprogram() { return stuprogram; }
    public void setStuprogram(String stuprogram) { this.stuprogram = stuprogram; }
}