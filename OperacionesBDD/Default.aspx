<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
            Productos por categoria</h1>
    
    </div>
    Categoria<asp:DropDownList ID="DropDownList1" runat="server" 
        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CategoryName" 
        DataValueField="CategoryID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
        SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]">
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ProductID" 
        DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                </td>
                <td>
                    <asp:Label ID="ProductNameLabel" runat="server" 
                        Text='<%# Eval("ProductName") %>' />
                </td>
                <td>
                    <asp:Label ID="CategoryIDLabel" runat="server" 
                        Text='<%# Eval("CategoryID") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="ProductIDLabel1" runat="server" 
                        Text='<%# Eval("ProductID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ProductNameTextBox" runat="server" 
                        Text='<%# Bind("ProductName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                        Text='<%# Bind("CategoryID") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="ProductNameTextBox" runat="server" 
                        Text='<%# Bind("ProductName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                        Text='<%# Bind("CategoryID") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                </td>
                <td>
                    <asp:Label ID="ProductNameLabel" runat="server" 
                        Text='<%# Eval("ProductName") %>' />
                </td>
                <td>
                    <asp:Label ID="CategoryIDLabel" runat="server" 
                        Text='<%# Eval("CategoryID") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    ProductID</th>
                                <th runat="server">
                                    ProductName</th>
                                <th runat="server">
                                    CategoryID</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                </td>
                <td>
                    <asp:Label ID="ProductNameLabel" runat="server" 
                        Text='<%# Eval("ProductName") %>' />
                </td>
                <td>
                    <asp:Label ID="CategoryIDLabel" runat="server" 
                        Text='<%# Eval("CategoryID") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
        
        SelectCommand="SELECT [ProductID], [ProductName], [CategoryID] FROM [Products] WHERE ([CategoryID] = @CategoryID)" 
        DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" 
        InsertCommand="INSERT INTO [Products] ([ProductName], [CategoryID]) VALUES (@ProductName, @CategoryID)" 
        UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [CategoryID] = @CategoryID WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="CategoryID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
