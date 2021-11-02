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
package com.accolite.pru.health.AuthApp.controller;

import com.accolite.pru.health.AuthApp.service.EducationService;
import com.accolite.pru.health.AuthApp.service.PersonaService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author NarW10
 */
@RestController
//@Secured("IS_AUTHENTICATED_ANONYMOUSLY")
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:4200")
@Api(value = "User Rest API", description = "Defines endpoints for the logged in user. It's secured by default")
public class EducationController {
    private static final Logger logger = Logger.getLogger(UserController.class);
    private final EducationService educationService;
    
    @Autowired
    public EducationController(EducationService educationService) {
        this.educationService = educationService;
    }
    
     /**
     * Gets the current user profile of the logged in user
     */
    @GetMapping("/education")
    @PreAuthorize("hasRole('USER')")
    @ApiOperation(value = "Returns the current user profile")
    public ResponseEntity getEducation() {
        return ResponseEntity.ok(educationService.findAlleducation());
    }
}
