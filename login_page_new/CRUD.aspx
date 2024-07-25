<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="login_page_new.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        label{
           
            font-size: calc(15px + 0.390625vw);
        }
        * {
            font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif;

        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid  pt-5 " style= " background-image: linear-gradient(35deg, hsl(0deg 0% 0%) 0%,hsl(14deg 100% 22%) 13%,hsl(28deg 100% 35%) 27%,hsl(34deg 100% 49%) 42%,hsl(38deg 100% 50%) 56%,hsl(42deg 100% 50%) 68%,hsl(46deg 100% 50%) 79%,hsl(43deg 100% 72%) 88%, hsl(42deg 100% 86%) 95%,hsl(0deg 0% 100%) 100%); ">

       <!--text-part starts-->
        <h1 class="text-center mt-5 display-3 fw-bold">CRUD</h1>
        <hr style="background: #002800; margin: 15px auto; height: 3px !important;" class="w-25" />
        <p class="text-center text-muted">Don't worry we are with you</p>
        <div class="row ms-5 me-5 mt-5">
            <div class="col-xs-8 mx-auto">
            

                    <div class="card rounded-7 mt-2 mb-5 " style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);" >
                    <div class="card-body p-lg-5" style="box-shadow: 0px 2px 7px rgb(8, 1, 1);">

                        <div class="row mb-2">
                            <div class="col">
                                <center>
                                    <h3 style="color: rgb(78, 39, 39); font-weight: 600; font-family: monospace; font-size: 30px; height: 29px;" class="mt-3 ">STUDENT_INFORMATION</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row" style="height: 30px;">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class=" col-md-6 ">
                                <label>Registration Number&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ForeColor="Maroon" ControlToValidate="txtRegNo"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtRegNo" runat="server" placeholder="Enter Your Registration number"></asp:TextBox>
                                </div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtRegNo" ErrorMessage="Invalid Registration" ForeColor="#CC0000" ValidationExpression="[0-9]{7}"></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-md-6">
                                <label class="">
                                    Name&nbsp;&nbsp; 
                                </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtName" ErrorMessage="Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                <div class="form-group ">
                                    <asp:TextBox class="form-control" ID="txtName" runat="server" placeholder="Enter Your Full Name"></asp:TextBox>
                                </div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid name" ControlToValidate="txtName" ForeColor="#CC0000" ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col-md-6 ">
                                <label>
                                    Date of Birth&nbsp;&nbsp;
                                </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDOB" ErrorMessage="Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6 ">
                                <label class="mb-2">
                                    Gender&nbsp;&nbsp;     
                                </label>
                                <div class="form-group ms-xs-3 justify-content-center">
                                    <asp:RadioButton ID="RBMale" runat="server" Text="Male" GroupName="Gender" />
                                    <asp:RadioButton ID="RBFemale" runat="server" Text="Female" GroupName="Gender" class="ms-xs-5 me-xs-5" />
                                    <asp:RadioButton ID="RBOthers" runat="server" Text="others" GroupName="Gender" />

                                </div>
                            </div>
                        </div>


                        <div class="row mt-3">
                            <div class="col-md-6 ">
                                <label>Mobile No&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtMobileNo" runat="server" placeholder="Enter Your Mobile Number"></asp:TextBox>
                                </div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Invalid Mobile-No( must be 10 digits)" ControlToValidate="txtMobileNo" ForeColor="#CC0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-md-6 ">
                                <label>
                                    Email-ID&nbsp;&nbsp;  
                                </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEMailId" ErrorMessage="Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtEMailId" runat="server" placeholder="Enter Your Email-ID" TextMode="Email"></asp:TextBox>
                                </div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter a valid Email-Id" ControlToValidate="txtEMailId" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 ">
                                <label>State&nbsp;&nbsp;</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlState" ErrorMessage="Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlState" runat="server" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" AutoPostBack="True" CssClass="w-75">
                                    </asp:DropDownList>
                                   
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>College&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlCollege" ErrorMessage="Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlCollege" runat="server"  OnSelectedIndexChanged="ddlCollege_SelectedIndexChanged" AutoPostBack="True" CssClass="w-75">
                                    </asp:DropDownList>
                               
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Course&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddlCourse" ErrorMessage="Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="w-75">
                                    </asp:DropDownList>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col ">
                                <div class=" form-group text-center mt-4 mb-3 ">
                                    <div class="btn-toolbar mt-2">
                                        <div class="btn-group mx-auto">
                                            <asp:Button class="btn" ID="btnSubmit" runat="server" Text="INSERT" type="button" Style="background-color: green; border-color: black; width: 150px; border-radius: 10px; font-family: monospace; color: white;" OnClick="btnSubmit_Click" />
                                        </div>

                                        <div class="btn-group mx-auto">
                                            <asp:Button class="btn " ID="btnUpdate" runat="server" Text="UPDATE" type="button" Style="background-color: blue; border-color: black; width: 150px; border-radius: 10px; font-family: monospace; color: white;" OnClick="btnUpdate_Click" />
                                        </div>
                       
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
            </div>
         </div>
                </div>
            
                 <div class="row mt-3 ms-5 me-5" style="">
                          <div class="col mx-auto">
                              <div class="form-group mb-5" id="GridForm">
                                  <asp:GridView ID="GridViewList" runat="server"  AutoGenerateColumns="False" CssClass="grid"
                                        Width="100%" AllowPaging="True" PageSize="25" DataKeyNames="Registration_No" ForeColor="Black" AllowSorting="True"
                                        EnableSortingAndPagingCallback="True" BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" HorizontalAlign="Center" >
                                      <Columns >
                                          <asp:TemplateField HeaderText="Registration no." >
                                              <ItemTemplate>
                                                  <asp:Label ID="lblReg" runat="server" Text='<%#Eval("Registration_No") %>' ></asp:Label>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Name" >
                                              <ItemTemplate>
                                                  <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name") %>' ></asp:Label>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="DOB" >
                                              <ItemTemplate>
                                                  <asp:Label ID="lblDOB" runat="server" Text='<%#Eval("Date_Of_Birth", "{0:dd-MM-yyyy}") %>' DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" ></asp:Label>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Gender" >
                                              <ItemTemplate>
                                                  <asp:Label ID="lblGender" runat="server" Text='<%#Eval("Gender") %>' ></asp:Label>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Mobile No." >
                                              <ItemTemplate>
                                                  <asp:Label ID="lblMobile" runat="server" Text='<%#Eval("Mobile") %>' ></asp:Label>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Email Id">
                                              <ItemTemplate>
                                                  <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("Email_Id") %>' ></asp:Label>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="State" >
                                              <ItemTemplate>
                                                  <asp:Label ID="lblStatename" runat="server" Text='<%#Eval("Statename") %>' ></asp:Label>
                                              </ItemTemplate>
                                               <%--<EditItemTemplate>                                                   
                                                 <asp:DropDownList ID="ddlState" runat="server" SelectedValue='<%#Eval("Name") %>' DataTextField="Name" DataValueField="StateId">
                                                  </asp:DropDownList>                                                 
                                              </EditItemTemplate>--%>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="College" >
                                              <ItemTemplate>
                                                 <asp:Label ID="lblCollegeName" runat="server" Text='<%#Eval("CollegeName") %>' ></asp:Label>
                                              </ItemTemplate>
                                              <%--<EditItemTemplate>                                                  
                                                  <asp:DropDownList ID="ddlCollege" runat="server" SelectedValue='<%#Eval("Name") %>' DataTextField="Name" DataValueField="CollegeId" >
                                                  </asp:DropDownList>
                                              </EditItemTemplate>--%>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Course" >
                                              <ItemTemplate>
                                                 <asp:Label ID="lblCourseName" runat="server" Text='<%#Eval("CourseName") %>' ></asp:Label>
                                              </ItemTemplate>
                                               <%--<EditItemTemplate>                                                  
                                                 <asp:DropDownList ID="ddlCourse" runat="server" SelectedValue='<%#Eval("Name") %>' DataTextField="Name" DataValueField="CourseId" >
                                                  </asp:DropDownList>
                                              </EditItemTemplate>--%>
                                          </asp:TemplateField>

                                         <%--<asp:TemplateField HeaderText="Status" SortExpression="Status">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkEdit" runat="server" Text='<%#Eval("Registration_No")%>'
                                                        ForeColor="Blue" CommandArgument='<%#Eval("Registration_No")%>' OnClick="lnkBtnSelect_OnClick"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                          <asp:TemplateField HeaderText="Status" SortExpression="Status">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkEdit" runat="server" Text='<%#Eval("Registration_No")%>'
                                                        ForeColor="Blue" CommandArgument='<%# Container.DataItemIndex%>' CommandName="Select"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                          <%--<asp:TemplateField HeaderText="Status" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:LinkButton OnClick="btnDelete2_OnClick" OnClientClick="return confirm('Are you sure to change the status ?');" Enabled='<%#(Eval("IsActive").ToString() == "Y" ? true : false)%>'
                                                        ID="btnDelete2" runat="server" CausesValidation="False" ImageUrl='<%# "~/Images/" + (Eval("IsActive").ToString() == "Y" ? "Active2.png" : "InActive2.png") %>'
                                                        ToolTip='<%#(Eval("IsActive").ToString() == "Y" ? "Click to in-active the record..." : "")%>' CommandArgument='<%#Eval("ID")%>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
     
                                         
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
                                        <EditRowStyle BackColor="#CCCCCC" HorizontalAlign="Center" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" VerticalAlign="Middle"/>
                                        <%--<AlternatingRowStyle BackColor="#C6D5E3" ForeColor="Black"></AlternatingRowStyle>--%>
                                        <%--<FooterStyle BackColor="Silver" Font-Bold="True" ForeColor="White" />--%>
                            
                                  </asp:GridView>
                              </div>
                           </div>   
                         </div>
              
        </div>
   

</asp:Content>
