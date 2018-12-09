<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="importarArquivo.aspx.cs" Inherits="WebApp.App.pages.importarArquivo" %>

<div class="content-wrapper" style="min-height: 960px;">
        <form id="form1" runat="server">
            <div class="content-header">
                <div id="Titulo">
                    <h1>Faça a importação do seu arquivo</h1>
                    <hr />
                </div>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i></li>
                    <li class="active"><a href="#">Home</a></li>
                </ol>

                <div class="row">
                    <span style="margin: 0 0 10px 5px;">Selecione:</span>
                    <asp:FileUpload ID="FileUpload" runat="server" Style="margin: 0 10px 10px 5px; width: 500px;" />
                    <button runat="server" class="btn-primary" style="margin: 0 0 10px 5px;" onserverclick="BtImportar_Click">
                        <i class="fa fa-upload"></i>&nbsp; Importar</button>
                </div>
            </div>
        </form>


        <section class="content">
            <div class="box box-info">
                <!-- Título Resumo -->
                <div class="box-header with-border">
                    <h3 class="box-title">Resumo de Atendimentos do Dia</h3>
                    <!-- Resumir/Extender BOX -->
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-angle-up fa-2x"
                                style="color: #165c1f;"></i>
                        </button>
                    </div>
                </div>
                <!-- /END: Título Resumo -->

                <!-- table-ResumoAtendimentos -->
                <div class="box-body" style="margin-top: -10px;">
                    <div class="table-responsive no-margin" style="padding-right: 15px;">
                        <table id="ResumoAtendimentos" class="table table-striped no-margin">
                            <thead>
                                <tr>
                                    <td></td>
                                    <td colspan="2" style="text-align: center; font-weight: bold; color: #315f77;">PROFISSIONAIS</td>

                                    <td colspan="3" style="text-align: center; font-weight: bold; color: #315f77;">PACIENTES</td>
                                </tr>
                                <tr>
                                    <th style="text-align: center; color: #5c9ec4;">Tipo Atendimento</th>
                                    <th style="text-align: center; color: #5c9ec4">Tempo Medio/Atend</th>
                                    <th style="text-align: center; color: #5c9ec4">Média Atendimento</th>


                                    <th style="text-align: center; color: #5c9ec4">Em Atendimento</th>
                                    <th style="text-align: center; color: #5c9ec4">Concluído</th>
                                </tr>
                            </thead>

                        </table>
                    </div>
                    <!-- /.table-responsive -->
                </div>
                <!-- /END: table-ResumoAtendimentos -->
            </div>

            <div class="col-md-6">
                <div class="box">
                    <div class="box-header with-border form-inline">
                        <h3 class="box-title">Atendimentos Médicos Por Turno</h3>
                        <!-- Resumir/Extender BOX -->
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                <i class="fa fa-angle-up fa-2x"
                                    style="color: #165c1f;"></i>
                            </button>
                        </div>
                    </div>
                    <!-- Icones de Atendimentos -->
                    <div class="box-body" style="margin-top: 14px;">
                        <div class="col-xs-12 col-md-12 col-lg-6 col-xl-6" style="padding-right: 15px;">
                            <div class="info-box bg-purple-active" style="margin-bottom: 23px;">
                                <span class="info-box-icon"><i class="fa fa-copyright"></i></span>
                                <div class="info-box-content">
                                    <span id="infoClinicoGeral" class="info-box-text"><b>Clínico Geral</b></span>
                                    <span id="AtendimentosClinicoGeral" class="info-box-number">Atendimentos/Turno</span>
                                    <h6 id="percentClinicoGeral" style="float: left; margin: 3px;"><b>0%</b></h6>
                                    <div class="progress">
                                        <div id="progressClinicoGeral" class="progress-bar" style="width: 0%"></div>
                                    </div>
                                    <span id="descriptionClinicoGeral" class="progress-description">Paciente/Médico/Turno
                                    </span>
                                </div>
                            </div>
                            <div class="info-box bg-green">
                                <span class="info-box-icon"><i class="fa fa-child"></i></span>

                                <div class="info-box-content">
                                    <span id="infoPediatria" class="info-box-text"><b>Pediatria</b></span>
                                    <span id="AtendimentosPediatria" class="info-box-number">Atendimentos/Turno</span>
                                    <h6 id="percentPediatria" style="float: left; margin: 3px;"><b>0%</b></h6>
                                    <div class="progress">
                                        <div id="progressPediatria" class="progress-bar" style="width: 0%"></div>
                                    </div>
                                    <span id="descriptionPediatria" class="progress-description">Paciente/Médico/Turno
                                    </span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-12 col-lg-6 col-xl-6" style="padding-right: 15px;">
                            <div class="info-box bg-yellow-active" style="margin-bottom: 23px;">
                                <span class="info-box-icon"><i class="fa fa-chain-broken"></i></span>
                                <div class="info-box-content">
                                    <span id="infoTraumatologia" class="info-box-text"><b>Traumatologia</b></span>
                                    <span id="AtendimentosTraumatologia" class="info-box-number">Atendimentos/Turno</span>
                                    <h6 id="percentTraumatologia" style="float: left; margin: 3px;"><b>0%</b></h6>
                                    <div class="progress">
                                        <div id="progressTraumatologia" class="progress-bar" style="width: 0%"></div>
                                    </div>
                                    <span id="descriptionTraumatologia" class="progress-description">Paciente/Médico/Turno
                                    </span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <div class="info-box bg-aqua">
                                <span class="info-box-icon"><i class="fa fa-opera"></i></span>

                                <div class="info-box-content">
                                    <span id="infoOdontologia" class="info-box-text"><b>Odontologia</b></span>
                                    <span id="AtendimentosOdontologia" class="info-box-number">Atendimentos/Turno</span>
                                    <h6 id="percentOdontologia" style="float: left; margin: 3px;"><b>0%</b></h6>
                                    <div class="progress">
                                        <div id="progressOdontologia" class="progress-bar" style="width: 0%"></div>
                                    </div>
                                    <span id="descriptionOdontologia" class="progress-description">Paciente/Médico/Turno
                                    </span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Últimos Atendimentos Médicos</h3>
                        <!-- Resumir/Extender BOX -->
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                <i class="fa fa-angle-up fa-2x"
                                    style="color: #165c1f;"></i>
                            </button>
                        </div>
                    </div>
                    <!-- Icones de Atendimentos -->
                    <div class="box-body">
                        <div class="table-responsive no-margin" style="padding-right: 15px;">
                            <table id="ListaUltAtend" class="table table-striped no-margin">
                                <thead>
                                    <tr>
                                        <th class="col-md-2" style="text-align: center; color: #5c9ec4;">UNIDADE<i class="fa fa-sort" aria-hidden="true"></i></th>
                                        <th class="col-md-3" style="text-align: center; color: #5c9ec4">SALA<i class="fa fa-sort" aria-hidden="true"></i></th>
                                        <th class="col-md-4" style="text-align: center; color: #5c9ec4">PROFISSIONAL</th>
                                        <th class="col-md-3" style="text-align: center; color: #5c9ec4">ULTIMO ATEND<i class="fa fa-sort" aria-hidden="true"></i></th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>
    <script>
        $(document).ready(function () {
            //const base = 'http://sistemas.belem.pa.gov.br/rbe-bi';
            const base = 'http://localhost:8080/rbe-bi';

            //url lista unidades
            var urlListaUnidades = base + '/dashboard/listaunidades';
            $.getJSON(urlListaUnidades, function (data) {
                var options = '<option value="0"> Todas as Unidades </option>';
                $.each(data, function (key, val) {
                    options += '<option value="' + val.cnes + '">' + val.siglaUnidade + '</option>';
                });
                $("#Unidades").html(options);

                $("#Unidades").change(function () {
                    var cnes = $('#Unidades').val();
                    CarregarCards(cnes, base)

                }).change();
            });



        });
        function SplitNome(nome) {
            let nomeArray = nome.split(" ");
            let p_nome = nomeArray[0];
            let u_nome = nomeArray[nomeArray.length - 1];
            let m_nome = "";
            let resto = nomeArray.slice(1, nomeArray.length - 1);

            if (resto.length > 0) {
                for (var i = 0; i <= resto.length - 1; i++) {

                    m_nome += " " + resto[i].slice(0, 1);
                }
            }

            return p_nome + m_nome + " " + u_nome;
        }
        function CarregarCards(cnes, base) {
            var ResumoTodasUnidades = base + '/dashboard/resumotodasunidades';
            var UltAtendTodasUnidades = base + '/dashboard/listaultimosatendimentos';
            var AtendPorTurnoTodasUnidades = base + '/dashboard/atendimentosporturno';

            var URLresumo = '';
            var URLultAtend = '';
            var URLAtendPorTurno = '';

            if (cnes != 0) {
                URLresumo = base + '/dashboard/resumocnes/' + cnes;
                URLultAtend = base + '/dashboard/listaultimosatendimentos/' + cnes;
                URLAtendPorTurno = base + '/dashboard/atendimentosporturno/' + cnes;
            }
            else {
                URLresumo = ResumoTodasUnidades;
                URLultAtend = UltAtendTodasUnidades;
                URLAtendPorTurno = AtendPorTurnoTodasUnidades;
            }

            $.ajax({
                type: "GET",
                url: URLAtendPorTurno,
                data: {},
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    $.each(response, function (key, value) {

                        if (value.tipoAtendimento == "Clínico Geral") {
                            document.getElementById('AtendimentosClinicoGeral').innerHTML = value.totalTurno + " Atendimentos/Turno"
                            document.getElementById('percentClinicoGeral').innerHTML = "<b>" + value.percentual + "%</b>"
                            document.getElementById('progressClinicoGeral').style.width = "" + value.percentual + "%"
                            document.getElementById('descriptionClinicoGeral').innerHTML = value.media + " Paciente/Médico/Turno"
                        }
                        if (value.tipoAtendimento == "Pediatria") {
                            document.getElementById('AtendimentosPediatria').innerHTML = value.totalTurno + " Atendimentos/Turno"
                            document.getElementById('percentPediatria').innerHTML = "<b>" + value.percentual + "%</b>"
                            document.getElementById('progressPediatria').style.width = "" + value.percentual + "%"
                            document.getElementById('descriptionPediatria').innerHTML = value.media + " Paciente/Médico/Turno"
                        }
                        if (value.tipoAtendimento == "Traumatologia") {
                            document.getElementById('AtendimentosTraumatologia').innerHTML = value.totalTurno + " Atendimentos/Turno"
                            document.getElementById('percentTraumatologia').innerHTML = "<b>" + value.percentual + "%</b>"
                            document.getElementById('progressTraumatologia').style.width = "" + value.percentual + "%"
                            document.getElementById('descriptionTraumatologia').innerHTML = value.media + " Paciente/Médico/Turno"
                        }
                        if (value.tipoAtendimento == "Odontologia") {
                            document.getElementById('AtendimentosOdontologia').innerHTML = value.totalTurno + " Atendimentos/Turno"
                            document.getElementById('percentOdontologia').innerHTML = "<b>" + value.percentual + "%</b>"
                            document.getElementById('progressOdontologia').style.width = "" + value.percentual + "%"
                            document.getElementById('descriptionOdontologia').innerHTML = value.media + " Paciente/Médico/Turno"
                        }
                    });

                },
                error: function () {
                    //error condition code
                }
            });


            $('#ResumoAtendimentos').DataTable({
                //opções de filtros do plugin => https://datatables.net/reference/option/
                destroy: true,
                'paging': false,
                'lengthChange': false,
                'searching': false,
                'ordering': false,
                'info': false,
                'autoWidth': false,

                "ajax": {
                    "url": URLresumo,
                    dataSrc: '',
                    statusCode: {
                        404: function () {
                            alert("Página não encontrada!");
                        },
                        200: function () {
                            $('td').css('text-align', 'center');
                            var atualizado = new Date().toLocaleString().replace(",", "").replace(/:.. /, " ");
                            document.getElementById("Atualizado").innerHTML = "Atualizado em: " + atualizado;
                        }
                    }
                },

                "columns": [{
                    "data": "tipoAtendimento"
                }, {
                    "data": "tempoMedioAtendimento"
                }, {
                    "data": "media"
                }, {
                    "data": "emAtendimento"
                }, {
                    "data": "concluido"
                }]

            });
            //Para mostrar o "Loading..." no centro
            $('td').css('text-align', 'center');


            $('#ListaUltAtend').DataTable({
                destroy: true,
                'paging': false,
                'lengthChange': false,
                'searching': false,
                'info': false,
                'autoWidth': false,
                scrollY: '25vh',
                scrollCollapse: true,

                "ajax": {
                    "url": URLultAtend,
                    dataSrc: function (response) {
                        $.each(response, function (key, value) {
                            value.profissional = SplitNome(value.profissional);
                        });
                        return response;
                    }
                },
                "columns": [
                    { "data": "siglaUnidade" },
                    { "data": "tipoAtendimento" },
                    { "data": "profissional" },
                    { "data": "data" }
                ]
            });

        }
    </script>
