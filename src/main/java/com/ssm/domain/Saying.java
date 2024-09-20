package com.ssm.domain;

public class Saying {
    private Integer id;
    private String say1;
    private String say2;
    private String author;
    private String expand;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSay1() {
        return say1;
    }

    public void setSay1(String say1) {
        this.say1 = say1;
    }

    public String getSay2() {
        return say2;
    }

    public void setSay2(String say2) {
        this.say2 = say2;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getExpand() {
        return expand;
    }

    public void setExpand(String expand) {
        this.expand = expand;
    }

    @Override
    public String toString() {
        return "Saying{" +
                "id=" + id +
                ", say1='" + say1 + '\'' +
                ", say2='" + say2 + '\'' +
                ", author='" + author + '\'' +
                ", expand='" + expand + '\'' +
                '}';
    }

    public Saying(Integer id, String say1, String say2, String author, String expand) {
        this.id = id;
        this.say1 = say1;
        this.say2 = say2;
        this.author = author;
        this.expand = expand;
    }

    public Saying() {
    }
}
