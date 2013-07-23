#tag Module
Protected Module DB
	#tag Method, Flags = &h0
		Function Delete(pTableName As String) As QueryBuilder
		  Dim pQueryBuilder As New QueryBuilder
		  
		  pQueryBuilder.Append(new DeleteQueryExpression(pTableName))
		  
		  Return pQueryBuilder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Expression(pExpression As String) As ExpressionQueryExpression
		  Return new ExpressionQueryExpression(pExpression)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Find(pTablesColumns() As Dictionary, pTableName As String) As QueryBuilder
		  Dim pQueryBuilder As New QueryBuilder
		  
		  pQueryBuilder.Append(new SelectQueryExpression(pTablesColumns, pTableName))
		  
		  return pQueryBuilder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Find(pColumns() As String, pTableName As String) As QueryBuilder
		  Dim pTableColumns As New Dictionary("TableName": pTableName, "Alias": pTableName, "Columns": New Dictionary)
		  
		  Dim pTableColumn As New Dictionary
		  // Sets the columns in a child Dictionary
		  For i As Integer = 0 To pColumns.Ubound
		    pTableColumn.Value(pColumns(i)) = pColumns(i)
		  Next
		  
		  pTableColumns.Value("Columns") = pTableColumn
		  
		  return Find(Array(pTableColumns), pTableName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Find(pTableName As String) As QueryBuilder
		  Return Find(Array("*"), pTableName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Find(pColumn As String, pTableName As String) As QueryBuilder
		  Return Find(Array(pColumn), pTableName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Insert(pTableName As String, pColumns() As String) As QueryBuilder
		  Dim pQueryBuilder As New QueryBuilder
		  
		  pQueryBuilder.Append(new InsertQueryExpression(pTableName, pColumns))
		  
		  Return pQueryBuilder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Update(pTableName As String) As QueryBuilder
		  Dim pQueryBuilder As New QueryBuilder
		  
		  pQueryBuilder.Append(new UpdateQueryExpression(pTableName))
		  
		  Return pQueryBuilder
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
