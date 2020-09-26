package com.yao.vo;

public class UserInfo {
    private int uid;
    private String uname;
    private String udate;

    public UserInfo() {
    }

    public UserInfo(int uid, String uname, String udate) {
        this.uid = uid;
        this.uname = uname;
        this.udate = udate;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", udate='" + udate + '\'' +
                '}';
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUdate() {
        return udate;
    }

    public void setUdate(String udate) {
        this.udate = udate;
    }
}
