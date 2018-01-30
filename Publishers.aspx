<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Publishers.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Publisher List</title>
    <link href="styles.css" rel="Stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <customControls:Header runat="server" heading="Publisher List" />
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="pub_id" DataSourceID="SqlDataSource1" Height="83px" 
            Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="pub_id" HeaderText="pub_id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="pub_id" />
                <asp:BoundField DataField="pub_name" HeaderText="pub_name" 
                    SortExpression="pub_name" />
                <asp:CommandField ShowInsertButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
    </p>
            
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString6 %>" 
            DeleteCommand="DELETE FROM [publishers] WHERE [pub_id] = @pub_id" 
            InsertCommand="INSERT INTO [publishers] ([pub_name]) VALUES (@pub_name)" 
            SelectCommand="SELECT [pub_id], [pub_name] FROM [publishers]" 
            
        UpdateCommand="UPDATE [publishers] SET [pub_name] = @pub_name WHERE [pub_id] = @pub_id">
            <DeleteParameters>
                <asp:Parameter Name="pub_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pub_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pub_name" Type="String" />
                <asp:Parameter Name="pub_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            
    </form>
</body>
</html>
