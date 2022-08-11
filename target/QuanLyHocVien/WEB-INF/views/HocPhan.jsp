<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>${list.get(0).giangVien.hoTen}</h1>
    <h1>${list.get(0).monHoc.tenMH}</h1>
    <h1>${list.get(0).monHoc.soTiet}</h1>
    <h1>${list.get(0).monHoc.hocPhi}</h1>
    <h1>${list.get(0).ca.gioBD}-${list.get(0).ca.gioKT}</h1>
    <h1>${list.get(0).phong.tenPhong}</h1>
</body>
</html>
