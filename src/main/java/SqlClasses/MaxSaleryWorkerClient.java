package SqlClasses;

public class MaxSaleryWorkerClient {
    private String name;
    private int salery;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSalery() {
        return salery;
    }

    public void setSalery(int salery) {
        this.salery = salery;
    }

    @Override
    public String toString() {
        return "Max Salery Worker { " +
                "name - " + name + ", " +
                "salery - " + salery +
                " }";
    }
}
