
package com.sunlight.platform.exception;


public class ResponseData {

    private String message;
    private Object payload;

    public ResponseData() {
    }

    public ResponseData(int retcode, String retmsg, Object retdata) {
        super();
        this.message = retmsg;
        this.payload = retdata;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getPayload() {
        return payload;
    }

    public void setPayload(Object payload) {
        this.payload = payload;
    }
}
