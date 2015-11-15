class Dokument		# Loesung zum Übungsblatt 2, endgültig

	attr_accessor :text, :inhalt
	
	def initialize(text, inhalt)
		@text = text
		@inhalt = inhalt
	end	
	
		
	def schreibweise(inhalt)	
		
		$a = 0
		$b = 0
		
		
		text.split.each{|t|					
			
			if inhalt.capitalize == inhalt
				if t == inhalt
				$a = $a + 1
			else
					if t.capitalize == inhalt
						$b = $b + 1
					else
							if inhalt.capitalize == t
								$b = $b + 1
							end
					end
			end
				
				
				
				
				
			else
				
				
				
				if t == inhalt
				$b = $b + 1
			else
					if t.capitalize == inhalt
						$b = $b + 1
					else
							if inhalt.capitalize == t
								$a = $a + 1
							end
					end
			end
			end
		}
		puts "Das Wort _#{inhalt}_ kommt vor: grossgeschrieben: #{$a} Mal, kleingeschrieben: #{$b} Mal."
		puts "[#{$a}, #{$b}]"
		
	end
	
			def kontext(inhalt)
			
			
			text.split.each {|t|
			
			
			if t == inhalt
				
				puts "Kontext des ersten Vorkommens des Wortes _#{inhalt}_ ist wie folgt: "
				$c = text.split.index(inhalt)
				puts "#{text.split[$c - 1]}_#{inhalt}_#{text.split[$c + 1]}"
			 
				break
			end
			
			
			}
			
				
			
			
		end
	
	
	
	
	
		
	
	def to_s
		schreibweise
		kontext
	end
	
end	
text = "Tag der deutschen Einheit. Der 3. Oktober wurde als Tag der Deutschen Einheit im Einigungsvertrag 1990 zum gesetzlichen Feiertag in Deutschland bestimmt. Als deutscher Nationalfeiertag erinnert er an die deutsche Wiedervereinigung, die „mit dem Wirksamwerden des Beitritts der Deutschen Demokratischen Republik zur Bundesrepublik Deutschland am 3. Oktober 1990“ „vollendet“ wurde. Somit wurden Brandenburg, Mecklenburg-Vorpommern, Sachsen, Sachsen-Anhalt und Thüringen sowie Berlin in seiner Gesamtheit die neuen Länder der Bundesrepublik Deutschland. Geschichte der deutschen Nationalfeiertage Vor 1919 Vor 1871 wurde in den deutschen Einzelstaaten und Regionen hauptsächlich der verschiedenen Krönungstage gedacht."

test_document = Dokument.new(text, inhalt = "")
test_document.schreibweise("deutschen")

test_instanz = Dokument.new(text, inhalt = "")
test_instanz.kontext("sowie")
