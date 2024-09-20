package com.ssm.domain;

public class Periodical {
    private Integer id;
    private String title;
    private String author;
    private String summary;
    private String expand;
    private String download;
    private String passward;

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

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getExpand() {
        return expand;
    }

    public void setExpand(String expand) {
        this.expand = expand;
    }

    public String getDownload() {
        return download;
    }

    public void setDownload(String download) {
        this.download = download;
    }

    public String getPassward() {
        return passward;
    }

    public void setPassward(String passward) {
        this.passward = passward;
    }

    @Override
    public String toString() {
        return "Periodical{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", summary='" + summary + '\'' +
                ", expand='" + expand + '\'' +
                ", download='" + download + '\'' +
                ", passward='" + passward + '\'' +
                '}';
    }

    public Periodical() {
    }

    public Periodical(Integer id, String title, String author, String summary, String expand, String download, String passward) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.summary = summary;
        this.expand = expand;
        this.download = download;
        this.passward = passward;
    }
}
