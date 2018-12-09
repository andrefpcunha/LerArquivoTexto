<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sidemenu.aspx.cs" Inherits="WebApp.App.pages.sidemenu" %>

<!-- Side Menu -->
<aside class="main-sidebar">
    <section class="sidebar" style="height: auto;">
        <ul class="sidebar-menu tree" data-widget="tree">
            <li class="header">Menu Principal</li>
            <!-- Item 1: Dashboard DO STATUS DAS UPAS -->
            <li>
                <a href="./home">
                    <i class="fa fa-home"></i><span> Início</span>
                    <!-- <span class="pull-right-container">
                            <small class="label pull-right bg-green">new</small>
                        </span> -->
                </a>
            </li>
            <!-- Fim: Item 1 -->

            <!-- Item 1: Dashboard DO STATUS DAS UPAS -->
            <li>
                <a href="./statusUPA">
                    <i class="fa fa-dashboard"></i><span> Situação Atual (UPAS)</span>
                    <!-- <span class="pull-right-container">
                        <small class="label pull-right bg-green">new</small>
                    </span> -->
                </a>
            </li>
            <!-- Fim: Item 1 -->

            <!-- Item 2: Dashboard INDICADORES DAS UPAS -->
            <li>
                <a href="./indicadoresUPA">
                    <i class="fa fa-bar-chart"></i><span> Indicadores</span>
                    <!-- <span class="pull-right-container">
                       <small class="label pull-right bg-green">new</small>
                    </span> -->
                </a>
            </li>
            <!-- Fim: Item 1 -->

            <!-- Item  : Hospitalar -->
            <li>
                <a href="./hospitalar">
                    <i class="fa fa-bar-chart"></i><span> SIH (Hospitalar)</span>
                     
                </a>
            </li>

            <!-- Item : Ambulatorial -->
            <li>
                <a href="./ambulatorial">
                    <i class="fa fa-bar-chart"></i><span> SIA (Ambulatorial)</span>
                    
                </a>
            </li>
        </ul>
    </section>
</aside>
<!-- Fim: Side Menu -->
