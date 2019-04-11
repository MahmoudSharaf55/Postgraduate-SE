package Model;

public class Student {
    public static Student currentStudent;
    private int id;
    private String username;
    private String email;
    private String password;
    private String form;
    private String status;
    private String paper;

    public Student(String username, String email, String password, String form) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.form = form;
    }

    public static void setCurrentStudent(Student currentStudent) {
        Student.currentStudent = currentStudent;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getForm() {
        return form;
    }

    public void setForm(String form) {
        this.form = form;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPaper() {
        return paper;
    }

    public void setPaper(String paper) {
        this.paper = paper;
    }
}
