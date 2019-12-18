INSERT INTO `dss_application` (`id`, `name`, `url`, `is_user_need_init`, `level`, `user_init_url`, `exists_project_service`, `project_url`, `enhance_json`, `if_iframe`, `homepage_url`, `redirect_url`) VALUES (NULL, 'qualitis', 'http://QUALITIS_ADRESS_IP_2:QUALITIS_ADRESS_PORT', '0', '1', NULL, '1', 'http://QUALITIS_ADRESS_IP_2:QUALITIS_ADRESS_PORT/#/projects/list?id=${projectId}&flow=true', NULL, '1', 'http://QUALITIS_ADRESS_IP_2:QUALITIS_ADRESS_PORT/#/dashboard', 'http://QUALITIS_ADRESS_IP_2:QUALITIS_ADRESS_PORT/qualitis/api/v1/redirect');
SELECT @qualitis_appid:=id from dss_application WHERE `name` = 'qualitis';
INSERT INTO `dss_workflow_node` (`id`, `icon`, `node_type`, `application_id`, `submit_to_scheduler`, `enable_copy`, `should_creation_before_node`, `support_jump`, `jump_url`) VALUES (NULL, NULL, 'linkis.appjoint.qualitis', @qualitis_appid, NULL, '1', '0', '1', 'http://QUALITIS_ADRESS_IP_2:QUALITIS_ADRESS_PORT/#/addGroupTechniqueRule?tableType=1&id=${projectId}&ruleGroupId=${ruleGroupId}&nodeId=${nodeId}');