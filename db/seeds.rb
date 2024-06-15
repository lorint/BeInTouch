# Seeds file for be_in_touch:

  # (Skipping ActiveStorage::Blob as it has no rows)
  # (Skipping Event as it has no rows)
  # (Skipping Interaction as it has no rows)
  # (Skipping Occasion as it has no rows)
  # (Skipping PalPassion as it has no rows)
  puts 'Seeding: Person'
people_1 = Person.create(first_name: "Rosie", last_name: "Peterson", latitude: nil, longitude: nil, bio: "39 year old gal with a child", created_at: "2024-06-15 12:47:56 UTC", updated_at: "2024-06-15 12:47:56 UTC")
people_2 = Person.create(first_name: "Mary", last_name: "Sutton", latitude: nil, longitude: nil, bio: "", created_at: "2024-06-15 12:52:06 UTC", updated_at: "2024-06-15 12:52:06 UTC")
  # (Skipping PersonOccasion as it has no rows)
  puts 'Seeding: Relation'
relations_1 = Relation.create(name: "Work mate")
relations_2 = Relation.create(name: "Immediate family")
relations_3 = Relation.create(name: "Play group mom")
  # (Skipping Reminder as it has no rows)

  # (Skipping ActiveStorage::Attachment as it has no rows)
  # (Skipping ActiveStorage::VariantRecord as it has no rows)
  puts 'Seeding: Pal'
pals_1 = Pal.create(friender: people_1, friendee: people_2, relation: relations_3, created_at: "2024-06-15 12:52:27 UTC", updated_at: "2024-06-15 12:52:27 UTC")
  # (Skipping Passion as it has no rows)
