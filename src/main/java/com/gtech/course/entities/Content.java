package com.gtech.course.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_content")
public class Content extends Lesson {

    private String textContent;
    private String imgUri;

    public Content() {
    }

    public Content(Long id, String title, Integer position, Section section, String imgUri, String textContent) {
        super(id, title, position, section);
        this.imgUri = imgUri;
        this.textContent = textContent;
    }

    public String getImgUri() {
        return imgUri;
    }

    public void setImgUri(String imgUri) {
        this.imgUri = imgUri;
    }

    public String getTextContent() {
        return textContent;
    }

    public void setTextContent(String textContent) {
        this.textContent = textContent;
    }
}
