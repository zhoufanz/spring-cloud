/**
 *
 */
package com.sunlight.platform.exception;


/**
 * @author Broly
 */
public class RespUtil {

    public static ResponseData make(int retcode, String retmsg) {
        return new ResponseData(retcode, retmsg, null);
    }

    public static ResponseData make(int retcode, String retmsg, Object object) {
        return new ResponseData(retcode, retmsg, object);
    }
    public static ResponseData make(String msg, Object obj){
        ResponseData responseData = new ResponseData();
        responseData.setMessage(msg);
        responseData.setPayload(obj);
        return responseData;
    }
}
