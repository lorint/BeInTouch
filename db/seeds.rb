# Seeds file for be_in_touch:

  puts 'Seeding: ActiveStorage::Blob'
active_storage_blobs_1 = ActiveStorage::Blob.create(key: "ce60l6sjcledhvkfu10fw2kntgns", filename: "rosie.png", content_type: "image/png", metadata: {"identified"=>true, "analyzed"=>true}, service_name: "local", byte_size: 1962707, checksum: "qA9ywfwlpGimyzMJKRODNQ==", created_at: "2024-06-15 13:58:37 UTC")
active_storage_blobs_2 = ActiveStorage::Blob.create(key: "a0l4wqtwadgom3k37hvhtt74xi1l", filename: "alice.png", content_type: "image/png", metadata: {"identified"=>true, "analyzed"=>true}, service_name: "local", byte_size: 265865, checksum: "pQs272NCOpKDZ4cOWGDJ9g==", created_at: "2024-06-15 13:59:37 UTC")
active_storage_blobs_3 = ActiveStorage::Blob.create(key: "03eoz9sl415cdjwf9e78r4ubz7pf", filename: "Screenshot 2024-06-15 at 15.24.23.png", content_type: "image/png", metadata: {"identified"=>true, "analyzed"=>true}, service_name: "local", byte_size: 1042538, checksum: "ro2DmYJtEGeJ6twe1/L9cw==", created_at: "2024-06-15 14:26:50 UTC")
active_storage_blobs_4 = ActiveStorage::Blob.create(key: "wkis04wkwhjev7cfws3nnjb7khug", filename: "miguel.png", content_type: "image/png", metadata: {"identified"=>true, "analyzed"=>true}, service_name: "local", byte_size: 236970, checksum: "4FlZz3Y76eGzUqIVPqvxfw==", created_at: "2024-06-16 07:40:41 UTC")
active_storage_blobs_5 = ActiveStorage::Blob.create(key: "bfbjpdvjf5snh3bysnaaptpgds73", filename: "grace.png", content_type: "image/png", metadata: {"identified"=>true, "analyzed"=>true}, service_name: "local", byte_size: 256523, checksum: "pgm8QSYHNJEjq6Wl6Tsg3g==", created_at: "2024-06-16 07:41:25 UTC")
active_storage_blobs_6 = ActiveStorage::Blob.create(key: "a0rx36lkdymcffq90zlaofwqgwab", filename: "jim.png", content_type: "image/png", metadata: {"identified"=>true, "analyzed"=>true}, service_name: "local", byte_size: 255876, checksum: "fATNVEREZpoQX/AnnDgtzg==", created_at: "2024-06-16 07:41:56 UTC")
active_storage_blobs_7 = ActiveStorage::Blob.create(key: "3rkxxfltjtf7jtcy0mwdferaawv8", filename: "tom.png", content_type: "image/png", metadata: {"identified"=>true, "analyzed"=>true}, service_name: "local", byte_size: 192123, checksum: "e0uzBs+K6ETSuyb64LJIXw==", created_at: "2024-06-16 07:46:01 UTC")
  # (Skipping Event as it has no rows)
  # (Skipping Occasion as it has no rows)
  puts 'Seeding: Person'
people_1 = Person.create(first_name: "Rosie", last_name: "Peterson", latitude: nil, longitude: nil, bio: "Rosie is 39, she's an academic in social sciences. She's got a daughter called Alice", created_at: "2024-06-15 12:47:56 UTC", updated_at: "2024-06-16 07:47:40 UTC")
people_2 = Person.create(first_name: "Mary", last_name: "Sutton", latitude: nil, longitude: nil, bio: "", created_at: "2024-06-15 12:52:06 UTC", updated_at: "2024-06-15 12:52:06 UTC")
people_3 = Person.create(first_name: "Alice", last_name: "", latitude: nil, longitude: nil, bio: "Rosie's daughter, born August 2020", created_at: "2024-06-15 13:59:37 UTC", updated_at: "2024-06-15 13:59:37 UTC")
people_4 = Person.create(first_name: "Simon", last_name: "", latitude: nil, longitude: nil, bio: "Simon is Miguel's best friend from school, he lives in Barcelona now and he's the world's biggest fan of Aston Villa Football Club", created_at: "2024-06-15 14:26:50 UTC", updated_at: "2024-06-15 14:26:50 UTC")
people_5 = Person.create(first_name: "Miguel", last_name: "", latitude: nil, longitude: nil, bio: "Rosie's partner and Alice's father. Miguel is 39 and met Rosie at university. Miguel works in epidemiology. Miguel's family moved to the UK from Spain when he was a child and he grew up in Birmingham. He's a big fan of Aston Villa FC", created_at: "2024-06-16 07:40:41 UTC", updated_at: "2024-06-16 07:40:41 UTC")
people_6 = Person.create(first_name: "Grace", last_name: "", latitude: nil, longitude: nil, bio: "Rosie's mum. Grace is a retired child psychologist and she loves sewing.", created_at: "2024-06-16 07:41:25 UTC", updated_at: "2024-06-16 07:41:25 UTC")
people_7 = Person.create(first_name: "Jim", last_name: "", latitude: nil, longitude: nil, bio: "Rosie's dad. Jim's a retired history teacher, his retirement project is writing a history of the family.", created_at: "2024-06-16 07:41:56 UTC", updated_at: "2024-06-16 07:41:56 UTC")
people_8 = Person.create(first_name: "Tom", last_name: "", latitude: nil, longitude: nil, bio: "Rosie's brother. He was a analyst with bank, but he just got made redundant and is having a hard time.", created_at: "2024-06-16 07:46:01 UTC", updated_at: "2024-06-16 07:46:01 UTC")
  puts 'Seeding: Relation'
