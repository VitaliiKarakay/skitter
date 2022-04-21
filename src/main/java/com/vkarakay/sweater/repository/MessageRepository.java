package com.vkarakay.sweater.repository;

import com.vkarakay.sweater.domain.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Long> {
    List<Message> findBytag(String tag);
}
