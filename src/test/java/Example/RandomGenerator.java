package Example;

public class RandomGenerator {
    public static String randomName() {
        int randomNumber = (int) (Math.random() * 100);
        return "name-" + randomNumber;
    }
    public static String randomNumericID() {
        int id = (int) (Math.random() * 100);
        return String.format("%02d", id);
    }

    public static String randomDogName() {
        String[] dogNames = {"Buddy", "Bella", "Charlie", "Lucy", "Max", "Daisy", "Rocky", "Molly", "Bailey", "Sadie"};
        int randomIndex = (int) (Math.random() * dogNames.length);
        return dogNames[randomIndex];
    }
}