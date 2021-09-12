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


        Scenario: difficult parameters: json object
          * def student = { 'name' : 'sam' ,'owes_tuition' : false}
          * print student
          * print student.name
          * print student.owes_tuition



  Scenario: difficult parameters: json object
    * def student =
    """
    { "firstname" : "Steven",
      "lastname" : "King" ,
       "salary" : 1200
    }
    """
    
    * print student.firstname
    * print student.lastname

  Scenario: one spartan
    * def spartan =
    """
    {
    "id": 1001,
    "name": "TJ",
    "gender": "Male",
    "phone": 1231231231
}
    """
    * print spartan.id
    * print spartan.name
    * print spartan.gender
    * print spartan.phone
  

  Scenario: json array objects
    * def students =
    """
    [
    { "firstname" : "Steven",
      "lastname" : "King"

    },
    { "firstname" : "Barış",
      "lastname" : "Altun"

    },
    { "firstname" : "Hacı",
      "lastname" : "Abi"

    }
    
    ]
    
    """
    * print students
    * print students[0].firstname
    * print students[1].lastname
