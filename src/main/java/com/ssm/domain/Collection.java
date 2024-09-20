package com.ssm.domain;

public class Collection {
    public Integer id;
    public String title;
    public String username;
    public String expand;

    @Override
    public String toString() {
        return "collection{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", username='" + username + '\'' +
                ", expand='" + expand + '\'' +
                '}';
    }

    public Collection() {
    }

    public Collection(Integer id, String title, String username, String expand) {
        this.id = id;
        this.title = title;
        this.username = username;
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

    public String getExpand() {
        return expand;
    }

    public void setExpand(String expand) {
        this.expand = expand;
    }
}
