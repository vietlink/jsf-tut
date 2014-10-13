<%-- 
    Document   : goodbye
    Created on : 13/10/2014, 11:52:33 AM
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
            <title>JSF in action- Hello world</title>
        </head>
        <body>
            <h:form id="goodbyeForm">
                <p>
                    <h:outputText id="welcomeOutput" value="Goodbye!"
                                  style="font-family:Arial, sans-serif; font-size:24; font-style:bold; color:green;"/>
                </p>
                <p>
                    <h:outputText id="helloBeanOutputLabel"
                                  value="Number of controls displayed: "/>
                    <h:outputText id="helloBeanoutput"
                                  value="#{helloBean.numControls}"/>
                </p>
            </h:form>
        </body>
    </html>
</f:view>
