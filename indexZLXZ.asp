<div class="mainA_BottomThree">
	 <div class="title">
		<div class="title_Bg"><div class="titlt_L"><a href="pxxx.asp?lx=2">��������</a></div><div class="more"><a href="pxxx.asp?lx=2"><img src="images/more.gif" /></a></div></div>
	</div>
	<div class="bxxx_AMain">
		<ul>
			<%
				rsCount = 0
				Set rs = rslm(12, "��������")
				While Not rs.BOF And Not rs.EOF
					rsCount = rsCount + 1
					TitleRs = rs("Title")
					AuthorRs = rs("Author")
					CopyFromRs = rs("CopyFrom")
					GjzRs = rs("Gjz")
					Indeximg1Rs = rs("Indeximg1")
					ArticleIDRs = rs("ArticleID")
					If rsCount = 1 Then
						ArticleIDTempRs = ArticleIDRs
					Else
						ArticleIDTempRs = ArticleIDTempRs & "," & ArticleIDRs
					End If
			%>
			<li><a href="showpxxx.asp?id=<%=ArticleIDRs%>" target="_blank" title="<%=TitleRs%>"><%=LeftTrue(TitleRs, 26)%></a></li>
			<%
					rs.MoveNext
				Wend
				rs.Close
				Set rs = Nothing
			%>
		</ul>
	</div>
</div>