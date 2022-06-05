Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnADD_Click(sender As Object, e As EventArgs) Handles btnADD.Click
        Server.Transfer("~/NewCard.aspx")
    End Sub
    Protected Sub btnLOOK_Click(sender As Object, e As EventArgs) Handles btnLOOK.Click
        Server.Transfer("~/Lookup.aspx")
    End Sub
End Class