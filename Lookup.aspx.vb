Public Class Lookup
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If MyBase.User.Identity.IsAuthenticated = False Then
            Server.Transfer("~/Account/Login.aspx")
        Else
            lblUSER.Text = User.Identity.Name
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class