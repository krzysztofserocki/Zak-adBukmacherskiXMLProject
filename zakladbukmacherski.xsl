<?xml version="1.0" encoding="UTF-8"?>
<xsd:stylesheet version="1.0" xmlns:xsd="http://www.w3.org/1999/XSL/Transform">
    <xsd:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
                <style>
                    table {
                    border: 2px solid black;
                    border-collapse: collapse;
                    }
                    td, th, tr {
                    border: 1px solid black;
                    text-align: center;
                    }
                    p {
                    color: green;
                    font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <div class="container-fluid">
                    <div class="row">
                        <div class = "col-12 p-0">
                            <div class = "jumbotron min-vh-100 text-center d-flex flex-column">
                                <div id="wlasciciele">
                                    <p>WLASCICIELE:</p>
                                    <table class="table table-hover table-striped">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>IMIE</th>
                                                <th>NAZWISKO</th>
                                                <th>DATA URODZENIA</th>
                                                <th>PESEL</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <xsd:for-each select="zaklad_bukmacherski/wlasciciele/wlasciciel">
                                                <tr>
                                                    <td style="color: green;"><xsd:value-of select="imie" /></td>
                                                    <td style="color: green;"><xsd:value-of select="nazwisko" /></td>
                                                    <td style="color: green;"><xsd:value-of select="data_urodzenia" /></td>
                                                    <td style="color: green;"><xsd:value-of select="pesel" /></td>
                                                </tr>
                                            </xsd:for-each>
                                        </tbody>
                                    </table>
                                </div>
                                <div id = "pracownicy">
                                    <p>PRACOWNICY:</p>
                                    <table class="table table-hover table-striped">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>IMIE</th>
                                                <th>NAZWISKO</th>
                                                <th>DATA URODZENIA</th>
                                                <th>PESEL</th>
                                                <th>NUMER DOWODU</th>
                                                <th>STAZ</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <xsd:for-each select="zaklad_bukmacherski/pracownicy/pracownik">
                                                <tr>
                                                    <xsd:if test="staz &gt; 10">
                                                        <td style="color: #00CED1;"><xsd:value-of select="imie" /></td>
                                                        <td style="color: #00CED1;"><xsd:value-of select="nazwisko" /></td>
                                                        <td style="color: #00CED1;"><xsd:value-of select="data_urodzenia" /></td>
                                                        <td style="color: #00CED1;"><xsd:value-of select="pesel" /></td>
                                                        <td style="color: #00CED1;"><xsd:value-of select="numer_dowodu" /></td>
                                                        <td style="color: #00CED1;"><xsd:value-of select="staz" /></td>
                                                    </xsd:if>
                                                    <xsd:if test="staz &lt;= 10">
                                                        <td style="color: red;"><xsd:value-of select="imie" /></td>
                                                        <td style="color: red;"><xsd:value-of select="nazwisko" /></td>
                                                        <td style="color: red;"><xsd:value-of select="data_urodzenia" /></td>
                                                        <td style="color: red;"><xsd:value-of select="pesel" /></td>
                                                        <td style="color: red;"><xsd:value-of select="numer_dowodu" /></td>
                                                        <td style="color: red;"><xsd:value-of select="staz" /></td>
                                                    </xsd:if>
                                                </tr>
                                            </xsd:for-each>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsd:template>
</xsd:stylesheet>