package com.ssm.domain;

public class Classics {
    private Integer id;
    private String title;
    private String author;
    private String download1;
    private String password1;
    private String translator;
    private String download2;
    private String password2;
    private String kind;
    private String expand;
    private String information;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDownload1() {
        return download1;
    }

    public void setDownload1(String download1) {
        this.download1 = download1;
    }

    public String getPassword1() {
        return password1;
    }

    public void setPassword1(String password1) {
        this.password1 = password1;
    }

    public String getTranslator() {
        return translator;
    }

    public void setTranslator(String translator) {
        this.translator = translator;
    }

    public String getDownload2() {
        return download2;
    }

    public void setDownload2(String download2) {
        this.download2 = download2;
    }

    public String getPassword2() {
        return password2;
    }

    public void setPassword2(String password2) {
        this.password2 = password2;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getExpand() {
        return expand;
    }

    public void setExpand(String expand) {
        this.expand = expand;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    @Override
    public String toString() {
        return "Classics{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", download1='" + download1 + '\'' +
                ", password1='" + password1 + '\'' +
                ", translator='" + translator + '\'' +
                ", download2='" + download2 + '\'' +
                ", password2='" + password2 + '\'' +
                ", kind='" + kind + '\'' +
                ", expand='" + expand + '\'' +
                ", information='" + information + '\'' +
                '}';
    }


    public Classics() {
    }

    public Classics(Integer id, String title, String author, String download1, String password1, String translator, String download2, String password2, String kind, String expand, String information) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.download1 = download1;
        this.password1 = password1;
        this.translator = translator;
        this.download2 = download2;
        this.password2 = password2;
        this.kind = kind;
        this.expand = expand;
        this.information = information;
    }
}
