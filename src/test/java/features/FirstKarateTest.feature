Feature: welcome to karate
  
  Scenario: how to print
    Given print "Hello World"
    When print "another print"
    Then print "then print"
    
    Scenario: more printing
      Given print 'Some words to print'
      * print 'my name is ','karate kid'
      # , is using for concat
      * print  '2+2=' ,(2+2)

      Scenario: variables
        * def name = 'Mike'
        # if we use + print result isMike
        * print 'My name is' + name
   # if we use , print result is Mike
        * print 'My name is' , name
    * def age = 28
    
    * print name , 'is' , age, 'years old'

        Scenario: diffucult parameters: json object

