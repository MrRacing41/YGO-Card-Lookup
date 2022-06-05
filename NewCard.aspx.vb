Public Class NewCard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If User.Identity.IsAuthenticated = False Then
            Server.Transfer("~/Account/Login.aspx")
        Else
            lblUSER.Text = User.Identity.Name
        End If
    End Sub

    Protected Sub btnGO_Click(sender As Object, e As EventArgs) Handles btnGO.Click
        SqlDataSource1.Insert()
        lblCON.Text = "Added card '" + txtCARD.Text + "'"
    End Sub
End Class