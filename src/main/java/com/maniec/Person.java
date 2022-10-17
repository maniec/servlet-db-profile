package com.maniec;

public class Person {

    private String name;
    private String favoriteFruit;

    public Person(String name, String favoriteFruit) {
        this.name = name;
        this.favoriteFruit = favoriteFruit;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFavoriteFruit() {
        return favoriteFruit;
    }

    public void setFavoriteFruit(String favoriteFruit) {
        this.favoriteFruit = favoriteFruit;
    }

    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", favoriteFruit='" + favoriteFruit + '\'' +
                '}';
    }
}
