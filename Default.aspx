<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="prac4.Default"
    UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Event Registration Form</title>
</head>

<body>

<form id="form1" runat="server">

<center>

    <h2>Online Event Registration Form</h2>

    <table>

        <!-- Name -->
        <tr>
            <td>
                <asp:Label ID="name" runat="server"
                    Text="Enter Name"></asp:Label>
            </td>

            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>

            <td>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1"
                    runat="server"
                    ControlToValidate="TextBox1"
                    ErrorMessage="Name cannot be blank"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </td>
        </tr>

        <!-- Enrollment Number -->
        <tr>
            <td>
                <asp:Label ID="Enroll" runat="server"
                    Text="Enter Enrollment No."></asp:Label>
            </td>

            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>

            <td>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2"
                    runat="server"
                    ControlToValidate="TextBox2"
                    ErrorMessage="Enter Enrollment Number"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </td>
        </tr>

        <!-- Email -->
        <tr>
            <td>
                <asp:Label ID="mail" runat="server"
                    Text="Email"></asp:Label>
            </td>

            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>

            <td>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3"
                    runat="server"
                    ControlToValidate="TextBox3"
                    ErrorMessage="Enter Email"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

                <br />

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1"
                    runat="server"
                    ControlToValidate="TextBox3"
                    ErrorMessage="Enter Valid Email"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                    ForeColor="Red">
                </asp:RegularExpressionValidator>
            </td>
        </tr>

        <!-- Contact Number -->
        <tr>
            <td>
                <asp:Label ID="contact" runat="server"
                    Text="Contact Number"></asp:Label>
            </td>

            <td>
                <asp:TextBox ID="TextBox5" runat="server"
                    MaxLength="10"></asp:TextBox>
            </td>

            <td>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4"
                    runat="server"
                    ControlToValidate="TextBox5"
                    ErrorMessage="Enter Contact Number"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

                <br />

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator2"
                    runat="server"
                    ControlToValidate="TextBox5"
                    ErrorMessage="Enter 10 digit Contact Number"
                    ValidationExpression="^[0-9]{10}$"
                    ForeColor="Red">
                </asp:RegularExpressionValidator>
            </td>
        </tr>

        <!-- Age -->
        <tr>
            <td>
                <asp:Label ID="age" runat="server"
                    Text="Age"></asp:Label>
            </td>

            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>

            <td>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator5"
                    runat="server"
                    ControlToValidate="TextBox4"
                    ErrorMessage="Enter Age"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

                <br />

                <asp:RangeValidator
                    ID="RangeValidator1"
                    runat="server"
                    ControlToValidate="TextBox4"
                    MinimumValue="18"
                    MaximumValue="60"
                    Type="Integer"
                    ErrorMessage="Age must be between 18 and 60"
                    ForeColor="Red">
                </asp:RangeValidator>
            </td>
        </tr>

        <!-- Gender -->
        <tr>
            <td>
                <asp:Label ID="gender" runat="server"
                    Text="Gender"></asp:Label>
            </td>

            <td>
                <asp:RadioButton ID="Male" runat="server"
                    Text="Male"
                    GroupName="Gender" />

                <asp:RadioButton ID="Female" runat="server"
                    Text="Female"
                    GroupName="Gender" />
            </td>

            <td>
                <asp:CustomValidator
                    ID="CustomValidator1"
                    runat="server"
                    ErrorMessage="Select Gender"
                    ForeColor="Red"
                    OnServerValidate="CustomValidator1_ServerValidate">
                </asp:CustomValidator>
            </td>
        </tr>

        <!-- Event Type -->
        <tr>
            <td>
                <asp:Label ID="event" runat="server"
                    Text="Select Event Type"></asp:Label>
            </td>

            <td>
                <asp:CheckBox ID="Paper" runat="server"
                    Text="Paper Presentation" />

                <br />

                <asp:CheckBox ID="Poster" runat="server"
                    Text="Poster Presentation" />

                <br />

                <asp:CheckBox ID="Coding" runat="server"
                    Text="Coding Competition" />
            </td>

            <td>
                <asp:CustomValidator
                    ID="CustomValidator2"
                    runat="server"
                    ErrorMessage="Select at least one event"
                    ForeColor="Red"
                    OnServerValidate="CustomValidator2_ServerValidate">
                </asp:CustomValidator>
            </td>
        </tr>

        <!-- Calendar -->
        <tr>
            <td>
                <asp:Label ID="date" runat="server"
                    Text="Select Date"></asp:Label>
            </td>

            <td>
                <asp:Calendar ID="Calendar1"
                    runat="server">
                </asp:Calendar>
            </td>
        </tr>

        <!-- Buttons -->
        <tr>
            <td colspan="2">

                <asp:Button ID="Button1"
                    runat="server"
                    Text="Register"
                    OnClick="Button1_Click" />

                &nbsp;&nbsp;

                <asp:Button ID="Button2"
                    runat="server"
                    Text="Clear"
                    CausesValidation="False"
                    OnClick="Button2_Click" />

            </td>
        </tr>

    </table>

</center>

</form>

</body>
</html>