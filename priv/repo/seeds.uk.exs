# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Exam.Repo.insert!(%Exam.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Exam.Repo
alias Exam.Test
alias Exam.Question
alias Exam.Answer

test = Repo.insert! %Test{locale: "uk", category: "Geography", guide: "uk-g8", name: "ЗАГАЛЬНИЙ РОЗДІЛ"}

question = Repo.insert! %Question{test_id: test.id, text: "Які з відповідей є правильними?"}
Repo.insert! %Answer{question_id: question.id, text: "Україна знаходиться у ІІІ годинному поясі", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Відлік часу ведеться від 180-го меридіана", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Полудень в Україні настає на дві години раніше, ніж у нульовому (західноєвропейському) годинному поясі", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "Яка з відповідей є неправильною?"}
Repo.insert! %Answer{question_id: question.id, text: "За видом геометричної поверхні картографічні проекції поділяються на циліндричні, азимутальні, конічні", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "До тематичних карт належать фізико-географічні й економічні карти", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Використовуючи рівновеликі проекції, можна створювати карти без спотворень", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "Уперше назва \"Україна\" згадується:"}
Repo.insert! %Answer{question_id: question.id, text: "в Київському Літописі (1187 р.)", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "в книзі Г. Боплана \"Опис України\" (1650 р.)", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "в описах візантійських та арабських мандрівників X ст.", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Автором \"Опису України\" є:"}
Repo.insert! %Answer{question_id: question.id, text: "Гіппократ", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Г. Боплан", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Геродот", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Загальновизнаний географічний центр України знаходиться:"}
Repo.insert! %Answer{question_id: question.id, text: "у м. Світловодськ Кіровоградської області", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "поблизу с. Мар'янівка Черкаської області", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "біля м.Чигирин Черкаської області", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Крайньою південною точкою України є:"}
Repo.insert! %Answer{question_id: question.id, text: "м. Сарич", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "м. Тарханкут", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "м. Меганом", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Які з тверджень є правильними?"}
Repo.insert! %Answer{question_id: question.id, text: "Площа території України становить 603,7 тис. кв. км", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Україна межує з сімома країнами", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Територія України омивається водами трьох морів", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "З якими із перелічених країн не межує Україна?"}
Repo.insert! %Answer{question_id: question.id, text: "Зі Словаччиною", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "З Болгарією", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Зі Словенією", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "У якому році завершилось формування території України?"}
Repo.insert! %Answer{question_id: question.id, text: "У 1922", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "У 1954", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "У 1991", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: " Які території були включені до складу України в повоєнні часи?"}
Repo.insert! %Answer{question_id: question.id, text: "Північна Буковина", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Південна Бессарабія", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Закарпаття", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Кримська область", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "Членом яких із перелічених організацій  є Україна?"}
Repo.insert! %Answer{question_id: question.id, text: "ОПЕК", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Співдружність незалежних держав", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Міжнародний валютний фонд", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Світова організація торгівлі", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "Яка з відповідей є правильною?"}
Repo.insert! %Answer{question_id: question.id, text: "Вибори до Верховної Ради України проводяться раз у п'ять років", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Вибори Президента України відбуваються раз у чотири роки", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Парламент України складається з 450 депутатів", correct: true}


test = Repo.insert! %Test{locale: "uk", category: "Geography", guide: "g8", name: "ПРИРОДНІ УМОВИ ТА ПРИРОДНІ РЕСУРСИ"}

question = Repo.insert! %Question{test_id: test.id, text: "Найдавнішими архейськими і протерозойськими породами складено:"}
Repo.insert! %Answer{question_id: question.id, text: "Причорноморську западину", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Воронезький кристалічний щит", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Український щит", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Волино-Подільську Плиту", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "В який із геологічних періодів останні моря залишили територію України?"}
Repo.insert! %Answer{question_id: question.id, text: "У неогені", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "В юрі", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "У палеогені", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Найвищою вершиною Криму є"}
Repo.insert! %Answer{question_id: question.id, text: "г. Роман-Кош", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "г. Демерджі", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "г. Ай-Петрі", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Яка висота Говерли?"}
Repo.insert! %Answer{question_id: question.id, text: "1545 м", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "2061 м", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "1527 м", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Яка з відповідей є правильною?"}
Repo.insert! %Answer{question_id: question.id, text: "Вся територія України розташована в помірному кліматичному поясі", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Континентальність клімату України зростає з півночі на південь", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Найбільші річні суми опадів в Україні припадають на Карпати", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "Скільки гірських вершин України мають висоту понад 2 000 метрів?"}
Repo.insert! %Answer{question_id: question.id, text: "5", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "6", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "4", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Яке з тверджень є неправильним?"}
Repo.insert! %Answer{question_id: question.id, text: "Основна маса опадів в Україні випадає у теплий період року", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Україна добре забезпечена водними ресурсами", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Південний берег Криму знаходиться в межах субтропічного кліматичного поясу", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Яка з річок України не належить до Азово-Чорноморського басейну?"}
Repo.insert! %Answer{question_id: question.id, text: "Західний Буг", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Дністер", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Сейм", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Які з відповідей є правильними?"}
Repo.insert! %Answer{question_id: question.id, text: "Найменша солоність води Чорного моря спостерігається в його південній частині", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Більшість живих організмів Чорного моря мешкає в його глибинних шарах", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Максимальна глибина Азовського моря становить 15 м", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Більшість живих організмів Чорного моря мешкають на глибинах до 200 м", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "Які ґрунти найпоширеніші в лісостеповій та степовій зонах України?"}
Repo.insert! %Answer{question_id: question.id, text: "Чорноземи", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Дерново-підзолисті", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Сірі лісові", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "До якої із перелічених тектонічних структур приурочені родовища нафти та газу, поклади кам‘яного вугілля в Україні?"}
Repo.insert! %Answer{question_id: question.id, text: "Дніпровсько-Донецька западина", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Воронезький кристалічний масив", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Український кристалічний щит", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Вугільними басейнами України є:"}
Repo.insert! %Answer{question_id: question.id, text: "Причорноморський", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Донецький", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Львівсько-Волинський", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "Як називається відрив і переміщення мас гірських порід по схилу під дією сили тяжіння?"}
Repo.insert! %Answer{question_id: question.id, text: "Площинний змив", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Карстоутворення", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Зсув", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "В якій природній зоні України найвища сільськогосподарська освоєність земель?"}
Repo.insert! %Answer{question_id: question.id, text: "У степовій", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "У лісовій", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "У лісостеповій", correct: false}
