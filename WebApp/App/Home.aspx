<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApp.App.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sistema de Importação</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- JQuery -->
    <script src="../contents/js/jquery/jquery.min.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script type="text/javascript" src="../contents/js/bootstrap/js/bootstrap.min.js"></script>
    <link href="../contents/js/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <!-- AdminLTE -->
    <link rel="stylesheet" href="../contents/css/skins/_all-skins.min.css" />
    <script src="../contents/js/adminlte.min.js"></script>
    <link rel="stylesheet" href="../contents/css/AdminLTE.min.css" />

   
</head>
<body class="skin-blue sidebar-collapse">
    <div class="content-wrapper">
        <form id="Importacao" runat="server" class="box-header with-border">
            <div class="content-header">
                <div id="Titulo">
                    <h1>Faça a importação do seu arquivo</h1>
                </div>

                <div class="form-inline">
                    <span style="margin: 0 0 10px 5px; display: inline;">Escolha um arquivo:</span>
                    <asp:FileUpload ID="FileUpload" runat="server" Style="margin: 0 10px 10px 5px; display: inline;" />
                </div>
                <button runat="server" class="btn-facebook" style="margin: 0 0 10px 5px; display: inline;" onserverclick="BtImportar_Click">
                    <i class="fa fa-upload"></i>&nbsp; Importar</button>
            </div>
        </form>

        <hr style="color: #0034fd;background-color: #0034fd; height: 1px;" />

        <h3 style="text-align:center">Relatório</h3>

        <section id="secRelatorio" runat="server" class="content" style="margin-left: 30px;">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua"><i class="fa fa-clock-o"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text"><b>+tempo empresa</b></span>
                            <asp:Label ID="TempoEmpresa" runat="server" class="info-box-number" Text='Não há dados'></asp:Label>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>

                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-red"><i class="fa fa-usd"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text"><b>Maior salário</b></span>
                            <asp:Label ID="MaiorSalario" runat="server" class="info-box-number" Text='Não há dados'></asp:Label>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>

                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green"><i class="fa fa-male"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text"><b>Homens</b></span>
                            <asp:Label ID="Homens" runat="server" class="info-box-number" Text='Não há dados'></asp:Label>
                            <%--<span class="info-box-number">90<small>%</small></span>--%>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>

                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-yellow"><i class="fa fa-female"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text"><b>Mulheres</b></span>
                            <asp:Label ID="Mulheres" runat="server" class="info-box-number" Text='Não há dados'></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12" style="background: #fff;">
                <div style="height: 177px;">
                    <h3 style="text-align:center">Pessoas por Estado</h3>
                    <asp:Literal ID="litEstados" runat="server" Text='Não há dados'/>
                </div>
            </div>
        </section>

    </div>

</body>

</html>
