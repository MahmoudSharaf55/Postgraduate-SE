package Model;

public class Admin {
    String AdminName,AdmainMail,AdminPhone,AdmainPassword;
    int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAdminName() {
        return AdminName;
    }

    public void setAdminName(String adminName) {
        AdminName = adminName;
    }

    public String getAdmainMail() {
        return AdmainMail;
    }

    public void setAdmainMail(String admainMail) {
        AdmainMail = admainMail;
    }

    public String getAdminPhone() {
        return AdminPhone;
    }

    public void setAdminPhone(String adminPhone) {
        AdminPhone = adminPhone;
    }

    public String getAdmainPassword() {
        return AdmainPassword;
    }

    public void setAdmainPassword(String admainPassword) {
        AdmainPassword = admainPassword;
    }
}
