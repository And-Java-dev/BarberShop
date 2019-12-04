<%@ page import="model.Apointment" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<%List<Apointment> allApointment = (List<Apointment>) request.getAttribute("allAponitment");%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

<link rel="stylesheet" href="../css/Style1.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

</head>
<body>
<table id="dt-basic-checkbox" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
    <thead>
    <tr>
        <th class="th-sm">Name
        </th>
        <th class="th-sm">Email
        </th>
        <th class="th-sm">Phone_Number
        </th>
        <th class="th-sm">Service_Name
        </th>
        <th class="th-sm">Master_Name
        </th>
        <th class="th-sm">Time
        </th>
        <th class="th-sm">Date
        </th>
    </tr>
    </thead>
    <tbody>
    <%for (Apointment apointment : allApointment) {%>

    <tr>
        <td><%=apointment.getName()%></td>
        <td> <%=apointment.getEmail()%></td>
        <td><<%=apointment.getPhoneNumber()%></td>
        <td><%=apointment.getService().getName()%></td>
        <td><%=apointment.getMaster().getName()%></td>
        <td><%=apointment.getTime()%></td>
        <td><%=apointment.getDate()%></td>
    </tr>

    <% } %>

    </tbody>
    <tfoot>
    <tr>
        <th>Name
        </th>
        <th>Email
        </th>
        <th>Phone_Number
        </th>
        <th>Service_Name
        </th>
        <th>Master_Name
        </th>
        <th>Time
        </th>
        <th>Date
        </th>
    </tr>
    </tfoot>
</table>
<script>
    $('#dt-basic-checkbox').dataTable({

        columnDefs: [{
            orderable: false,
            className: 'select-checkbox',
            targets: 0
        }],
        select: {
            style: 'os',
            selector: 'td:first-child'
        }
    });
</script>
</body>
</html>
