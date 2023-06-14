package SqlClasses;

import java.util.Date;

public class YoungestEldestWorkerClient {
     private String name;
     private Date dob;
     private String type;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "YoungestEldestWorker {" +
                "type - " + type + ", " +
                "name - " + name + ", " +
                "Dob - " + dob +
                " }";
    }
}
