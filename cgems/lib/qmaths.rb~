class Mathsques
	@question
	@a
	@b
	@op
	def generateQuestion(avalue,bvalue)
		@a = avalue
		@b= bvalue
		@op= [:+,:-,:*,:/].sample		
		@question="#{@b} #{@op} #{@a}"
		return @question
	end

	def getans()
		calc=0
		case @op
		when :+
		calc= @b+@a
		when :-
		calc=@b-@a
		when :*
		calc=@b*@a
		when :/
		calc= @b/@a
		end
	return calc
	end
	
	def checkanswer(userans)	
	if (userans== getans())
	result= "Correct"
	else 
	result= "Wrong"
	end
	return result
	end
end



