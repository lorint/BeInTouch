# Seeds file for be_in_touch:

  puts 'Seeding: ActiveStorage::Blob'
active_storage_blobs_1 = ActiveStorage::Blob.create(key: "ce60l6sjcledhvkfu10fw2kntgns", filename: #<ActiveStorage::Filename:0x0000000113fe5718 @filename="rosie.png">, content_type: "image/png", metadata: {"identified"=>true, "analyzed"=>true}, service_name: "local", byte_size: 1962707, checksum: "qA9ywfwlpGimyzMJKRODNQ==", created_at: "2024-06-15 13:58:37 UTC")
active_storage_blobs_2 = ActiveStorage::Blob.create(key: "a0l4wqtwadgom3k37hvhtt74xi1l", filename: #<ActiveStorage::Filename:0x0000000113fdeb70 @filename="alice.png">, content_type: "image/png", metadata: {"identified"=>true, "analyzed"=>true}, service_name: "local", byte_size: 265865, checksum: "pQs272NCOpKDZ4cOWGDJ9g==", created_at: "2024-06-15 13:59:37 UTC")
  # (Skipping Event as it has no rows)
  # (Skipping Occasion as it has no rows)
  puts 'Seeding: Person'
people_1 = Person.create(first_name: "Rosie", last_name: "Peterson", latitude: nil, longitude: nil, bio: "39 year old gal with a child", created_at: "2024-06-15 12:47:56 UTC", updated_at: "2024-06-15 13:58:38 UTC")
people_2 = Person.create(first_name: "Mary", last_name: "Sutton", latitude: nil, longitude: nil, bio: "", created_at: "2024-06-15 12:52:06 UTC", updated_at: "2024-06-15 12:52:06 UTC")
people_3 = Person.create(first_name: "Alice", last_name: "", latitude: nil, longitude: nil, bio: "Rosie's daughter, born August 2020", created_at: "2024-06-15 13:59:37 UTC", updated_at: "2024-06-15 13:59:37 UTC")
  puts 'Seeding: Relation'
relations_1 = Relation.create(name: "Work mate")
relations_2 = Relation.create(name: "Immediate family")
relations_3 = Relation.create(name: "Play group mom")

  puts 'Seeding: ActiveStorage::Attachment'
active_storage_attachments_1 = ActiveStorage::Attachment.create(blob: active_storage_blobs_1, name: "image", record_type: "Person", record_id: 1, created_at: "2024-06-15 13:58:37 UTC")
active_storage_attachments_2 = ActiveStorage::Attachment.create(blob: active_storage_blobs_2, name: "image", record_type: "Person", record_id: 3, created_at: "2024-06-15 13:59:37 UTC")
  # (Skipping ActiveStorage::VariantRecord as it has no rows)
  puts 'Seeding: Pal'
pals_1 = Pal.create(friender: people_1, friendee: people_2, relation: relations_3, created_at: "2024-06-15 12:52:27 UTC", updated_at: "2024-06-15 12:52:27 UTC")
pals_2 = Pal.create(friender: people_1, friendee: people_3, relation: relations_2, created_at: "2024-06-15 14:00:27 UTC", updated_at: "2024-06-15 14:00:27 UTC")
  # (Skipping Passion as it has no rows)
  # (Skipping PersonOccasion as it has no rows)

  # (Skipping PalPassion as it has no rows)
  # (Skipping Reminder as it has no rows)

  # (Skipping Interaction as it has no rows)
