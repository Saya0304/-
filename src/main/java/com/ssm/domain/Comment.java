package com.ssm.domain;

public class Comment {
    private Integer id;
    private String title;
    private String username;
    private String text;
    private String expand;

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", username='" + username + '\'' +
                ", text='" + text + '\'' +
                ", expand='" + expand + '\'' +
                '}';
    }

    public Comment() {
    }

    public Comment(Integer id, String title, String username, String text, String expand) {
        this.id = id;
        this.title = title;
        this.username = username;
        this.text = text;
        this.expand = expand;
    }

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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getExpand() {
        return expand;
    }

    public void setExpand(String expand) {
        this.expand = expand;
    }
}
