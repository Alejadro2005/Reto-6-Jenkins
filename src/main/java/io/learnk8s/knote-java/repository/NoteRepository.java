package io.learnk8s.knotejava.repository;

import io.learnk8s.knotejava.model.Note;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface NoteRepository extends MongoRepository<Note, String> {
} 