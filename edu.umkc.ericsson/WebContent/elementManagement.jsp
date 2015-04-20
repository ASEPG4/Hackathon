<%@page import="edu.umkc.ericsson.bo.ElementInfo"%>
<%@page import="edu.umkc.ericsson.bo.ToolsInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> 
<html>

<head>
  <title>Element Management Page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />T
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
  
</head>

<body>
  <div id="main">
    <header>
	  <div id="banner">
	    <div id="welcome">
	      <h2>Element Management</h2>
	    </div><!--close welcome-->			  	
	  </div><!--close banner-->	
	</header>
	
	<nav>      
      <div id="menubar">
        <ul id="nav">
          <li><a href="dashboard.html">Home</a></li>
          <li><a href="toolManagement.html">Tool Management</a></li>
          <li class="current"><a href="#">Element Management</a></li>
          <li><a href="kpiManagement.html">KPI Management</a></li>
          <li><a href="scheduleManagement.html">Schedule Management</a></li>
          <li><a href="historyManagement.html">History Management</a></li> 
        </ul>
      </div>
    </nav>	
    
	<div id="site_content">		
		<form action="Element_Controller" name="element_manage" method="post">
    	<div class="selectOption">
        	<label>Select Tool:</label>
        	<select name="toolNameSelect" onchange="document.element_manage.submit()">
            	

            	<%
        	ArrayList<ToolsInfo> toolsInfo =(ArrayList<ToolsInfo>)session.getAttribute("toolsInfo");
        	for(ToolsInfo e: toolsInfo)
        	{
        	%>
            	<option value=<%=e.getToolName()  %>  <%if (e.getToolName().equals(session.getAttribute("selectedToolName"))){ %>selected<%} %> ><%=e.getToolName()%></option>
            <%
        	}
            %>
            </select>
        </div><!-- selectOption close-->
        <div id="outerContainer"><!-- outerContainer-->
        <div class="elementview">
            
        	<table id="ElementTab">
            	<tr>
                	<th>ElementId</th>
                    <th>ElementName</th>
                    <th>TimeZone</th>
                    
                </tr>
                <tr>
                	<td>1</td>
                    <td>ATLNGAUS-MME-01</td>
                    <td>ET</td>
                    
                </tr>
                <tr>
                	<td>2</td>
                    <td>ATLNGAUS-MME-02</td>
                    <td>ET</td>
                </tr>
                <tr>
                	<td>3</td>
                    <td>ATLNGAUS-MME-03</td>
                    <td>CT</td>
                </tr>
                <tr>
                	<td>4</td>
                    <td>KSCYMOEC-MME-01</td>
                    <td>ET</td>
                </tr>
            </table><!-- ElementTab-->
               
        </div><!-- elementview CLOSE-->
        
        
        <div class="elementadd">
           
            <table id="elementTable">
          		<tr>
                	<td>
          				ElementName:
                	</td>
               		<td> <input type="text" name="name" class="elementName"/>
                    </td>
                 </tr>
                 <tr>
                 <td>
				ElementId:
                </td>
                <td><input type="text" name="id" class="elementid"/></td>
                </tr>
                <tr>
                 <td>
				TimeZone:
                </td>
                <td><input type="text" name="time" class="time"/></td>
                </tr>
                  </table>
                  
                       	<span class="button_small displayBlock">
		      <input type="submit" value=Go class="newBtn" name="elementAdd">
		    </span>
                </div><!--elementadd close-->
              <div class="elementEdit">
              		<span class="selectOption displayBlock">
                        <label>Select Element:</label>
                        
                        <select>
                            <%
        	ArrayList<ElementInfo> elementsInfo =(ArrayList<ElementInfo>)session.getAttribute("elementsInfo");
        					if (elementsInfo !=null)
                            for(ElementInfo e: elementsInfo)
        	
                            {
        		
        	%>
        		
            	<option value=<%=e.getElementName()  %>><%=e.getElementName()%></option>
            <%
        	                 }
            %>
                            <option select="selected">select</option> 
                            <option>ATLNGAUS-MME-01</option>
                            <option>ATLNGAUS-MME-02</option>
                            <option>ATLNGAUS-MME-03</option>
                            <option>KSCYMOEC-MME-01</option>
                        </select>
        			</span><!-- selectOption close-->
                    
                    <table id="elementTableEdit" class="positonCenter">
          		<tr>
                	<td>
          				ElementName:
                	</td>
               		<td> <input type="text" name="name" class="elementName"/>
                    </td>
                 </tr>
                 
                 <td>
				 TimeZone:
                </td>
                <td><input type="text" name="time" class="time"/></td>
                </tr>
                  </table>
                  <span class="elementEditGo">
                       	<span class="button_small displayBlock">
                              <input type="submit" value=Go class="newBtn" name="elementEdit">
                            </span>
                   </span><!-- elementEditGo close-->
              </div><!-- elementEdit-->
                <div class="elemStatus"><!-- element status-->
                    <span id="stat">
                        <label>Element Status:</label>
                        <select>
                        <option selected>Select</option>
                        <option>Enable</option>
                        <option>Disable</option>
                    </select>	
                    </span>
                    <span class="positionLeft" id="goBtn">
                   <span class="button_small" id="go">
                     <input type="submit" value=Go class="newBtn" name="elementStatus">
              		</span></span>
        </div><!-- element sstatus close-->
          </div><!--outerContainer-->      
        <div class="toolButtons">
	  <span class="button_small" id="viewElement">
		      <a href="#">ViewElement</a>
	  </span>
      <span class="button_small" id="addElement">
		      <a href="#">AddElement</a>
	  </span>
      
      <span class="button_small" id="editElement">
		      <a href="#">EditElement</a>
	  </span>
     
      <span class="button_small" id="elementStatus">
		      <a href="#">ElementStatus</a>
	  </span>
      </div><!-- buttons close-->
	</form>
	</div><!--close site_content-->  	
  
    <footer>
         <a href="index.html">All Original Content (c) Copyright 2015 HackathonGeeks</a> | <a href="contact.html">Contact</a><br/><br/>
         
   </footer>
  
  </div><!--close main-->
  
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/sample.js"></script>
  
  
</body>
</html>

