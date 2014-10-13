<%-- 
    Document   : hello
    Created on : 13/10/2014, 11:20:04 AM
    Author     : v11424
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP in Action- Hello, world!</title>
        </head>
        <body>
            <h:form id="welcomeForm">
                <h:outputText id="welcomeOutput"
                              value="Welcome to JavaServer Faces"
                              style="font-family:Arial,sans-serif; font-size:24; color: green;"/>
                <p>
                    <h:message id="errors" for="helloInput" style="color:red"/>
                </p>
                <p>
                    <h:outputLabel for="helloInput">
                        <h:outputText id="helloInputLabel"
                                      value="Enter number of controls to display: "/>
                        
                    </h:outputLabel>
                    <h:inputText id="helloInput" value="#{helloBean.numControls}" required="true">
                        <f:validateLongRange minimum="1" maximum="500"/>
                    </h:inputText>
                    
                </p>
                <p>
                    <h:panelGrid id="controlPanel"
                                 binding="#{helloBean.controlPanel}"
                                 columns="20" border="1" cellspacing="0"/>
                </p>
                <h:commandButton id="redisplayButton" type="submit" value="Redisplay"
                                 actionListener="#{helloBean.addControls}"/>
                <h:commandButton id="goodbyeButton" type="submit" value="Goodbye"
                                 action="#{helloBean.goodbye}" immediate="true"/>
            </h:form>
        </body>
    </html>
</f:view>
