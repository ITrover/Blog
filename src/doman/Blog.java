package doman;

import java.util.Date;

public class Blog {
    private int id;
    private String title;
    private Date date;
    private String content;
    private  String owner;

    public String getOwner() {
        return owner;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public Blog() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", date=" + date +
                ", content='" + content + '\'' +
                ", owner='" + owner + '\'' +
                '}';
    }
}
