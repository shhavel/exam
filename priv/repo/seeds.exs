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

test = Repo.insert! %Test{locale: "en", category: "Geography", guide: "en-g8", name: "GENERAL SECTION"}

question = Repo.insert! %Question{test_id: test.id, text: "Which answer is correct?"}
Repo.insert! %Answer{question_id: question.id, text: "Ukraine is in a third time zone", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "The countdown is on 180 th meridian", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Midday in Ukraine comes two hours earlier than zero (Western European) time zone", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "Which answer is wrong?"}
Repo.insert! %Answer{question_id: question.id, text: "By type of geometric surface map projections are divided into cylindrical, azimuthal, conical", correct: false}
Repo.insert! %Answer{question_id: question.id, text: " By thematic maps are geographical and economic maps", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Using equal projection, you can create maps without distortion", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "For the first time the name \"Ukraine\" is mentioned:"}
Repo.insert! %Answer{question_id: question.id, text: "the Kyiv Chronicle (1187)", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "G. Boplana in the book \"Description of Ukraine\" (1650)", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "in the descriptions of Byzantine and Arab travelers X century.", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "The author of the \"Description of Ukraine\" are:"}
Repo.insert! %Answer{question_id: question.id, text: "Hippocrates", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "G. Boplan", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Herodotus", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Avowed geographical center of Ukraine is:"}
Repo.insert! %Answer{question_id: question.id, text: "in the city. Svitlovodsk Kirovograd region", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "near the village. Marianivka Cherkasy region", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "m.Chyhyryn near Cherkassy region", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "The southernmost point of Ukraine:"}
Repo.insert! %Answer{question_id: question.id, text: "Sarich", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Tarkhankut", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Meganom", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Which of the statements is correct?"}
Repo.insert! %Answer{question_id: question.id, text: "The area of ​​Ukraine is 603,7 thousand sq. km", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Ukraine borders with seven countries", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "The territory of Ukraine is washed by three seas", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Which of these countries not bordering Ukraine?"}
Repo.insert! %Answer{question_id: question.id, text: "Slovakia", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Bulgaria", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Slovenia", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "What year ended with the formation of Ukraine?"}
Repo.insert! %Answer{question_id: question.id, text: "In 1922", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "In 1954", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "In 1991", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Which territories were included in the Ukraine in World War II?"}
Repo.insert! %Answer{question_id: question.id, text: "Northern Bukovina", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "South Bessarabia", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Transcarpathia", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Crimean region", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "Which member of these organizations is Ukraine?"}
Repo.insert! %Answer{question_id: question.id, text: "OPEC", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Commonwealth of Independent States", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "The International Monetary Fund", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "The World Trade Organization", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "Which answer is correct?"}
Repo.insert! %Answer{question_id: question.id, text: "Elections to the Verkhovna Rada of Ukraine shall be held once every five years", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Presidential elections in Ukraine held every four years", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Ukraine's Parliament consists of 450 members", correct: true}


test = Repo.insert! %Test{locale: "en", category: "Geography", guide: "en-g8", name: "NATURAL CONDITIONS AND NATURAL RESOURCES"}

question = Repo.insert! %Question{test_id: test.id, text: "The oldest Archean and Proterozoic rocks composed of:"}
Repo.insert! %Answer{question_id: question.id, text: "Black Sea basin", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Voronezh crystalline shield", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Ukrainian Shield", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Volyn-Podolsk Cooker", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Which of past geological periods Sea left the Ukraine?"}
Repo.insert! %Answer{question_id: question.id, text: "In the Neogene", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "In the Jurassic", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "In the Paleogene", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "The highest peak in the Crimea is"}
Repo.insert! %Answer{question_id: question.id, text: "Roman-Kosh", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Demerdzhi", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Ai-Petri", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "What height Goverly?"}
Repo.insert! %Answer{question_id: question.id, text: "1545 m", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "2061 m", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "1527 m", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Which answer is correct?"}
Repo.insert! %Answer{question_id: question.id, text: "The whole territory of Ukraine is located in the temperate climate zone", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "The continental climate of Ukraine is increasing from north to south", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "The greatest annual precipitation in the Carpathian Mountains of Ukraine is", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "How many peaks of Ukraine shall have a height of 2000 meters?"}
Repo.insert! %Answer{question_id: question.id, text: "5", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "6", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "4", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Which of the statements is wrong?"}
Repo.insert! %Answer{question_id: question.id, text: "Most of the precipitation falls in the Ukraine during the warmer seasons", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Ukraine is well provided with water", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Southern coast of Crimea is within the subtropical climatic zone", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Which river does not belong to Ukraine Black Sea?"}
Repo.insert! %Answer{question_id: question.id, text: "Western Bug", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Dniester", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Diet", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Which answer is correct?"}
Repo.insert! %Answer{question_id: question.id, text: "The lowest salinity of the Black Sea seen in its southern part", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Most living organisms inhabit the Black Sea in its deep layers", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "The maximum depth of the Sea of ​​Azov is 15 m", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Most living organisms inhabiting the Black Sea at depths up to 200 m", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "What are the most common soils in the forest-steppe and steppe zones of Ukraine?"}
Repo.insert! %Answer{question_id: question.id, text: "Chernozem", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Sod-podzolic", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Gray forest", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Which of these tectonic structures confined deposits of oil and gas deposits of coal in Ukraine?"}
Repo.insert! %Answer{question_id: question.id, text: "Dnieper-Donetsk Basin", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Voronezh crystalline massif", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Ukrainian crystalline shield", correct: false}

question = Repo.insert! %Question{test_id: test.id, text: "Coal basin of Ukraine are:"}
Repo.insert! %Answer{question_id: question.id, text: "Black Sea", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Donetsk", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "Lviv-Volyn", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "How is lead and moving masses of rock slope under the force of gravity?"}
Repo.insert! %Answer{question_id: question.id, text: "Plane wash", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Karst", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "Landslide", correct: true}

question = Repo.insert! %Question{test_id: test.id, text: "What natural zone of Ukraine is the highest agricultural development of the land?"}
Repo.insert! %Answer{question_id: question.id, text: "The steppe", correct: true}
Repo.insert! %Answer{question_id: question.id, text: "In the forest", correct: false}
Repo.insert! %Answer{question_id: question.id, text: "In the forest-steppe", correct: false}
