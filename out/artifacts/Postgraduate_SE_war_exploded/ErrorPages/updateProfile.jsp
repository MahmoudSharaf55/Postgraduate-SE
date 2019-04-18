<%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-08
  Time: 12:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<body>
<script src="../bootstrapv4/sweetalert.min.js" type="text/javascript"></script>
<script>
    (function f() {
        swal({
            title: "Warning",
            text: "you must complete all field to update your information",
            icon: "warning",
            dangerMode: true,
        })
    })();
</script>
</body>
</html>
