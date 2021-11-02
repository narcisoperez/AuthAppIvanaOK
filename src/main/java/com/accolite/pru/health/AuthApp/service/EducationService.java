/*
 * Copyright 2021 NarW10.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.accolite.pru.health.AuthApp.service;

import com.accolite.pru.health.AuthApp.model.Education;
import com.accolite.pru.health.AuthApp.repository.EducationRepository;
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author NarW10
 */
@Service
public class EducationService {
    private static final Logger logger = Logger.getLogger(UserService.class);
    //private final PasswordEncoder passwordEncoder;
    private final EducationRepository educationRepository;
    //private final RoleService roleService;
    //private final UserDeviceService userDeviceService;
    //private final RefreshTokenService refreshTokenService;

    @Autowired
    public EducationService(EducationRepository educationRepository) {
        this.educationRepository = educationRepository;
    }
 
    /**
     * Finds a user in the database by username
    */
    public List<Education> findAlleducation() {
        return educationRepository.findAll();
    }


}
