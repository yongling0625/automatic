package com.gy.automatic.model;

import javax.persistence.*;

@Table(name = "carousel_img")
public class CarouselImg {
    @Id
    private Integer pid;

    private String alt;

    private String src;

    private String thumb;

    /**
     * @return pid
     */
    public Integer getPid() {
        return pid;
    }

    /**
     * @param pid
     */
    public void setPid(Integer pid) {
        this.pid = pid;
    }

    /**
     * @return alt
     */
    public String getAlt() {
        return alt;
    }

    /**
     * @param alt
     */
    public void setAlt(String alt) {
        this.alt = alt;
    }

    /**
     * @return src
     */
    public String getSrc() {
        return src;
    }

    /**
     * @param src
     */
    public void setSrc(String src) {
        this.src = src;
    }

    /**
     * @return thumb
     */
    public String getThumb() {
        return thumb;
    }

    /**
     * @param thumb
     */
    public void setThumb(String thumb) {
        this.thumb = thumb;
    }
}