# SOAP_Web_Service

Develop a web application to consume a SOAP web service from a back-end system to have an ability to manage Client profiles.
Developer(s) who participate into the development are required to own skills 
Axis2
MySQL
SOAPUI
Spring MVC


- Download WSClient
- Maven Clean 
- Maven Install 
- Run on Sever

Detail Infomation


* DemoClient
  + Maven Clean
  + Maven Install
  + Maven Build (eclipse:eclipse)
  + Copy UserSerive.aar to ../axis2/services on Tomcat Sever folder

* WSClient
 + Delete *Stub and *CallbackHandler
 + Copy UserService.wsdl from DemoWS to WSClient ==> Maven Clean + Maven Install + Maven Build (eclipse:eclipse)
 + Change http://model.dxc.com/xsd into http://impl.services.dxc.com in UserServiceStub.java in line
 
    if (reader.isStartElement() && new javax.xml.namespace.QName("http://model.dxc.com/xsd","address").equals(reader.getName()))
    if (reader.isStartElement() && new javax.xml.namespace.QName("http://model.dxc.com/xsd","birthday").equals(reader.getName()))     
    if (reader.isStartElement() && new javax.xml.namespace.QName("http://model.dxc.com/xsd","cellPhone").equals(reader.getName()))
    if (reader.isStartElement() && new javax.xml.namespace.QName("http://model.dxc.com/xsd","gender").equals(reader.getName()))
    if (reader.isStartElement() && new javax.xml.namespace.QName("http://model.dxc.com/xsd","id").equals(reader.getName()))
    if (reader.isStartElement() && new javax.xml.namespace.QName("http://model.dxc.com/xsd","identityCard").equals(reader.getName()))
    if (reader.isStartElement() && new javax.xml.namespace.QName("http://model.dxc.com/xsd","job").equals(reader.getName()))  
    if (reader.isStartElement() && new javax.xml.namespace.QName("http://model.dxc.com/xsd","name").equals(reader.getName()))
    if (reader.isStartElement() && new javax.xml.namespace.QName("http://model.dxc.com/xsd","nationality").equals(reader.getName()))
    
  
