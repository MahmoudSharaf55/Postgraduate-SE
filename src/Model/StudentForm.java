package Model;

public class StudentForm {
    String paper,status, dept, round, for_year, name, dob, city, country, governorate, nationality, religion, card_src, card_date, army, job, job_address, phone, b_in, b_role, b_rate, b_dept, b_sp_rate, b_graduation_src, b_graduation_year, enrolling_dept, m_in, m_role, m_sp_rate, m_rate, m_src, form_type;
    int id , s_id , card_id ,b_mark , m_mark;

    public StudentForm(String paper, String status, String dept, String round, String for_year, String name, String dob, String city, String country, String governorate, String nationality, String religion, int card_id, String card_src, String card_date, String army, String job, String job_address, String phone, String b_in, String b_role, String b_rate, String b_dept, String b_sp_rate, int b_mark, String b_graduation_src, String b_graduation_year, String enrolling_dept, String m_in, String m_role, String m_sp_rate, String m_rate, int m_mark, String m_src, String form_type, int s_id) {
        this.paper = paper;
        this.status = status;
        this.dept = dept;
        this.round = round;
        this.for_year = for_year;
        this.name = name;
        this.dob = dob;
        this.city = city;
        this.country = country;
        this.governorate = governorate;
        this.nationality = nationality;
        this.religion = religion;
        this.card_id = card_id;
        this.card_src = card_src;
        this.card_date = card_date;
        this.army = army;
        this.job = job;
        this.job_address = job_address;
        this.phone = phone;
        this.b_in = b_in;
        this.b_role = b_role;
        this.b_rate = b_rate;
        this.b_dept = b_dept;
        this.b_sp_rate = b_sp_rate;
        this.b_mark = b_mark;
        this.b_graduation_src = b_graduation_src;
        this.b_graduation_year = b_graduation_year;
        this.enrolling_dept = enrolling_dept;
        this.m_in = m_in;
        this.m_role = m_role;
        this.m_sp_rate = m_sp_rate;
        this.m_rate = m_rate;
        this.m_mark = m_mark;
        this.m_src = m_src;
        this.form_type = form_type;
        this.s_id = s_id;
    }

    public StudentForm(String paper, String status, String dept, String round, String for_year, String name, String dob, String city, String country, String governorate, String nationality, String religion, int card_id, String card_src, String card_date, String army, String job, String job_address, String phone, String b_in, String b_role, String b_rate, String b_dept, String b_sp_rate, int b_mark, String b_graduation_src, String b_graduation_year, String enrolling_dept, String form_type, int s_id) {
        this.paper = paper;
        this.status = status;
        this.dept = dept;
        this.round = round;
        this.for_year = for_year;
        this.name = name;
        this.dob = dob;
        this.city = city;
        this.country = country;
        this.governorate = governorate;
        this.nationality = nationality;
        this.religion = religion;
        this.card_id = card_id;
        this.card_src = card_src;
        this.card_date = card_date;
        this.army = army;
        this.job = job;
        this.job_address = job_address;
        this.phone = phone;
        this.b_in = b_in;
        this.b_role = b_role;
        this.b_rate = b_rate;
        this.b_dept = b_dept;
        this.b_sp_rate = b_sp_rate;
        this.b_mark = b_mark;
        this.b_graduation_src = b_graduation_src;
        this.b_graduation_year = b_graduation_year;
        this.enrolling_dept = enrolling_dept;
        this.form_type = form_type;
        this.s_id = s_id;
    }

    public String getPaper() {
        return paper;
    }

    public void setPaper(String paper) {
        this.paper = paper;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public String getRound() {
        return round;
    }

    public void setRound(String round) {
        this.round = round;
    }

    public String getFor_year() {
        return for_year;
    }

    public void setFor_year(String for_year) {
        this.for_year = for_year;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getGovernorate() {
        return governorate;
    }

    public void setGovernorate(String governorate) {
        this.governorate = governorate;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public int getCard_id() {
        return card_id;
    }

    public void setCard_id(int card_id) {
        this.card_id = card_id;
    }

    public String getCard_src() {
        return card_src;
    }

    public void setCard_src(String card_src) {
        this.card_src = card_src;
    }

    public String getCard_date() {
        return card_date;
    }

    public void setCard_date(String card_date) {
        this.card_date = card_date;
    }

    public String getArmy() {
        return army;
    }

    public void setArmy(String army) {
        this.army = army;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getJob_address() {
        return job_address;
    }

    public void setJob_address(String job_address) {
        this.job_address = job_address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getB_in() {
        return b_in;
    }

    public void setB_in(String b_in) {
        this.b_in = b_in;
    }

    public String getB_role() {
        return b_role;
    }

    public void setB_role(String b_role) {
        this.b_role = b_role;
    }

    public String getB_rate() {
        return b_rate;
    }

    public void setB_rate(String b_rate) {
        this.b_rate = b_rate;
    }

    public String getB_dept() {
        return b_dept;
    }

    public void setB_dept(String b_dept) {
        this.b_dept = b_dept;
    }

    public String getB_sp_rate() {
        return b_sp_rate;
    }

    public void setB_sp_rate(String b_sp_rate) {
        this.b_sp_rate = b_sp_rate;
    }

    public int getB_mark() {
        return b_mark;
    }

    public void setB_mark(int b_mark) {
        this.b_mark = b_mark;
    }

    public String getB_graduation_src() {
        return b_graduation_src;
    }

    public void setB_graduation_src(String b_graduation_src) {
        this.b_graduation_src = b_graduation_src;
    }

    public String getB_graduation_year() {
        return b_graduation_year;
    }

    public void setB_graduation_year(String b_graduation_year) {
        this.b_graduation_year = b_graduation_year;
    }

    public String getEnrolling_dept() {
        return enrolling_dept;
    }

    public void setEnrolling_dept(String enrolling_dept) {
        this.enrolling_dept = enrolling_dept;
    }

    public String getM_in() {
        return m_in;
    }

    public void setM_in(String m_in) {
        this.m_in = m_in;
    }

    public String getM_role() {
        return m_role;
    }

    public void setM_role(String m_role) {
        this.m_role = m_role;
    }

    public String getM_sp_rate() {
        return m_sp_rate;
    }

    public void setM_sp_rate(String m_sp_rate) {
        this.m_sp_rate = m_sp_rate;
    }

    public String getM_rate() {
        return m_rate;
    }

    public void setM_rate(String m_rate) {
        this.m_rate = m_rate;
    }

    public int getM_mark() {
        return m_mark;
    }

    public void setM_mark(int m_mark) {
        this.m_mark = m_mark;
    }

    public String getM_src() {
        return m_src;
    }

    public void setM_src(String m_src) {
        this.m_src = m_src;
    }

    public String getForm_type() {
        return form_type;
    }

    public void setForm_type(String form_type) {
        this.form_type = form_type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getS_id() {
        return s_id;
    }

    public void setS_id(int s_id) {
        this.s_id = s_id;
    }
}
