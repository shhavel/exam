```shell
$ mix phoenix.gen.html Test tests locale category name
$ mix phoenix.gen.html Question questions test_id:references:tests text:text
$ mix phoenix.gen.html Answer answers question_id:references:questions text:text correct:boolean
$ mix phoenix.gen.html Participation results test_id:references:tests valuation:float mark
$ mix phoenix.gen.model Reply replies participation_id:references:participations question_id:references:questions
$ mix phoenix.gen.model Opinion opinions reply_id:references:replies answer_id:references:answers agree:boolean
```
