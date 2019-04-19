
/**
 * UserServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

    package com.dxc.webservices.client;

    /**
     *  UserServiceCallbackHandler Callback class, Users can extend this class and implement
     *  their own receiveResult and receiveError methods.
     */
    public abstract class UserServiceCallbackHandler{



    protected Object clientData;

    /**
    * User can pass in any object that needs to be accessed once the NonBlocking
    * Web service call is finished and appropriate method of this CallBack is called.
    * @param clientData Object mechanism by which the user can pass in user data
    * that will be avilable at the time this callback is called.
    */
    public UserServiceCallbackHandler(Object clientData){
        this.clientData = clientData;
    }

    /**
    * Please use this constructor if you don't want to set any clientData
    */
    public UserServiceCallbackHandler(){
        this.clientData = null;
    }

    /**
     * Get the client data
     */

     public Object getClientData() {
        return clientData;
     }

        
               // No methods generated for meps other than in-out
                
           /**
            * auto generated Axis2 call back method for getById method
            * override this method for handling normal response from getById operation
            */
           public void receiveResultgetById(
                    com.dxc.webservices.client.UserServiceStub.GetByIdResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getById operation
           */
            public void receiveErrorgetById(java.lang.Exception e) {
            }
                
               // No methods generated for meps other than in-out
                
           /**
            * auto generated Axis2 call back method for getAllUser method
            * override this method for handling normal response from getAllUser operation
            */
           public void receiveResultgetAllUser(
                    com.dxc.webservices.client.UserServiceStub.GetAllUserResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getAllUser operation
           */
            public void receiveErrorgetAllUser(java.lang.Exception e) {
            }
                
               // No methods generated for meps other than in-out
                


    }
    