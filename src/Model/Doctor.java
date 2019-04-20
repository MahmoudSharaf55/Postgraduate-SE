package Model;

public  class Doctor {
    String doctorName,doctorEmail,doctorphone,doctorPassword,doctordepartment;
    int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public String getDoctordepartment() {
        return doctordepartment;
    }

    public void setDoctordepartment(String doctordepartment) {
        this.doctordepartment = doctordepartment;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getDoctorEmail() {
        return doctorEmail;
    }

    public void setDoctorEmail(String doctorEmail) {
        this.doctorEmail = doctorEmail;
    }

    public String getDoctorphone() {
        return doctorphone;
    }

    public void setDoctorphone(String doctorphone) {
        this.doctorphone = doctorphone;
    }

    public String getDoctorPassword() {
        return doctorPassword;
    }

    public void setDoctorPassword(String doctorPassword) {
        this.doctorPassword = doctorPassword;
    }

}