relations_2 = Relation.create(name: "Immediate family")
relations_3 = Relation.create(name: "nursery parent")
relations_4 = Relation.create(name: "Partner")
relations_6 = Relation.create(name: "Colleague")

  puts 'Seeding: ActiveStorage::Attachment'
active_storage_attachments_1 = ActiveStorage::Attachment.create(blob: active_storage_blobs_1, name: "image", record_type: "Person", record_id: 1, created_at: "2024-06-15 13:58:37 UTC")
active_storage_attachments_2 = ActiveStorage::Attachment.create(blob: active_storage_blobs_2, name: "image", record_type: "Person", record_id: 3, created_at: "2024-06-15 13:59:37 UTC")
active_storage_attachments_3 = ActiveStorage::Attachment.create(blob: active_storage_blobs_3, name: "image", record_type: "Person", record_id: 4, created_at: "2024-06-15 14:26:50 UTC")
active_storage_attachments_4 = ActiveStorage::Attachment.create(blob: active_storage_blobs_4, name: "image", record_type: "Person", record_id: 5, created_at: "2024-06-16 07:40:41 UTC")
active_storage_attachments_5 = ActiveStorage::Attachment.create(blob: active_storage_blobs_5, name: "image", record_type: "Person", record_id: 6, created_at: "2024-06-16 07:41:25 UTC")
active_storage_attachments_6 = ActiveStorage::Attachment.create(blob: active_storage_blobs_6, name: "image", record_type: "Person", record_id: 7, created_at: "2024-06-16 07:41:56 UTC")
active_storage_attachments_7 = ActiveStorage::Attachment.create(blob: active_storage_blobs_7, name: "image", record_type: "Person", record_id: 8, created_at: "2024-06-16 07:46:01 UTC")
  # (Skipping ActiveStorage::VariantRecord as it has no rows)
  puts 'Seeding: Pal'
pals_1 = Pal.create(friender: people_1, friendee: people_2, relation: relations_3, created_at: "2024-06-15 12:52:27 UTC", updated_at: "2024-06-15 12:52:27 UTC")
pals_2 = Pal.create(friender: people_1, friendee: people_3, relation: relations_2, created_at: "2024-06-15 14:00:27 UTC", updated_at: "2024-06-15 14:00:27 UTC")
pals_3 = Pal.create(friender: people_1, friendee: people_5, relation: relations_4, created_at: "2024-06-16 07:44:47 UTC", updated_at: "2024-06-16 07:44:47 UTC")
pals_4 = Pal.create(friender: people_1, friendee: people_6, relation: relations_2, created_at: "2024-06-16 07:45:19 UTC", updated_at: "2024-06-16 07:45:19 UTC")
pals_5 = Pal.create(friender: people_1, friendee: people_7, relation: relations_2, created_at: "2024-06-16 07:45:29 UTC", updated_at: "2024-06-16 07:45:29 UTC")
pals_6 = Pal.create(friender: people_1, friendee: people_8, relation: relations_2, created_at: "2024-06-16 07:46:31 UTC", updated_at: "2024-06-16 07:46:31 UTC")
  puts 'Seeding: Passion'
passions_1 = Passion.create(created_by: people_4, name: "Aston Villa FC", created_at: "2024-06-15 15:09:46 UTC", updated_at: "2024-06-15 15:09:46 UTC")
  # (Skipping PersonOccasion as it has no rows)

  # (Skipping PalPassion as it has no rows)
  # (Skipping Reminder as it has no rows)

  # (Skipping Interaction as it has no rows)
