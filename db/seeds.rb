# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 

symptom_list = [
  "Abdominal Pain",
  "Anemia",
  "Back Pain",
  "Blood in Stool",
  "Blood in Urine",
  "Chest Pain",
  "Conjunctivitis",
  "Constipation",
  "Cough",
  "Dark Urine",
  "Diarrhea",
  "Dizziness",
  "Erectile Dysfunction",
  "Fatigue",
  "Fever",
  "Foot Pain",
  "Frequent Urination",
  "Gas",
  "Headache",
  "Heel Pain",
  "Hives",
  "Insomnia",
  "Itching",
  "Joint Pain",
  "Knee Pain",
  "Loss of Appetite",
  "Low Grade Fever",
  "Morning Sickness",
  "Nausea",
  "Night Sweats",
  "Rash",
  "Sleep Paralysis",
  "Sneezing",
  "Sore Throat",
  "Stuffy Nose",
  "Swollen Feet",
  "Vaginal Discharge",
  "Vaginal Itching",
  "Vertigo"
]

symptom_list.each do |name|
  Symptom.create( symptom_name: name )
end
