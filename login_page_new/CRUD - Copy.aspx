<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="login_page_new.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-grid ">
        <div class="row p-5">
            <div class="col-md-8 mx-auto">
                <div class="card bg-light bg-gradient mt-5 mb-5">
                    <div class="card-body" style="background: rgb(159, 149, 149); border-radius: 10px; box-shadow: 0px 2px 7px rgb(8, 1, 1);">

                        <div class="row mb-3">
                            <div class="col">
                                <center>
                                    <h3 style="color: rgb(78, 39, 39); font-weight: 600; font-family: monospace; font-size: 30px; height: 29px;" class="mt-5 mb-3">STUDENT_INFORMATION</h3>
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
                                <div class="form-group ms-3 justify-content-center">
                                    <asp:RadioButton ID="RBMale" runat="server" Text="Male" GroupName="Gender" />
                                    <asp:RadioButton ID="RBFemale" runat="server" Text="Female" GroupName="Gender" class="ms-5 me-5" />
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
                                    <asp:DropDownList ID="ddlState" runat="server" Width="274px" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" AutoPostBack="True">
                                    </asp:DropDownList>
                                   
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>College&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlCollege" ErrorMessage="Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlCollege" runat="server" Width="274px" OnSelectedIndexChanged="ddlCollege_SelectedIndexChanged" AutoPostBack="True">
                                    </asp:DropDownList>
                               
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Course&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddlCourse" ErrorMessage="Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlCourse" runat="server" Width="274px">
                                    </asp:DropDownList>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col ">
                                <div class=" form-group text-center mt-4 mb-3 ">
                                    <div class="btn-toolbar mt-5">
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
            
                 <div class="row mb-5 ms-2 me-2 ">
                          <div class="col">
                              <div class="form-group" id="GridForm">
                                  <asp:GridView ID="GridViewList" runat="server"  AutoGenerateColumns="False" CssClass="grid"
                                        Width="100%" AllowPaging="True" PageSize="25" DataKeyNames="Registration_No" ForeColor="Black" AllowSorting="True"
                                        EnableSortingAndPagingCallback="True" BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" HorizontalAlign="Center" OnRowDeleting="GridViewList_RowDeleting" OnSelectedIndexChanged="GridViewList_SelectedIndexChanged"  >
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
                                              <EditItemTemplate>
                                                  <asp:DropDownList ID="ddlState" runat="server" SelectedValue='<%#Eval("StateId") %>' DataTextField="Name" DataValueField="StateId">
                                                  </asp:DropDownList>
                                                 
                                              </EditItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="College" >
                                              <EditItemTemplate>
                                                  <asp:DropDownList ID="ddlCollege" runat="server" SelectedValue='<%#Eval("CollegeId") %>' DataTextField="Name" DataValueField="CollegeId" >
                                                  </asp:DropDownList>
                                              </EditItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Course" >
                                              <EditItemTemplate>
                                                  <asp:DropDownList ID="ddlCourse" runat="server" SelectedValue='<%#Eval("CourseId") %>' DataTextField="Name" DataValueField="CourseId" >
                                                  </asp:DropDownList>
                                              </EditItemTemplate>
                                          </asp:TemplateField>

                                         
                                          <asp:CommandField ButtonType="Button" ShowSelectButton="True">
                                          <ControlStyle BackColor="#009900" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="White" />
                                          </asp:CommandField>
                                          <asp:CommandField ButtonType="Button" ShowDeleteButton="True" >
                                          <ControlStyle BackColor="#CC0000" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="White" />
                                          </asp:CommandField>

                                         
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
                                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                      <SortedAscendingHeaderStyle BackColor="Gray" />
                                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                      <SortedDescendingHeaderStyle BackColor="#383838" />
                                  </asp:GridView>
                              </div>
                           </div>   
                         </div>
              

    </div>

</asp:Content>
