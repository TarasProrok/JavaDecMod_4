package SqlClasses;

public class LongestProjectClient {
    private String name;
    private int monthCount;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getMonthCount() {
        return monthCount;
    }

    public void setMonthCount(int monthCount) {
        this.monthCount = monthCount;
    }

    @Override
    public String toString() {
        return "Longest Project { " +
                "name - " + name +", "+
                "months - " + monthCount +
                " }";

        }
    }
