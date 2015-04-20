<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>jQuery Bootgrid Demo</title>
        <link href="css/bootstrap.css" rel="stylesheet" />
        <link href="dist/jquery.bootgrid.css" rel="stylesheet" />
        <script src="js/modernizr-2.8.1.js"></script>
        <style>
            @-webkit-viewport { width: device-width; }
            @-moz-viewport { width: device-width; }
            @-ms-viewport { width: device-width; }
            @-o-viewport { width: device-width; }
            @viewport { width: device-width; }

            body { padding-top: 70px; }
            
            .column .text { color: #f00 !important; }
            .cell { font-weight: bold; }
        </style>
    </head>
    <body>
        <header id="header" class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <span class="navbar-brand" data-i18n="title">jQuery Bootgrid</span>
                </div>
                <nav id="menu" class="navbar-collapse collapse" role="navigation">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Basic Demo</a></li>
                    </ul>
                </nav>
            </div>
        </header>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3 visible-md visible-lg">
                    <div class="affix">
                        Sub Nav
                    </div>
                </div>
                <div class="col-md-9">
                    <button id="append" type="button" class="btn btn-default">Append</button>
                    <button id="clear" type="button" class="btn btn-default">Clear</button>
                    <button id="removeSelected" type="button" class="btn btn-default">Remove Selected</button>
                    <button id="destroy" type="button" class="btn btn-default">Destroy</button>
                    <button id="init" type="button" class="btn btn-default">Init</button>
                    <!--div class="table-responsive"-->
                        <table id="grid" class="table table-condensed table-hover table-striped" data-selection="true" data-multi-select="true" data-row-select="true" data-keep-selection="true">
                            <thead>
                                <tr>
                                    <th data-column-id="id" data-identifier="true" data-type="numeric" data-align="right">ID</th>
                                    <th data-column-id="sender" data-order="asc" data-align="center" data-header-align="center">Sender</th>
                                    <th data-column-id="received" data-css-class="cell" data-header-css-class="column" data-filterable="true">Received</th>
                                    <th data-column-id="link" data-formatter="link" data-sortable="false">Link</th>
                                	<th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>me@rafaelstaib.com</td>
                                    <td>11.12.2014</td>
                                    <td>Link</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>me@rafaelstaib.com</td>
                                    <td>12.12.2014</td>
                                    <td>Link</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>me@rafaelstaib.com</td>
                                    <td>10.12.2014</td>
                                    <td>Link</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>mo@rafaelstaib.com</td>
                                    <td>12.08.2014</td>
                                    <td>Link</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>ma@rafaelstaib.com</td>
                                    <td>12.06.2014</td>
                                    <td>Link</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>me@rafaelstaib.com</td>
                                    <td>12.12.2014</td>
                                    <td>Link</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>ma@rafaelstaib.com</td>
                                    <td>12.11.2014</td>
                                    <td>Link</td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>mo@rafaelstaib.com</td>
                                    <td>15.12.2014</td>
                                    <td>Link</td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>me@rafaelstaib.com</td>
                                    <td>24.12.2014</td>
                                    <td>Link</td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>ma@rafaelstaib.com</td>
                                    <td>14.12.2014</td>
                                    <td>Link</td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>mo@rafaelstaib.com</td>
                                    <td>12.12.2014</td>
                                    <td>Link</td>
                                </tr>
                            </tbody>
                        </table>
                    <!--/div-->
                </div>
            </div>
        </div>

        <footer id="footer">
            � Copyright 2014, Rafael Staib
        </footer>

        <script src="lib/jquery-1.11.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="dist/jquery.bootgrid.js"></script>
        <script>
            $(function()
            {
                function init()
                {
                    $("#grid").bootgrid({
                        formatters: {
                            "link": function(column, row)
                            {
                                return "<a href=\"#\">" + column.id + ": " + row.id + "</a>";
                            }
                        }
                        
                        
                        
                    
                    });
                }
                
                init();
                
                $("#append").on("click", function ()
                {
                    $("#grid").bootgrid("append", [{
                            id: 0,
                            sender: "hh@derhase.de",
                            received: "Gestern",
                            link: ""
                        },
                        {
                            id: 12,
                            sender: "er@fsdfs.de",
                            received: "Heute",
                            link: ""
                        }]);
                });
                
                $("#clear").on("click", function ()
                {
                    $("#grid").bootgrid("clear");
                });
                
                $("#removeSelected").on("click", function ()
                {
                    $("#grid").bootgrid("remove");
                });
                
                $("#destroy").on("click", function ()
                {
                    $("#grid").bootgrid("destroy");
                });
                
                $("#init").on("click", init);
            });
        </script>
        
    </body>
</html>