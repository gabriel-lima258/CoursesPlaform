package com.gtech.course.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_content")
public class Content extends Lesson {

    private String textContent;
    private String videoUri;

    public Content() {
    }

    public Content(Long id, String title, Integer position, Section section, String videoUri, String textContent) {
        super(id, title, position, section);
        this.videoUri = videoUri;
        this.textContent = textContent;
    }

    public String getImgUri() {
        return videoUri;
    }

    public void setImgUri(String videoUri) {
        this.videoUri = videoUri;
    }

    public String getTextContent() {
        return textContent;
    }

    public void setTextContent(String textContent) {
        this.textContent = textContent;
    }
}
