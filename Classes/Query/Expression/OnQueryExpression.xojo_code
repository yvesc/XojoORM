#tag Class
Protected Class OnQueryExpression
Implements QueryExpression
	#tag Method, Flags = &h0
		Function Compile(pLastQueryExpression As QueryExpression = Nil) As String
		  If pLastQueryExpression IsA OnQueryExpression Then
		    Return "AND " + Predicate()
		  End If
		  
		  Return "ON " + Predicate()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(pLeftColumn As Variant, pOperator As String, pRightColumn As Variant)
		  mLeftColumn = pLeftColumn
		  mOperator = pOperator
		  mRightColumn = pRightColumn
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Nice() As Integer
		  Return 3
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Predicate() As String
		  Return QueryCompiler.Column(mLeftColumn) + " " + QueryCompiler.Operator(mLeftColumn, mOperator, mRightColumn) + " " + QueryCompiler.Column(mRightColumn)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mLeftColumn As Variant
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mOperator As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRightColumn As Variant
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
