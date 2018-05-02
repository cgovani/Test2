<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.microsoft.applicationinsights.TelemetryClient"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Collections"%>
<%@ page import="java.util.HashMap"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Demo</title>
<%= "CD Azure Demo - JAVA Application, Welcome -  test demo 4" 

%>
<!-- 
To collect end-user usage analytics about your application, 
insert the following script into each page you want to track.
Place this code immediately before the closing </head> tag,
and before any other scripts. Your first data will appear 
automatically in just a few seconds.
-->
<script type="text/javascript">
  var appInsights=window.appInsights||function(config){
    function i(config){t[config]=function(){var i=arguments;t.queue.push(function(){t[config].apply(t,i)})}}var t={config:config},u=document,e=window,o="script",s="AuthenticatedUserContext",h="start",c="stop",l="Track",a=l+"Event",v=l+"Page",y=u.createElement(o),r,f;y.src=config.url||"https://az416426.vo.msecnd.net/scripts/a/ai.0.js";u.getElementsByTagName(o)[0].parentNode.appendChild(y);try{t.cookie=u.cookie}catch(p){}for(t.queue=[],t.version="1.0",r=["Event","Exception","Metric","PageView","Trace","Dependency"];r.length;)i("track"+r.pop());return i("set"+s),i("clear"+s),i(h+a),i(c+a),i(h+v),i(c+v),i("flush"),config.disableExceptionTracking||(r="onerror",i("_"+r),f=e[r],e[r]=function(config,i,u,e,o){var s=f&&f(config,i,u,e,o);return s!==!0&&t["_"+r](config,i,u,e,o),s}),t
    }({
        instrumentationKey:"a9bee739-6763-4956-932d-b4c8a1fcdc36"
    });
       
    window.appInsights=appInsights;
    appInsights.trackPageView();
</script>
</head>
<body>
	<%

  TelemetryClient teleClient = new TelemetryClient();



	
	 HashMap<String, String> properties = new HashMap<String, String>();
	properties.put("game", "Game 1");
	properties.put("difficulty", "Easy");

	HashMap<String, Double> metrics = new HashMap<String, Double>();
	metrics.put("Score", 95.00);
	metrics.put("Opponents", 23.00);

	teleClient.trackEvent("WinGame", properties, metrics);
 
	
		

%>
	<%= "Custom Event" %>
</body>
</html>