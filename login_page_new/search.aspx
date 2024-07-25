<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="login_page_new.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        label {
            font-size: calc(15px + 0.390625vw);
        }

        * {
            font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif;
        }

        h1 {
            color: #002800;
        }

        i {
            font-size: 50px;
            margin-bottom: 15px;
            color: #002800;
        }

        h3 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid  mx-auto py-5 " style="background-image: linear-gradient(35deg, hsl(0deg 0% 0%) 0%,hsl(14deg 100% 22%) 13%,hsl(28deg 100% 35%) 27%,hsl(34deg 100% 49%) 42%,hsl(38deg 100% 50%) 56%,hsl(42deg 100% 50%) 68%,hsl(46deg 100% 50%) 79%,hsl(43deg 100% 72%) 88%, hsl(42deg 100% 86%) 95%,hsl(0deg 0% 100%) 100%);">

        <!--text-part starts-->
        <h1 class="text-center mt-5 display-3 fw-bold">FIND TRAINER</h1>
        <hr style="background: #002800; margin: 15px auto; height: 3px !important;" class="w-25" />
        <p class="text-center text-muted">We are present everywhere to help you</p>

        <div class="row ">
            <div class="col-md-8 mx-auto my-5">
                <div class="card rounded-7  " style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
                    <div class="card-body p-lg-5" style="box-shadow: 0px 2px 7px rgb(8, 1, 1);">

                        <div class="row mx-auto">
                            <div class="col-md-4">
                                <label>STATE&nbsp;&nbsp;</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlState" ErrorMessage="Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" CssClass="w-75" OnSelectedIndexChanged="ddlState_SelectedIndexChanged1">
                                    </asp:DropDownList>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>DISTRICT&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlDistrict" ErrorMessage="Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlDistrict" runat="server" AutoPostBack="True" CssClass="w-75" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged">
                                    </asp:DropDownList>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>BLOCK&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddlBlock" ErrorMessage="Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlBlock" runat="server" CssClass="w-75">
                                    </asp:DropDownList>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class=" form-group text-center ">
                                    <div class="btn-toolbar mt-4 ">
                                        <div class="btn-group mx-auto">
                                            <asp:Button class="btn" ID="btnSearch" runat="server" Text="SEARCH" type="button" Style="background-color: green; border-color: black; width: 120px; border-radius: 5px; font-family: monospace; color: white;" OnClick="btnSearch_Click" />
                                        </div>

                                        <div class="btn-group mx-auto">
                                            <asp:Button class="btn " ID="btnUpdate" runat="server" Text="BACK" type="button" Style="background-color: blue; border-color: black; width: 120px; border-radius: 5px; font-family: monospace; color: white;" OnClick="btnBack_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--card ends-->
                <div class="row mt-4" style="">
                    <div class="col mx-auto">
                        <div class="form-group mb-5" id="GridForm">
                            <asp:GridView ID="GridViewList" runat="server" AutoGenerateColumns="False" CssClass="grid"
                                Width="100%" AllowPaging="True" PageSize="25" DataKeyNames="Id" ForeColor="Black" AllowSorting="True"
                                EnableSortingAndPagingCallback="True" BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" HorizontalAlign="Center">
                                <Columns>
                                    <asp:TemplateField HeaderText="Id">
                                        <ItemTemplate>
                                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="TRAINER NAME">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTrainerName" runat="server" Text='<%#Eval("Trainer_Name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="MOBILE NO.">
                                        <ItemTemplate>
                                            <asp:Label ID="lblMobile" runat="server" Text='<%#Eval("Mobile_No") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="STATE">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStatename" runat="server" Text='<%#Eval("Statename") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="DISTRICT">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDistrictName" runat="server" Text='<%#Eval("DistrictName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="BLOCK">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDistrictName" runat="server" Text='<%#Eval("BlockName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" CssClass="GridPager" />
                                <EmptyDataRowStyle BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <EmptyDataTemplate>
                                    <asp:Label ID="Label18" runat="server" BackColor="#EEEEEE" BorderColor="#CCCCCC"
                                        BorderStyle="Dashed" BorderWidth="1px" Font-Size="X-Small" ForeColor="Red" Height="50px"
                                        Text="Sorry, No record found. Please try again..."></asp:Label>
                                </EmptyDataTemplate>
                                <RowStyle BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CssClass="grid" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle Wrap="False" BackColor="black" Font-Bold="True" ForeColor="White"
                                    BorderStyle="Solid" BorderWidth="1" HorizontalAlign="Center" Height="20px" />
                                <EditRowStyle BackColor="#CCCCCC" HorizontalAlign="Center" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" VerticalAlign="Middle" />

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
