#tag Class
Protected Class ORMRelationHasManyHard
Inherits ORMRelationHasMany
	#tag Method, Flags = &h0
		Sub Remove(pORM As ORM, pDatabase As Database, pCommit As Boolean)
		  #Pragma Unused pORM
		  
		  // Remove the entry instead of nullifying the primary key
		  DB.Delete(mORM.TableName). _
		  Where(mORM.Pks). _
		  Execute(pDatabase, pCommit)
		End Sub
	#tag EndMethod


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
