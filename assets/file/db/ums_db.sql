-- ----------------------------
-- DATABASE ums_db
-- ----------------------------
CREATE DATABASE `ums_db` DEFAULT;

-- ----------------------------
-- Table structure for ums_api
-- ----------------------------
DROP TABLE IF EXISTS `ums_api`;
CREATE TABLE `ums_api` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `menu_id` varchar(36) NOT NULL COMMENT '菜单ID',
  `api_title` varchar(100) NOT NULL COMMENT '接口名称',
  `api_code` varchar(200) NOT NULL COMMENT '接口编码',
  `api_url` varchar(500) NOT NULL COMMENT '接口地址',
  `api_http_method` varchar(20) NOT NULL COMMENT '请求方式（Get,Post,Put,Head,Delete,Options,Trace,Connect）',
  `api_param` varchar(2000) DEFAULT NULL COMMENT '接口参数',
  `sort` int unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `note` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `a_menu_id` (`menu_id`) USING BTREE,
  KEY `a_api_code` (`api_code`) USING BTREE,
  KEY `a_api_url` (`api_url`) USING BTREE
) COMMENT='接口表';

-- ----------------------------
-- Records of ums_api
-- ----------------------------
BEGIN;
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('000ad028e5a7caabfbc2b3ea70247476', 'ecc199c6b1f74ef998af932007e478b0', '绑定权限和菜单关系', 'bindPermissionMenuRelation', '/turbo-cloud-ums/webservice/permission/bindPermissionMenuRelation', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.206990', 'turbo-cloud-ums', '2023-06-12 07:11:15.570071', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('0068bd51425494be5de9759dfd8288db', '', '用户登录', 'login', '/turbo-cloud-ums/admin/login', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.279003', 'turbo-cloud-ums', '2023-06-12 10:41:23.279008', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('01ca307d6000a5b9c9904eceb0788a69', 'f7e92d4ac3d011edb19d0242ac110002', '查询当前登录人信息', 'queryCurrentUserInfo', '/turbo-cloud-ums/webservice/user/queryCurrentUserInfo', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.235057', 'turbo-cloud-ums', '2023-06-12 06:20:51.857031', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('03ae56ae8dca38baa5d017b8972a6544', '', '新增系统', 'createSystem', '/turbo-cloud-ums/webservice/system/createSystem', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.211848', 'turbo-cloud-ums', '2023-06-12 10:41:23.211854', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('04bd6840f98f475f91f1abb4966e48cb', '25a2f7d7c31f11edb19d0242ac110002', '查询部门树列表', 'queryDeptTreeList', '/turbo-cloud-ums/webservice/dept/queryDeptTreeList', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.237236', 'turbo-cloud-ums', '2023-06-12 06:22:44.014121', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('074459cad736434492243c88837f5f01', '7e82c38ec31f11edb19d0242ac110002', '查询菜单树列表', 'queryMenuTreeList', '/turbo-cloud-ums/webservice/menu/queryMenuTreeList', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.272332', 'turbo-cloud-ums', '2023-06-12 06:59:23.505679', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('11fd3ffc06d798fbc40edd8053971e76', 'ecc199c6b1f74ef998af932007e478b0', '删除权限', 'removeRoleById', '/turbo-cloud-ums/webservice/permission/removeRoleById', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.241584', 'turbo-cloud-ums', '2023-06-12 07:11:55.914362', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('1323d821a424c62e2f8265d71dadc456', '7e82c38ec31f11edb19d0242ac110002', '新增接口', 'createApi', '/turbo-cloud-ums/webservice/api/createApi', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.209618', 'turbo-cloud-ums', '2023-06-12 07:14:22.860446', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('13c247cbbdc27ed698c43dc27dd2f69c', '', '生成登录图形验证码', 'getCaptchaImage', '/turbo-cloud-ums/admin/captcha/getCaptchaImage', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.252757', 'turbo-cloud-ums', '2023-06-12 10:41:23.252762', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('23611a7c8098ec033506982a3738b874', '979ea093c31f11edb19d0242ac110002', '修改部门', 'modifyDept', '/turbo-cloud-ums/webservice/dept/modifyDept', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.282955', 'turbo-cloud-ums', '2023-06-12 07:15:20.183450', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('237078abad075efa755d8942c6f847c9', '979ea093c31f11edb19d0242ac110002', '删除部门', 'removeDeptById', '/turbo-cloud-ums/webservice/dept/removeDeptById', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.151728', 'turbo-cloud-ums', '2023-06-12 07:15:21.882817', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('27a9c04c0801947c071d0df9f1cffdf6', '648e641cc31f11edb19d0242ac110002', '删除角色', 'removeRoleById', '/turbo-cloud-ums/webservice/role/removeRoleById', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.191992', 'turbo-cloud-ums', '2023-06-12 07:04:04.475442', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('2d4327b0c200f3a26227895adbf87399', '648e641cc31f11edb19d0242ac110002', '开启、关闭角色有效状态', 'enabledRoleStateById', '/turbo-cloud-ums/webservice/role/enabledRoleStateById', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.230678', 'turbo-cloud-ums', '2023-06-12 07:14:54.802895', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('3591203a7dd9b5ff9f7497cc2e435176', '', '删除系统', 'removeSystemById', '/turbo-cloud-ums/webservice/system/removeSystemById', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.175361', 'turbo-cloud-ums', '2023-06-12 10:41:23.175369', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('36189c10864abaec2c9f42581d8bad7b', 'ecc199c6b1f74ef998af932007e478b0', '绑定权限和接口关系', 'bindPermissionApiRelation', '/turbo-cloud-ums/webservice/permission/bindPermissionApiRelation', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.276815', 'turbo-cloud-ums', '2023-06-12 07:11:17.671866', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('36472cf135d02fe917876c244bd0623d', '', '初始化接口配置', 'initApi', '/turbo-cloud-ums/interface/api/initApi', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.221307', 'turbo-cloud-ums', '2023-06-12 10:41:23.221313', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('36d78b935ad5429022b4ce34946472bf', '648e641cc31f11edb19d0242ac110002', '查询权限列表，并根据角色ID标记选中', 'queryPermissionCheckedListOfRoleId', '/turbo-cloud-ums/webservice/permission/queryPermissionCheckedListOfRoleId', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.285072', 'turbo-cloud-ums', '2023-06-12 07:03:12.294197', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('4aaa38d85360747e786393db7669ab76', '25a2f7d7c31f11edb19d0242ac110002', '删除用户', 'removeUserById', '/turbo-cloud-ums/webservice/user/removeUserById', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.162958', 'turbo-cloud-ums', '2023-06-12 07:02:34.752460', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('51d7c8a6a87cebd9458d14f279d4986d', 'ecc199c6b1f74ef998af932007e478b0', '查询权限分页列表', 'queryPermissionPage', '/turbo-cloud-ums/webservice/permission/queryPermissionPage', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.167655', 'turbo-cloud-ums', '2023-06-12 07:07:16.142810', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('5cb9a938bd02a56bd099d76050a24b78', 'ecc199c6b1f74ef998af932007e478b0', '新增权限', 'createPermission', '/turbo-cloud-ums/webservice/permission/createPermission', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.189516', 'turbo-cloud-ums', '2023-06-12 07:11:45.370090', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('5f273a809b443721f647d3a0243f1d98', '', '用户登出', 'logout', '/turbo-cloud-ums/admin/logout', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.216438', 'turbo-cloud-ums', '2023-06-12 10:41:23.216444', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('61226e9d5241981d3291543b662a7a8b', 'ecc199c6b1f74ef998af932007e478b0', '开启、关闭权限有效状态', 'enabledPermissionStateById', '/turbo-cloud-ums/webservice/permission/enabledPermissionStateById', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.261025', 'turbo-cloud-ums', '2023-06-12 07:14:41.370729', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('614a321ffbfec46f15b5b1591f1886f4', '25a2f7d7c31f11edb19d0242ac110002', '模糊查询用户分页列表', 'queryUserPage', '/turbo-cloud-ums/webservice/user/queryUserPage', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.243797', 'turbo-cloud-ums', '2023-06-12 06:23:51.887877', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('63df37d46c04e57f37567fcf3b3b751f', 'b9dbd6dbc31f11edb19d0242ac110002', '修改用户密码', 'modifyUserPwd', '/turbo-cloud-ums/webservice/user/modifyUserPwd', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.228413', 'turbo-cloud-ums', '2023-06-12 07:18:05.106432', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('6d347d604a931ded82f65d8b5d862780', '', '获取单个系统', 'querySystemById', '/turbo-cloud-ums/webservice/system/querySystemById', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.226126', 'turbo-cloud-ums', '2023-06-12 10:41:23.226132', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('6db341683bdc453e13cf3764215fd334', '7e82c38ec31f11edb19d0242ac110002', '新增组件', 'createComponent', '/turbo-cloud-ums/webservice/component/createComponent', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.172078', 'turbo-cloud-ums', '2023-06-12 07:14:13.931206', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('6fb8126b0dbea2f7226f314994476c6e', '', '获取单个菜单', 'queryMenuById', '/turbo-cloud-ums/webservice/menu/queryMenuById', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.239462', 'turbo-cloud-ums', '2023-06-12 10:41:23.239467', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7567c2adf70c3d317f47ec47f8b94701', '25a2f7d7c31f11edb19d0242ac110002', '修改用户', 'modifyUser', '/turbo-cloud-ums/webservice/user/modifyUser', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.263261', 'turbo-cloud-ums', '2023-06-12 07:02:10.585122', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7b08a83426840c7909e084fdc4e322da', '7e82c38ec31f11edb19d0242ac110002', '删除接口', 'removeApiById', '/turbo-cloud-ums/webservice/api/removeApiById', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.248554', 'turbo-cloud-ums', '2023-06-12 07:14:08.693562', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7c8524aa49230bbfd2a397ca60fa55be', '', '模糊查询系统分页列表', 'querySystemPageByLike', '/turbo-cloud-ums/webservice/system/querySystemPageByLike', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.265681', 'turbo-cloud-ums', '2023-06-12 10:41:23.265687', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7dc9f949601a49a9619989f0a822b7e1', '648e641cc31f11edb19d0242ac110002', '新增角色', 'createRole', '/turbo-cloud-ums/webservice/role/createRole', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.142882', 'turbo-cloud-ums', '2023-06-12 07:04:06.022288', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7f5fbacf796e694cce371dd3969a2f06', '7e82c38ec31f11edb19d0242ac110002', '删除菜单', 'removeMenuById', '/turbo-cloud-ums/webservice/menu/removeMenuById', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.254701', 'turbo-cloud-ums', '2023-06-12 07:14:06.506715', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('85266a7daa5fc15e060f64f3b9ac9f97', '', '修改系统', 'modifySystem', '/turbo-cloud-ums/webservice/system/modifySystem', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.200307', 'turbo-cloud-ums', '2023-06-12 10:41:23.200313', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('87094069f8f8f571250c080b2cb2d65b', '25a2f7d7c31f11edb19d0242ac110002', '查询菜单树列表', 'queryMenuTreeList', '/turbo-cloud-ums/webservice/menu/queryMenuTreeList', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.272332', 'turbo-cloud-ums', '2023-06-12 06:58:28.728318', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('8941a8d446709a68f5f7980c85df0fce', '25a2f7d7c31f11edb19d0242ac110002', '新增用户', 'createUser', '/turbo-cloud-ums/webservice/user/createUser', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.274510', 'turbo-cloud-ums', '2023-06-12 07:02:18.436402', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('8ae03cb4ce91823a2807b4d4a0846a57', '', '是否显示登录图像验证码', 'showCaptchaImage', '/turbo-cloud-ums/admin/captcha/showCaptchaImage', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.185874', 'turbo-cloud-ums', '2023-06-12 10:41:23.185883', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('8f933188404e169b18b17365a9a6e980', 'ecc199c6b1f74ef998af932007e478b0', '根据权限ID，查询菜单树列表', 'queryCheckedMenuTreeListByPermissionId', '/turbo-cloud-ums/webservice/menu/queryCheckedMenuTreeListByPermissionId', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.223674', 'turbo-cloud-ums', '2023-06-12 07:09:36.522887', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('a24be810ef3fe5acf24a48fc02ade4cc', '7e82c38ec31f11edb19d0242ac110002', '根据菜单ID，查询组件列表', 'queryComponentListByMenuId', '/turbo-cloud-ums/webservice/component/queryComponentListByMenuId', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.182217', 'turbo-cloud-ums', '2023-06-12 07:13:01.007991', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('a33db1d87cbd31f406175d9c93db7604', 'ecc199c6b1f74ef998af932007e478b0', '根据菜单ID，查询接口列表，并根据权限ID标记选中', 'queryApiCheckedListByMenuIdOfPermissionId', '/turbo-cloud-ums/webservice/api/queryApiCheckedListByMenuIdOfPermissionId', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.195001', 'turbo-cloud-ums', '2023-06-12 07:11:03.984062', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('a6de6e070c73d9287d9013acd24a6a8c', '648e641cc31f11edb19d0242ac110002', '修改角色', 'modifyRole', '/turbo-cloud-ums/webservice/role/modifyRole', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.267690', 'turbo-cloud-ums', '2023-06-12 07:04:09.217923', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('ac74a3d92b718bc52bba662986660c3c', 'f7e92d4ac3d011edb19d0242ac110002', '查询登录人的菜单列表', 'queryMenuListByCurrentUser', '/turbo-cloud-ums/webservice/menu/queryMenuListByCurrentUser', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.198068', 'turbo-cloud-ums', '2023-06-12 07:16:07.243960', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('b7bd68d0a6604b749c25ae228fb049dd', '25a2f7d7c31f11edb19d0242ac110002', '查询角色分页列表', 'queryRolePage', '/turbo-cloud-ums/webservice/role/queryRolePage', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.179016', 'turbo-cloud-ums', '2023-06-12 06:58:47.381065', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c0f758e3af6ab71a4796c591243a74c0', '7e82c38ec31f11edb19d0242ac110002', '修改菜单', 'modifyMenu', '/turbo-cloud-ums/webservice/menu/modifyMenu', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.246164', 'turbo-cloud-ums', '2023-06-12 07:14:03.854897', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c468b18b021cf40ab3ec72ccbc95bce7', 'f7e92d4ac3d011edb19d0242ac110002', '查询登录人的菜单Vue格式树列表', 'queryVueMenuTreeByCurrentUser', '/turbo-cloud-ums/webservice/menu/queryVueMenuTreeByCurrentUser', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.256810', 'turbo-cloud-ums', '2023-06-12 06:21:18.188175', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c5364ff262d57e333f71c1a66d7734c0', '7e82c38ec31f11edb19d0242ac110002', '根据菜单ID，查询接口列表', 'queryApiListByMenuId', '/turbo-cloud-ums/webservice/api/queryApiListByMenuId', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.136149', 'turbo-cloud-ums', '2023-06-12 07:13:29.284615', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c5593fdf7d4ab1c2db27f4794c0403d7', '648e641cc31f11edb19d0242ac110002', '绑定角色和权限关系', 'bindRolePermissionRelation', '/turbo-cloud-ums/webservice/role/bindRolePermissionRelation', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.093245', 'turbo-cloud-ums', '2023-06-12 07:06:16.024674', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c79be6bd99317a4df59d555f4eb927e3', 'ecc199c6b1f74ef998af932007e478b0', '根据菜单ID，查询组件列表，并根据权限ID标记选中', 'queryComponentCheckedListByMenuIdOfPermissionId', '/turbo-cloud-ums/webservice/component/queryComponentCheckedListByMenuIdOfPermissionId', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.232831', 'turbo-cloud-ums', '2023-06-12 07:10:15.641811', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c8d3cb3cbd634e410abcd1a52baa9027', '648e641cc31f11edb19d0242ac110002', '查询角色分页列表', 'queryRolePage', '/turbo-cloud-ums/webservice/role/queryRolePage', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.179016', 'turbo-cloud-ums', '2023-06-12 06:59:01.800189', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('cb3475db245ca8a1c0f5c4a423ffbf96', '7e82c38ec31f11edb19d0242ac110002', '删除组件', 'removeComponentById', '/turbo-cloud-ums/webservice/component/removeComponentById', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.250684', 'turbo-cloud-ums', '2023-06-12 07:13:47.128407', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('cb9a623de6d5d2ef388cbb3d838211bf', '7e82c38ec31f11edb19d0242ac110002', '新增菜单', 'createMenu', '/turbo-cloud-ums/webservice/menu/createMenu', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.280982', 'turbo-cloud-ums', '2023-06-12 07:13:48.270768', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('cbbad8712f31b1f3cfdb90a06d7abc2c', '7e82c38ec31f11edb19d0242ac110002', '修改组件', 'modifyComponent', '/turbo-cloud-ums/webservice/component/modifyComponent', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.155713', 'turbo-cloud-ums', '2023-06-12 07:13:56.695429', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('cfd039c0ab8873fc2a55e52480b40d4c', 'f7e92d4ac3d011edb19d0242ac110002', '查询登录人的菜单树列表', 'queryMenuTreeByCurrentUser', '/turbo-cloud-ums/webservice/menu/queryMenuTreeByCurrentUser', 'GET', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.202382', 'turbo-cloud-ums', '2023-06-12 07:16:01.297259', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('d548d25f51fc3651a49944e7a3b07eb2', '979ea093c31f11edb19d0242ac110002', '查询部门树列表', 'queryDeptTreeList', '/turbo-cloud-ums/webservice/dept/queryDeptTreeList', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.237236', 'turbo-cloud-ums', '2023-06-12 06:22:54.688911', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('db8f70ce52bab50c7c2711b4640af8f0', 'ecc199c6b1f74ef998af932007e478b0', '绑定权限和组件关系', 'bindPermissionComponentRelation', '/turbo-cloud-ums/webservice/permission/bindPermissionComponentRelation', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.204544', 'turbo-cloud-ums', '2023-06-12 07:11:19.383695', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('ddd3e7db0444defd970ff1ff8c5702f8', 'ecc199c6b1f74ef998af932007e478b0', '修改权限', 'modifyPermission', '/turbo-cloud-ums/webservice/permission/modifyPermission', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.214342', 'turbo-cloud-ums', '2023-06-12 07:11:43.209325', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('e009da31f0fa2f2e593f03694fc5f671', '979ea093c31f11edb19d0242ac110002', '新增部门', 'createDept', '/turbo-cloud-ums/webservice/dept/createDept', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.159264', 'turbo-cloud-ums', '2023-06-12 07:15:50.019378', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('e14040271e5ca2f689389f97a2831105', 'ecc199c6b1f74ef998af932007e478b0', '查询菜单树列表，并根据权限ID标记选中', 'queryMenuCheckedTreeListOfPermissionId', '/turbo-cloud-ums/webservice/menu/queryMenuCheckedTreeListOfPermissionId', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.269840', 'turbo-cloud-ums', '2023-06-12 07:07:41.285766', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('f1a85f20ed9cb14553e8426700305cb3', '7e82c38ec31f11edb19d0242ac110002', '修改接口', 'modifyApi', '/turbo-cloud-ums/webservice/api/modifyApi', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.258940', 'turbo-cloud-ums', '2023-06-12 07:13:44.829779', 0, 0, NULL);
INSERT INTO `ums_api` (`id`, `menu_id`, `api_title`, `api_code`, `api_url`, `api_http_method`, `api_param`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('f593201113ba3411e9ad1e4b4a5902cb', '25a2f7d7c31f11edb19d0242ac110002', '验证用户名', 'verifyUsername', '/turbo-cloud-ums/webservice/user/verifyUsername', 'POST', NULL, 1, NULL, 1, 'turbo-cloud-ums', '2023-06-12 10:41:23.218685', 'turbo-cloud-ums', '2023-06-12 07:15:51.164673', 0, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ums_component
-- ----------------------------
DROP TABLE IF EXISTS `ums_component`;
CREATE TABLE `ums_component` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `menu_id` varchar(36) NOT NULL DEFAULT '0' COMMENT '菜单ID',
  `component_title` varchar(100) NOT NULL COMMENT '组件名称',
  `component_code` varchar(200) NOT NULL COMMENT '组件编码',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `sort` int NOT NULL COMMENT '排序',
  `note` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `c_menu_id` (`menu_id`) USING BTREE,
  KEY `c_control_code` (`component_code`) USING BTREE
) COMMENT='组件表';

-- ----------------------------
-- Records of ums_component
-- ----------------------------
BEGIN;
INSERT INTO `ums_component` (`id`, `menu_id`, `component_title`, `component_code`, `icon`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('566f3a58048f3e6f6a31076ad2139f03', 'b9dbd6dbc31f11edb19d0242ac110002', '修改密码-重置按钮', 'resetBtn', NULL, 1, NULL, 1, 'SYSTEM001_turbocloud', '2023-05-10 18:22:59.000000', 'SYSTEM001_turbocloud', '2023-05-17 08:06:18.503918', 1, 0, 'TRC-51H0HWZP1MH90001T');
INSERT INTO `ums_component` (`id`, `menu_id`, `component_title`, `component_code`, `icon`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('6fcddfb400b8cf7ed8cbc90dad2c0c9e', 'b9dbd6dbc31f11edb19d0242ac110002', '修改密码-确认按钮', 'confirmBtn', NULL, 2, NULL, 1, 'SYSTEM001_turbocloud', '2023-05-10 18:24:23.000000', 'SYSTEM001_turbocloud', '2023-05-17 08:06:22.862680', 1, 0, 'TRC-91H0HWZZSSH90001Y');
COMMIT;

-- ----------------------------
-- Table structure for ums_dept
-- ----------------------------
DROP TABLE IF EXISTS `ums_dept`;
CREATE TABLE `ums_dept` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `system_id` varchar(36) NOT NULL COMMENT '系统Id',
  `parent_id` varchar(36) NOT NULL DEFAULT '0' COMMENT '父级Id',
  `dept_name` varchar(100) NOT NULL COMMENT '部门名称',
  `dept_code` varchar(100) NOT NULL COMMENT '部门编码',
  `note` varchar(500) DEFAULT NULL COMMENT '描述',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `d_system_id` (`system_id`) USING BTREE,
  KEY `d_dept_code` (`dept_code`) USING BTREE
) COMMENT='部门表';

-- ----------------------------
-- Records of ums_dept
-- ----------------------------
BEGIN;
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('15d9f796a82a8283464225d7a55dc88f', 'SYSTEM001', '571eebaac87011ed99020242ac110003', '技术部', 'Stars-Org-Gemini-JSB', '信息技术部', 1, 1, 'maintainer', '2023-03-09 09:11:52.147203', 'maintainer', '2023-05-06 03:11:19.845116', 0, 0, NULL);
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('571d93aec87011ed99020242ac110003', 'SYSTEM001', 'dee9df5bc86f11ed99020242ac110003', '水瓶座科技有限公司', 'Stars-Org-Aquarius', '水瓶座科技有限公司，成立于2030年，主要负责科技创新。', 2, 1, 'maintainer', '2023-03-09 09:11:52.147203', 'maintainer', '2023-05-06 03:08:56.948934', 0, 0, NULL);
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('571eebaac87011ed99020242ac110003', 'SYSTEM001', 'dee9df5bc86f11ed99020242ac110003', '双子座金融有限公司', 'Stars-Org-Gemini', '双子座金融有限公司，成立于2030年，主要负责金融融资。', 1, 1, 'maintainer', '2023-03-09 09:11:52.147203', 'SYSTEM001_turbocloud', '2023-06-19 14:56:37.890800', 0, 0, 'TRC-J1H3971WZYR60001T');
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('790e69c2c87111ed99020242ac110003', 'SYSTEM001', '571eebaac87011ed99020242ac110003', '业务部', 'Stars-Org-Gemini-YWB', '业务部', 2, 1, 'maintainer', '2023-03-09 09:11:52.147203', 'maintainer', '2023-05-06 03:09:01.468405', 0, 0, NULL);
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7dd0755aebbc11edae9d0242ac110003', 'SYSTEM001', 'deeaf548c86f11ed99020242ac110003', '白羊座金融有限公司', 'Stars-Shine-Org-Aries', '白羊座金融有限公司，成立于2030年，主要负责科技创新。', 1, 1, 'maintainer', '2023-03-09 09:11:52.147203', 'SYSTEM001_turbocloud', '2023-06-19 15:11:22.314444', 0, 0, 'TRC-R1H397WWP7R600020');
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('8db805cdefb99d677b13557373413ce2', 'SYSTEM001', '571eebaac87011ed99020242ac110003', '党支部', 'Stars-Org-Gemini-DZB', '党支部', 5, 1, 'NONE', '2023-03-23 15:17:24.955000', 'NONE', '2023-05-06 03:09:02.811239', 0, 0, NULL);
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('8e1a19984a04714dba1cc2b6cb08d999', 'SYSTEM001', '0', '繁星璀璨集团', 'Stars-Bright-Org', '繁星荣耀集团成立于2004年', 3, 1, 'SYSTEM001_turbocloud', '2023-06-19 14:54:31.563379', 'SYSTEM001_turbocloud', '2023-06-19 14:56:16.338729', 0, 0, 'TRC-C1H39717YCR60001M');
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('937592c7c87111ed99020242ac110003', 'SYSTEM001', '571eebaac87011ed99020242ac110003', '法务部', 'Stars-Org-Gemini-FWB', '法务部', 3, 1, 'maintainer', '2023-03-09 09:11:52.147203', 'maintainer', '2023-05-06 03:09:04.140107', 0, 0, NULL);
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('973b8f4a435d4c779f2c8b6e8a7ae481', 'SYSTEM001', '8e1a19984a04714dba1cc2b6cb08d999', '金牛座金融有限公司', 'Stars-Bright-Taurus', '金牛座金融有限公司，成立于2030年，主要负责科技创新。', 1, 1, 'SYSTEM001_turbocloud', '2023-06-19 14:55:55.603943', 'SYSTEM001_turbocloud', '2023-06-19 15:11:33.823211', 0, 0, 'TRC-Y1H397X7XWR600026');
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('ad6dd6f0c87011ed99020242ac110003', 'SYSTEM001', '571eebaac87011ed99020242ac110003', '财务部', 'Stars-Org-Gemini-CWB', '财务部', 4, 1, 'maintainer', '2023-03-09 09:11:52.147203', 'maintainer', '2023-05-06 03:09:06.649721', 0, 0, NULL);
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c0432f20ebba11edae9d0242ac110003', 'SYSTEM001', '571d93aec87011ed99020242ac110003', '业务部', 'Stars-Org-Aquarius-YWB', '业务部', 2, 1, 'maintainer', '2023-03-09 09:11:52.147203', 'maintainer', '2023-05-06 03:10:05.641645', 0, 0, NULL);
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c044468aebba11edae9d0242ac110003', 'SYSTEM001', '571d93aec87011ed99020242ac110003', '法务部', 'Stars-Org-Aquarius-FWB', '法务部', 3, 1, 'maintainer', '2023-03-09 09:11:52.147203', 'maintainer', '2023-05-06 03:10:10.914058', 0, 0, NULL);
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c04553e8ebba11edae9d0242ac110003', 'SYSTEM001', '571d93aec87011ed99020242ac110003', '财务部', 'Stars-Org-Aquarius-CWB', '财务部', 4, 1, 'maintainer', '2023-03-09 09:11:52.147203', 'maintainer', '2023-05-06 03:10:15.170831', 0, 0, NULL);
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c6a405a7ebbc11edae9d0242ac110003', 'SYSTEM001', '7dd0755aebbc11edae9d0242ac110003', '技术部', 'Stars-Shine-Org-Aries-JSB', '信息技术部', 1, 1, 'NONE', '2023-04-04 13:52:56.803000', 'SYSTEM001_turbocloud', '2023-06-15 19:43:11.397613', 0, 0, 'TRC-C1H2ZDVQF9PX0000P');
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('dee9df5bc86f11ed99020242ac110003', 'SYSTEM001', '0', '繁星集团', 'Stars-Org', '繁星集团成立于2000年', 1, 1, 'maintainer', '2023-03-09 09:11:52.147203', 'maintainer', '2023-05-06 03:07:16.471250', 0, 0, NULL);
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('deeaf548c86f11ed99020242ac110003', 'SYSTEM001', '0', '繁星闪耀集团', 'Stars-Shine-Org', '繁星荣耀集团成立于2002年', 2, 1, 'maintainer', '2023-03-09 09:11:52.147203', 'maintainer', '2023-05-06 03:14:00.786723', 0, 0, NULL);
INSERT INTO `ums_dept` (`id`, `system_id`, `parent_id`, `dept_name`, `dept_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('f854984faa40fc81abf7e63d3861cf19', 'SYSTEM001', '571d93aec87011ed99020242ac110003', '技术部', 'Stars-Org-Aquarius-JSB', '信息技术部', 1, 1, 'NONE', '2023-04-04 13:52:56.803000', 'SYSTEM001_turbocloud', '2023-06-09 15:31:15.290112', 0, 0, 'TRC-C1H2FH23NZRN0005M');
COMMIT;

-- ----------------------------
-- Table structure for ums_menu
-- ----------------------------
DROP TABLE IF EXISTS `ums_menu`;
CREATE TABLE `ums_menu` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `system_id` varchar(36) NOT NULL COMMENT '系统Id',
  `parent_id` varchar(36) NOT NULL DEFAULT '0' COMMENT '父级权限id',
  `menu_title` varchar(100) NOT NULL COMMENT '菜单名称',
  `menu_code` varchar(200) DEFAULT NULL COMMENT '菜单编码',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `type` int NOT NULL COMMENT '权限类型：0->目录；1->菜单；',
  `router_path` varchar(500) DEFAULT NULL COMMENT '路由路径',
  `router_name` varchar(200) DEFAULT NULL COMMENT '路由名称',
  `component_path` varchar(500) DEFAULT NULL COMMENT '文件路径',
  `redirect` varchar(500) DEFAULT NULL COMMENT '重定向路径',
  `is_ext_id` int NOT NULL DEFAULT '0' COMMENT '是否外部链接：0->否；1->是',
  `hide_menu_id` int NOT NULL DEFAULT '0' COMMENT '显示隐藏菜单：0->隐藏；1->显示',
  `hide_tab_id` int NOT NULL DEFAULT '0' COMMENT '显示隐藏tab：0->隐藏；1->显示',
  `hide_breadcrumb_id` int NOT NULL DEFAULT '0' COMMENT '显示隐藏面包屑：0->隐藏；1->显示',
  `hide_children_in_menu_id` int NOT NULL DEFAULT '0' COMMENT '显示隐藏子级菜单：0->隐藏；1->显示',
  `keep_alive_id` int NOT NULL DEFAULT '0' COMMENT '是否保持页面状态：0->不保持，1->保持',
  `permission_tag` varchar(50) DEFAULT NULL COMMENT '权限标识',
  `sort` int NOT NULL COMMENT '排序',
  `note` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `m_system_id` (`system_id`) USING BTREE,
  KEY `m_menu_code` (`menu_code`) USING BTREE,
  KEY `m_type` (`type`) USING BTREE,
  KEY `m_router_path` (`router_path`) USING BTREE,
  KEY `m_component_path` (`component_path`) USING BTREE
) COMMENT='菜单表';

-- ----------------------------
-- Records of ums_menu
-- ----------------------------
BEGIN;
INSERT INTO `ums_menu` (`id`, `system_id`, `parent_id`, `menu_title`, `menu_code`, `icon`, `type`, `router_path`, `router_name`, `component_path`, `redirect`, `is_ext_id`, `hide_menu_id`, `hide_tab_id`, `hide_breadcrumb_id`, `hide_children_in_menu_id`, `keep_alive_id`, `permission_tag`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('25a2f7d7c31f11edb19d0242ac110002', 'SYSTEM001', '7dfad9b5494211edadc00242ac110002', '账户管理', 'system-account', NULL, 1, '/system/account', 'system-account', '/system/account/index', '', 0, 0, 0, 0, 0, 0, NULL, 1, NULL, 1, 'maintainer', '2022-10-11 08:55:44.861247', 'maintainer', '2023-05-15 06:25:02.938351', 0, 0, NULL);
INSERT INTO `ums_menu` (`id`, `system_id`, `parent_id`, `menu_title`, `menu_code`, `icon`, `type`, `router_path`, `router_name`, `component_path`, `redirect`, `is_ext_id`, `hide_menu_id`, `hide_tab_id`, `hide_breadcrumb_id`, `hide_children_in_menu_id`, `keep_alive_id`, `permission_tag`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('36698303d29a11edb68e0242ac110003', 'SYSTEM001', '7dfad9b5494211edadc00242ac110002', '用户详情', 'account-detail', NULL, 1, '/system/account/detail/:id', 'account-detail', '/system/account/AccountDetail', '', 0, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 'maintainer', '2022-10-11 08:55:44.861247', 'maintainer', '2023-05-15 06:23:54.759853', 0, 0, NULL);
INSERT INTO `ums_menu` (`id`, `system_id`, `parent_id`, `menu_title`, `menu_code`, `icon`, `type`, `router_path`, `router_name`, `component_path`, `redirect`, `is_ext_id`, `hide_menu_id`, `hide_tab_id`, `hide_breadcrumb_id`, `hide_children_in_menu_id`, `keep_alive_id`, `permission_tag`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('648e641cc31f11edb19d0242ac110002', 'SYSTEM001', '7dfad9b5494211edadc00242ac110002', '角色管理', 'system-role', NULL, 1, '/system/role', 'system-role', '/system/role/index', NULL, 0, 0, 0, 0, 0, 0, NULL, 2, NULL, 1, 'maintainer', '2022-10-11 08:55:44.861247', 'maintainer', '2023-05-15 06:25:07.077239', 0, 0, NULL);
INSERT INTO `ums_menu` (`id`, `system_id`, `parent_id`, `menu_title`, `menu_code`, `icon`, `type`, `router_path`, `router_name`, `component_path`, `redirect`, `is_ext_id`, `hide_menu_id`, `hide_tab_id`, `hide_breadcrumb_id`, `hide_children_in_menu_id`, `keep_alive_id`, `permission_tag`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7dfad9b5494211edadc00242ac110002', 'SYSTEM001', '0', '系统管理', 'system-manager', 'ant-design:setting-outlined', 0, '/system', 'system-manager', 'LAYOUT', '', 0, 0, 0, 0, 0, 0, NULL, 2, NULL, 1, 'maintainer', '2022-10-11 08:55:44.861247', 'maintainer', '2023-03-23 10:07:36.060926', 0, 0, NULL);
INSERT INTO `ums_menu` (`id`, `system_id`, `parent_id`, `menu_title`, `menu_code`, `icon`, `type`, `router_path`, `router_name`, `component_path`, `redirect`, `is_ext_id`, `hide_menu_id`, `hide_tab_id`, `hide_breadcrumb_id`, `hide_children_in_menu_id`, `keep_alive_id`, `permission_tag`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7e82c38ec31f11edb19d0242ac110002', 'SYSTEM001', '7dfad9b5494211edadc00242ac110002', '菜单管理', 'system-menu', NULL, 1, '/system/menu', 'system-menu', '/system/menu/index', NULL, 0, 0, 0, 0, 0, 0, NULL, 4, NULL, 1, 'maintainer', '2022-10-11 08:55:44.861247', 'maintainer', '2023-06-02 05:20:43.096885', 0, 0, NULL);
INSERT INTO `ums_menu` (`id`, `system_id`, `parent_id`, `menu_title`, `menu_code`, `icon`, `type`, `router_path`, `router_name`, `component_path`, `redirect`, `is_ext_id`, `hide_menu_id`, `hide_tab_id`, `hide_breadcrumb_id`, `hide_children_in_menu_id`, `keep_alive_id`, `permission_tag`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('979ea093c31f11edb19d0242ac110002', 'SYSTEM001', '7dfad9b5494211edadc00242ac110002', '部门管理', 'system-dept', NULL, 1, '/system/dept', 'system-dept', '/system/dept/index', NULL, 0, 0, 0, 0, 0, 0, NULL, 5, NULL, 1, 'maintainer', '2022-10-11 08:55:44.861247', 'maintainer', '2023-06-02 05:20:46.463566', 0, 0, NULL);
INSERT INTO `ums_menu` (`id`, `system_id`, `parent_id`, `menu_title`, `menu_code`, `icon`, `type`, `router_path`, `router_name`, `component_path`, `redirect`, `is_ext_id`, `hide_menu_id`, `hide_tab_id`, `hide_breadcrumb_id`, `hide_children_in_menu_id`, `keep_alive_id`, `permission_tag`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('a7a5542bc3d011edb19d0242ac110002', 'SYSTEM001', '0', '工作台', 'dashboard-manager', 'ant-design:laptop-outlined', 0, '/dashboard', 'dashboard-manager', 'LAYOUT', '/dashboard/analysis', 0, 0, 0, 0, 1, 0, NULL, 1, NULL, 1, 'maintainer', '2022-10-11 08:55:44.861247', 'NONE', '2023-05-15 06:24:58.632611', 0, 0, 'TRC-11GW6ZNV4AKJ0002C');
INSERT INTO `ums_menu` (`id`, `system_id`, `parent_id`, `menu_title`, `menu_code`, `icon`, `type`, `router_path`, `router_name`, `component_path`, `redirect`, `is_ext_id`, `hide_menu_id`, `hide_tab_id`, `hide_breadcrumb_id`, `hide_children_in_menu_id`, `keep_alive_id`, `permission_tag`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('b9dbd6dbc31f11edb19d0242ac110002', 'SYSTEM001', '7dfad9b5494211edadc00242ac110002', '修改密码', 'system-password', NULL, 1, '/system/password', 'system-password', '/system/password/index', NULL, 0, 0, 0, 0, 0, 0, NULL, 6, NULL, 1, 'maintainer', '2022-10-11 08:55:44.861247', 'maintainer', '2023-06-02 05:20:49.489036', 0, 0, NULL);
INSERT INTO `ums_menu` (`id`, `system_id`, `parent_id`, `menu_title`, `menu_code`, `icon`, `type`, `router_path`, `router_name`, `component_path`, `redirect`, `is_ext_id`, `hide_menu_id`, `hide_tab_id`, `hide_breadcrumb_id`, `hide_children_in_menu_id`, `keep_alive_id`, `permission_tag`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('ecc199c6b1f74ef998af932007e478b0', 'SYSTEM001', '7dfad9b5494211edadc00242ac110002', '权限管理', 'system-permission', NULL, 1, '/system/permission', 'system-permission', '/system/permission/index', NULL, 0, 0, 0, 0, 0, 0, NULL, 3, NULL, 1, 'maintainer', '2022-10-11 08:55:44.861247', 'maintainer', '2023-05-15 06:25:07.077239', 0, 0, NULL);
INSERT INTO `ums_menu` (`id`, `system_id`, `parent_id`, `menu_title`, `menu_code`, `icon`, `type`, `router_path`, `router_name`, `component_path`, `redirect`, `is_ext_id`, `hide_menu_id`, `hide_tab_id`, `hide_breadcrumb_id`, `hide_children_in_menu_id`, `keep_alive_id`, `permission_tag`, `sort`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('f7e92d4ac3d011edb19d0242ac110002', 'SYSTEM001', 'a7a5542bc3d011edb19d0242ac110002', '分析页', 'dashboard-analysis', NULL, 1, '/dashboard/analysis', 'dashboard-analysis', '/dashboard/analysis/index', '', 0, 0, 0, 0, 0, 0, NULL, 1, NULL, 1, 'maintainer', '2022-10-11 08:55:44.861247', 'maintainer', '2023-05-15 06:24:20.535219', 0, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ums_permission
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE `ums_permission` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `system_id` varchar(36) NOT NULL COMMENT '系统Id',
  `permission_name` varchar(100) NOT NULL COMMENT '角色名称',
  `permission_code` varchar(100) DEFAULT NULL COMMENT '权限编码',
  `note` varchar(500) DEFAULT NULL COMMENT '描述',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `r_system_id` (`system_id`) USING BTREE,
  KEY `r_role_code` (`permission_code`) USING BTREE
) COMMENT='权限表';

-- ----------------------------
-- Records of ums_permission
-- ----------------------------
BEGIN;
INSERT INTO `ums_permission` (`id`, `system_id`, `permission_name`, `permission_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('2ab9bb074dcb4182955d973fe35de8c2', 'SYSTEM001', '系统管理', 'SystemManger', '系统管理权限', 2, 1, 'maintainer', '2023-05-08 14:02:43.408122', 'maintainer', '2023-06-03 02:16:55.917107', 0, 0, NULL);
INSERT INTO `ums_permission` (`id`, `system_id`, `permission_name`, `permission_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('2b3e82137b454e3e960ab664921b1216', 'SYSTEM001', '工作台', 'Workbench', '工作台权限', 1, 1, 'maintainer', '2022-10-11 08:30:50.039017', 'maintainer', '2023-06-03 02:17:01.678908', 10, 0, 'TRC-81H395LMSEPH00024');
INSERT INTO `ums_permission` (`id`, `system_id`, `permission_name`, `permission_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('cc5e2e622612c1cba6c4e7544aea5859', 'SYSTEM001', '系统管理-个人信息', 'SystemManger-UserInfo', '系统管理-个人信息权限', 3, 1, 'SYSTEM001_turbocloud', '2023-06-19 14:28:01.595777', 'SYSTEM001_turbocloud', '2023-06-19 17:56:39.475837', 0, 0, 'TRC-71H39HLHD27W0003E');
COMMIT;

-- ----------------------------
-- Table structure for ums_permission_api_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission_api_relation`;
CREATE TABLE `ums_permission_api_relation` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `permission_id` varchar(36) NOT NULL COMMENT '权限ID',
  `menu_id` varchar(36) NOT NULL COMMENT '菜单ID',
  `api_id` varchar(36) NOT NULL COMMENT '接口ID',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rar_permission_id` (`permission_id`) USING BTREE,
  KEY `rar_menu_id` (`menu_id`) USING BTREE,
  KEY `rar_api_id` (`api_id`) USING BTREE
) COMMENT='权限和接口关系表';

-- ----------------------------
-- Records of ums_permission_api_relation
-- ----------------------------
BEGIN;
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('06e4f8d6ed829052ae3f80bbaade6054', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', '5cb9a938bd02a56bd099d76050a24b78', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.123824', 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.123830', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('103a728361ef3e50c8b181936db205db', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', 'cb3475db245ca8a1c0f5c4a423ffbf96', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.865777', 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.865781', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('166f9e8daf172af48acec477f6b5ac55', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', '7b08a83426840c7909e084fdc4e322da', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.864665', 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.864669', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('1702b708f89f325c6525cb4cb20aff60', '2ab9bb074dcb4182955d973fe35de8c2', '648e641cc31f11edb19d0242ac110002', 'c5593fdf7d4ab1c2db27f4794c0403d7', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.044029', 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.044036', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('1940a5a9b17f694608d20b9a6be3df1d', '2ab9bb074dcb4182955d973fe35de8c2', 'f7e92d4ac3d011edb19d0242ac110002', 'c03a36f8fac311ed94480242ac110004', 1, 'SYSTEM001_turbocloud', '2023-05-27 14:53:50.857014', 'SYSTEM001_turbocloud', '2023-06-02 01:50:57.207012', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('1c82d5d62a126a40dd10ab0be28563b0', 'cc5e2e622612c1cba6c4e7544aea5859', 'f7e92d4ac3d011edb19d0242ac110002', '01ca307d6000a5b9c9904eceb0788a69', 1, 'SYSTEM001_turbocloud', '2023-06-19 14:39:09.272309', 'SYSTEM001_turbocloud', '2023-06-19 14:39:09.272320', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('2892410b6935cc4a5dee5cfb639023ca', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', 'a24be810ef3fe5acf24a48fc02ade4cc', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.865114', 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.865118', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('2e350f31a5865ac89c0e8a84392cf331', 'cc5e2e622612c1cba6c4e7544aea5859', 'f7e92d4ac3d011edb19d0242ac110002', 'ac74a3d92b718bc52bba662986660c3c', 1, 'SYSTEM001_turbocloud', '2023-06-19 14:39:09.273768', 'SYSTEM001_turbocloud', '2023-06-19 14:39:09.273776', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('2e7cb2b4faa073693848313dcfe115f3', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', 'c79be6bd99317a4df59d555f4eb927e3', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.125655', 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.125661', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('304f9e474a8e32c740743b4a8004a0f2', '2b3e82137b454e3e960ab664921b1216', 'f7e92d4ac3d011edb19d0242ac110002', 'ac74a3d92b718bc52bba662986660c3c', 1, 'SYSTEM001_turbocloud', '2023-06-20 08:33:24.749194', 'SYSTEM001_turbocloud', '2023-06-20 08:33:24.749202', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('325556e154e13774be62d35d3cce2e9c', '2ab9bb074dcb4182955d973fe35de8c2', '979ea093c31f11edb19d0242ac110002', 'd548d25f51fc3651a49944e7a3b07eb2', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:36.444324', 'SYSTEM001_turbocloud', '2023-06-19 18:04:36.444331', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('32e724304bd057b7ca1bdd5a0061ec46', '2b3e82137b454e3e960ab664921b1216', 'f7e92d4ac3d011edb19d0242ac110002', 'cfd039c0ab8873fc2a55e52480b40d4c', 1, 'SYSTEM001_turbocloud', '2023-06-20 08:33:24.750203', 'SYSTEM001_turbocloud', '2023-06-20 08:33:24.750210', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('36d573cd4ff7de18727ec5a6460d0b3b', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', '8f933188404e169b18b17365a9a6e980', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.124647', 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.124659', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('3b1cdb48807a4f73e803a48e3838855a', '2ab9bb074dcb4182955d973fe35de8c2', '25a2f7d7c31f11edb19d0242ac110002', '87094069f8f8f571250c080b2cb2d65b', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.628564', 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.628582', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('3def183d79d6d5646276f4ae1a209c8a', '2ab9bb074dcb4182955d973fe35de8c2', '25a2f7d7c31f11edb19d0242ac110002', 'b7bd68d0a6604b749c25ae228fb049dd', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.630021', 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.630029', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('3e9fa0086ed39eea6d183fe953584406', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', '6db341683bdc453e13cf3764215fd334', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.864424', 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.864428', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('453162ecdb3cf17dd7e61c599f77f8a4', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', 'db8f70ce52bab50c7c2711b4640af8f0', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.125992', 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.125999', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('4dc79fff8b83c89db661e1429e60e200', '2ab9bb074dcb4182955d973fe35de8c2', '25a2f7d7c31f11edb19d0242ac110002', '04bd6840f98f475f91f1abb4966e48cb', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.620127', 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.620156', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('50a89948a67f5ff7370f820297414744', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', 'ddd3e7db0444defd970ff1ff8c5702f8', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.126302', 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.126308', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('68f61365315a8794258ca236a2827a51', 'cc5e2e622612c1cba6c4e7544aea5859', 'b9dbd6dbc31f11edb19d0242ac110002', '63df37d46c04e57f37567fcf3b3b751f', 1, 'SYSTEM001_turbocloud', '2023-06-19 14:39:01.641896', 'SYSTEM001_turbocloud', '2023-06-19 14:39:01.641904', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('6baf6d1aab49f235285896d72a3f5086', 'cc5e2e622612c1cba6c4e7544aea5859', 'f7e92d4ac3d011edb19d0242ac110002', 'cfd039c0ab8873fc2a55e52480b40d4c', 1, 'SYSTEM001_turbocloud', '2023-06-19 14:39:09.274462', 'SYSTEM001_turbocloud', '2023-06-19 14:39:09.274471', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('6bc74648052c48761787b07a721164ff', '2ab9bb074dcb4182955d973fe35de8c2', '25a2f7d7c31f11edb19d0242ac110002', '8941a8d446709a68f5f7980c85df0fce', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.629509', 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.629518', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('6d71dc060700edfbe0c50d80cd59e4a3', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', '7f5fbacf796e694cce371dd3969a2f06', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.864891', 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.864895', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('72839e4d0697ee364cf22744946d3ad6', '2ab9bb074dcb4182955d973fe35de8c2', '25a2f7d7c31f11edb19d0242ac110002', 'f593201113ba3411e9ad1e4b4a5902cb', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.630515', 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.630524', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('73155b3bea864ec21c91dea31e3dfcd4', '2ab9bb074dcb4182955d973fe35de8c2', '648e641cc31f11edb19d0242ac110002', 'a6de6e070c73d9287d9013acd24a6a8c', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.043670', 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.043678', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7816ad59e2c1356ab9e1a1a83dc2beda', '2ab9bb074dcb4182955d973fe35de8c2', 'f7e92d4ac3d011edb19d0242ac110002', 'c03a36f8fac311ed94480242ac110004', 1, 'SYSTEM001_turbocloud', '2023-05-27 15:36:06.802900', 'SYSTEM001_turbocloud', '2023-06-02 01:50:57.263047', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('79fce93574af97212a9ac3d2a975e5c9', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', 'a33db1d87cbd31f406175d9c93db7604', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.125277', 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.125284', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7d309add6c82fc960fe9e65bb094470f', '2ab9bb074dcb4182955d973fe35de8c2', '979ea093c31f11edb19d0242ac110002', 'e009da31f0fa2f2e593f03694fc5f671', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:36.444677', 'SYSTEM001_turbocloud', '2023-06-19 18:04:36.444684', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('81a7f7607073d28537172aa0d05d6fa8', '2b3e82137b454e3e960ab664921b1216', 'f7e92d4ac3d011edb19d0242ac110002', '01ca307d6000a5b9c9904eceb0788a69', 1, 'SYSTEM001_turbocloud', '2023-06-20 08:33:24.745614', 'SYSTEM001_turbocloud', '2023-06-20 08:33:24.745627', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('82fce4ca9ef6763331666598c9244479', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', '11fd3ffc06d798fbc40edd8053971e76', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.122756', 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.122762', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('8802987ddf8156d6b4e95d55ca258950', '2ab9bb074dcb4182955d973fe35de8c2', '648e641cc31f11edb19d0242ac110002', '36d78b935ad5429022b4ce34946472bf', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.042885', 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.042893', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('a2b3b3a65ccddd340b56a64732dacaed', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', '000ad028e5a7caabfbc2b3ea70247476', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.121818', 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.121835', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('a307e633f6de38532ed2a52fc5150ba6', '2ab9bb074dcb4182955d973fe35de8c2', 'b9dbd6dbc31f11edb19d0242ac110002', '63df37d46c04e57f37567fcf3b3b751f', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:39.904246', 'SYSTEM001_turbocloud', '2023-06-19 18:04:39.904265', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('aed4580b3dfd8e16cfa9068fa1dc4803', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', '51d7c8a6a87cebd9458d14f279d4986d', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.123465', 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.123472', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('b2348c0ab9d8d9ca0fcbcd7b8b782ae1', '2b3e82137b454e3e960ab664921b1216', 'f7e92d4ac3d011edb19d0242ac110002', 'c468b18b021cf40ab3ec72ccbc95bce7', 1, 'SYSTEM001_turbocloud', '2023-06-20 08:33:24.749726', 'SYSTEM001_turbocloud', '2023-06-20 08:33:24.749733', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('b4dcdd3eca3e16573df99ea96a764757', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', '1323d821a424c62e2f8265d71dadc456', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.864175', 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.864180', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('b6e1d59da377242bed6ef857da3b0d97', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', 'cb9a623de6d5d2ef388cbb3d838211bf', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.865993', 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.865997', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('b86e31f5b4636383c589078269b526a2', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', '36189c10864abaec2c9f42581d8bad7b', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.123098', 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.123104', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('b9598321e7a0c7dff73d480df2e08b85', '2ab9bb074dcb4182955d973fe35de8c2', '648e641cc31f11edb19d0242ac110002', '7dc9f949601a49a9619989f0a822b7e1', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.043272', 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.043279', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c6d5e3b7c3e96d9c87032b9e22d98971', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', 'e14040271e5ca2f689389f97a2831105', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.126597', 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.126602', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('cd010f5167981a7b4ff732c80a6237c0', '2ab9bb074dcb4182955d973fe35de8c2', '25a2f7d7c31f11edb19d0242ac110002', '7567c2adf70c3d317f47ec47f8b94701', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.627217', 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.627226', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('d363f38c24b6817f36eb760167b7833e', '2ab9bb074dcb4182955d973fe35de8c2', '648e641cc31f11edb19d0242ac110002', '27a9c04c0801947c071d0df9f1cffdf6', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.040272', 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.040290', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('d69b9e90c1f25738fdeb9c365371208b', '2ab9bb074dcb4182955d973fe35de8c2', 'f7e92d4ac3d011edb19d0242ac110002', 'c0394de5fac311ed94480242ac110004', 1, 'SYSTEM001_turbocloud', '2023-05-27 15:36:06.795287', 'SYSTEM001_turbocloud', '2023-06-02 01:50:57.308059', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('d718a8c2c41331b090efa7ed52a57203', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', 'c5364ff262d57e333f71c1a66d7734c0', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.865558', 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.865562', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('d79e9a9dd7bd50ffc0439a6f027413a0', '2ab9bb074dcb4182955d973fe35de8c2', '979ea093c31f11edb19d0242ac110002', '23611a7c8098ec033506982a3738b874', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:36.443032', 'SYSTEM001_turbocloud', '2023-06-19 18:04:36.443044', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('db828d81819f25e0d97603e1f1b6acb0', '2ab9bb074dcb4182955d973fe35de8c2', '25a2f7d7c31f11edb19d0242ac110002', '614a321ffbfec46f15b5b1591f1886f4', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.626249', 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.626259', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('dd38f4ffd554ca4130a6015196d5a9b8', '2ab9bb074dcb4182955d973fe35de8c2', 'f7e92d4ac3d011edb19d0242ac110002', 'c0394de5fac311ed94480242ac110004', 1, 'SYSTEM001_turbocloud', '2023-05-27 14:53:50.849418', 'SYSTEM001_turbocloud', '2023-06-02 01:50:57.312392', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('e43c216e74f53b1c0cfb3080533bccd0', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', '61226e9d5241981d3291543b662a7a8b', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.124150', 'SYSTEM001_turbocloud', '2023-06-19 18:04:29.124156', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('ee276cfab41b6920e59e7746e8016ff8', '2ab9bb074dcb4182955d973fe35de8c2', '648e641cc31f11edb19d0242ac110002', '2d4327b0c200f3a26227895adbf87399', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.042311', 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.042319', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('ef8bb9be6bd5f6ffe6da0313a5968395', '2ab9bb074dcb4182955d973fe35de8c2', '25a2f7d7c31f11edb19d0242ac110002', '4aaa38d85360747e786393db7669ab76', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.625189', 'SYSTEM001_turbocloud', '2023-06-19 18:04:21.625199', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('f2351a14b4b7b1eeb94d3287e9dc3e66', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', 'c0f758e3af6ab71a4796c591243a74c0', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.865338', 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.865342', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('f2f8ea8387b8c83e91740e8648cf3499', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', '074459cad736434492243c88837f5f01', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.863510', 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.863518', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('f323f8a97a7c52e93c0fe620c9f86d87', '2ab9bb074dcb4182955d973fe35de8c2', '648e641cc31f11edb19d0242ac110002', 'c8d3cb3cbd634e410abcd1a52baa9027', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.044392', 'SYSTEM001_turbocloud', '2023-06-19 18:04:26.044399', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('fa965bfb67b8cae58ba862a40720eaeb', '2ab9bb074dcb4182955d973fe35de8c2', '979ea093c31f11edb19d0242ac110002', '237078abad075efa755d8942c6f847c9', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:36.443953', 'SYSTEM001_turbocloud', '2023-06-19 18:04:36.443960', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('fe70626f1db7d72206ea264ff79b60a2', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', 'cbbad8712f31b1f3cfdb90a06d7abc2c', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.866242', 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.866250', 0, 0, NULL);
INSERT INTO `ums_permission_api_relation` (`id`, `permission_id`, `menu_id`, `api_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('fe90049e0e8ce0870957a44a62bf65e5', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', 'f1a85f20ed9cb14553e8426700305cb3', 1, 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.866647', 'SYSTEM001_turbocloud', '2023-06-19 18:04:32.866654', 0, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ums_permission_component_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission_component_relation`;
CREATE TABLE `ums_permission_component_relation` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `permission_id` varchar(36) NOT NULL COMMENT '权限ID',
  `menu_id` varchar(36) NOT NULL COMMENT '菜单ID',
  `component_id` varchar(36) NOT NULL COMMENT '组件ID',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rcr_permission_id` (`permission_id`) USING BTREE,
  KEY `rcr_menu_id` (`menu_id`) USING BTREE,
  KEY `rcr_control_id` (`component_id`) USING BTREE
) COMMENT='权限和控件关系表';

-- ----------------------------
-- Records of ums_permission_component_relation
-- ----------------------------
BEGIN;
INSERT INTO `ums_permission_component_relation` (`id`, `permission_id`, `menu_id`, `component_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('2f3397210c205299032fa90d06d46898', 'cc5e2e622612c1cba6c4e7544aea5859', 'b9dbd6dbc31f11edb19d0242ac110002', '6fcddfb400b8cf7ed8cbc90dad2c0c9e', 1, 'SYSTEM001_turbocloud', '2023-06-19 14:37:49.570664', 'SYSTEM001_turbocloud', '2023-06-19 14:37:49.570686', 0, 0, NULL);
INSERT INTO `ums_permission_component_relation` (`id`, `permission_id`, `menu_id`, `component_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('70c71e06c8714634ccda53a803798c9d', '2ab9bb074dcb4182955d973fe35de8c2', 'b9dbd6dbc31f11edb19d0242ac110002', '566f3a58048f3e6f6a31076ad2139f03', 1, 'SYSTEM001_turbocloud', '2023-06-19 17:54:49.687980', 'SYSTEM001_turbocloud', '2023-06-19 17:54:49.687991', 0, 0, NULL);
INSERT INTO `ums_permission_component_relation` (`id`, `permission_id`, `menu_id`, `component_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('e3dd40d28aec3704ecd3da92561c5c7f', '2ab9bb074dcb4182955d973fe35de8c2', 'b9dbd6dbc31f11edb19d0242ac110002', '6fcddfb400b8cf7ed8cbc90dad2c0c9e', 1, 'SYSTEM001_turbocloud', '2023-06-19 17:54:49.685789', 'SYSTEM001_turbocloud', '2023-06-19 17:54:49.685805', 0, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ums_permission_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission_menu_relation`;
CREATE TABLE `ums_permission_menu_relation` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `permission_id` varchar(36) NOT NULL COMMENT '角色ID',
  `menu_id` varchar(36) NOT NULL COMMENT '菜单ID',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rmr_permission_id` (`permission_id`) USING BTREE,
  KEY `rmr_menu_id` (`menu_id`) USING BTREE
) COMMENT='权限和菜单关系表';

-- ----------------------------
-- Records of ums_permission_menu_relation
-- ----------------------------
BEGIN;
INSERT INTO `ums_permission_menu_relation` (`id`, `permission_id`, `menu_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('1b5539bc50503991bb7dd0f893285ad2', '2ab9bb074dcb4182955d973fe35de8c2', '648e641cc31f11edb19d0242ac110002', 1, 'SYSTEM001_turbocloud', '2023-03-29 09:48:38.306000', 'SYSTEM001_turbocloud', '2023-06-06 01:21:59.398391', 0, 0, NULL);
INSERT INTO `ums_permission_menu_relation` (`id`, `permission_id`, `menu_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('2c84aba1a2b4e26b5f2b7a990722b892', 'cc5e2e622612c1cba6c4e7544aea5859', 'f7e92d4ac3d011edb19d0242ac110002', 1, 'SYSTEM001_turbocloud', '2023-06-19 14:37:36.917881', 'SYSTEM001_turbocloud', '2023-06-19 14:37:36.917894', 0, 0, NULL);
INSERT INTO `ums_permission_menu_relation` (`id`, `permission_id`, `menu_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('3cc0cdaa0655d967654336991de545c2', '2ab9bb074dcb4182955d973fe35de8c2', '7e82c38ec31f11edb19d0242ac110002', 1, 'SYSTEM001_turbocloud', '2023-03-29 09:50:46.359000', 'SYSTEM001_turbocloud', '2023-06-06 01:34:13.442820', 0, 0, NULL);
INSERT INTO `ums_permission_menu_relation` (`id`, `permission_id`, `menu_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('492c4bf91cf92fb6d52564043dcbe166', '2b3e82137b454e3e960ab664921b1216', 'f7e92d4ac3d011edb19d0242ac110002', 1, 'SYSTEM001_turbocloud', '2023-05-23 17:21:55.782505', 'SYSTEM001_turbocloud', '2023-06-06 01:29:15.356065', 0, 0, NULL);
INSERT INTO `ums_permission_menu_relation` (`id`, `permission_id`, `menu_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('4b44aacc310d1550600ade0b55afbc11', '2ab9bb074dcb4182955d973fe35de8c2', '979ea093c31f11edb19d0242ac110002', 1, 'SYSTEM001_turbocloud', '2023-03-29 09:48:38.304000', 'SYSTEM001_turbocloud', '2023-06-06 01:34:17.083434', 0, 0, NULL);
INSERT INTO `ums_permission_menu_relation` (`id`, `permission_id`, `menu_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('53ab4b20c7248d84b9335448704a43a8', '2ab9bb074dcb4182955d973fe35de8c2', 'b9dbd6dbc31f11edb19d0242ac110002', 1, 'SYSTEM001_turbocloud', '2023-05-08 14:02:43.437059', 'SYSTEM001_turbocloud', '2023-06-06 01:21:59.423053', 0, 0, NULL);
INSERT INTO `ums_permission_menu_relation` (`id`, `permission_id`, `menu_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('82249637be3006ba2e3dba3607e60876', '2b3e82137b454e3e960ab664921b1216', 'a7a5542bc3d011edb19d0242ac110002', 1, 'SYSTEM001_turbocloud', '2023-05-23 17:21:55.786879', 'SYSTEM001_turbocloud', '2023-06-06 01:28:52.835955', 0, 0, NULL);
INSERT INTO `ums_permission_menu_relation` (`id`, `permission_id`, `menu_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('8c3e67665bcd5875edfb8a8c62f4c707', 'cc5e2e622612c1cba6c4e7544aea5859', 'b9dbd6dbc31f11edb19d0242ac110002', 1, 'SYSTEM001_turbocloud', '2023-06-19 14:37:36.921740', 'SYSTEM001_turbocloud', '2023-06-19 14:37:36.921752', 0, 0, NULL);
INSERT INTO `ums_permission_menu_relation` (`id`, `permission_id`, `menu_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('9ed24a43d2ee72c87010e52f072d163c', '2ab9bb074dcb4182955d973fe35de8c2', '25a2f7d7c31f11edb19d0242ac110002', 1, 'SYSTEM001_turbocloud', '2023-05-23 17:21:55.786123', 'SYSTEM001_turbocloud', '2023-06-02 01:51:53.434708', 0, 0, NULL);
INSERT INTO `ums_permission_menu_relation` (`id`, `permission_id`, `menu_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c113e1b1d03659b35e5be27c673aec74', '2ab9bb074dcb4182955d973fe35de8c2', '7dfad9b5494211edadc00242ac110002', 1, 'SYSTEM001_turbocloud', '2023-05-08 14:01:24.450845', 'SYSTEM001_turbocloud', '2023-06-06 01:33:57.774009', 0, 0, NULL);
INSERT INTO `ums_permission_menu_relation` (`id`, `permission_id`, `menu_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('e09c577b88e70778cfa45ad6f753d72c', '2ab9bb074dcb4182955d973fe35de8c2', '36698303d29a11edb68e0242ac110003', 1, 'SYSTEM001_turbocloud', '2023-05-08 14:01:24.451347', 'SYSTEM001_turbocloud', '2023-06-06 01:21:59.434424', 0, 0, NULL);
INSERT INTO `ums_permission_menu_relation` (`id`, `permission_id`, `menu_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('fcbbc6e835674d7096a9a12627d00e70', '2ab9bb074dcb4182955d973fe35de8c2', 'ecc199c6b1f74ef998af932007e478b0', 1, 'SYSTEM001_turbocloud', '2023-05-08 14:01:24.451347', 'SYSTEM001_turbocloud', '2023-06-06 01:21:59.436930', 0, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `system_id` varchar(36) NOT NULL COMMENT '系统Id',
  `role_name` varchar(100) NOT NULL COMMENT '角色名称',
  `role_code` varchar(100) DEFAULT NULL COMMENT '角色编码',
  `note` varchar(500) DEFAULT NULL COMMENT '描述',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `r_system_id` (`system_id`) USING BTREE,
  KEY `r_role_code` (`role_code`) USING BTREE
) COMMENT='角色表';

-- ----------------------------
-- Records of ums_role
-- ----------------------------
BEGIN;
INSERT INTO `ums_role` (`id`, `system_id`, `role_name`, `role_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('705c6dd17b7743cdbe2ff1c21ce2443d', 'SYSTEM001', '管理员', 'TurboCloud', '管理员角色', 1, 1, 'maintainer', '2022-10-11 08:30:50.039017', 'NONE', '2023-05-08 14:01:24.431436', 2, 0, 'TRC-11H3956STHPH0000Y');
INSERT INTO `ums_role` (`id`, `system_id`, `role_name`, `role_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('b6c6c78218eb4c889c824bccbbda2fb3', 'SYSTEM001', '游客用户', 'TouristUser', '游客用户角色', 4, 1, 'NONE', '2023-05-08 14:02:43.408122', 'NONE', '2023-05-08 14:02:43.408157', 0, 0, NULL);
INSERT INTO `ums_role` (`id`, `system_id`, `role_name`, `role_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('d860790eaa5bb51f95eb87da65b85a48', 'SYSTEM001', '著名作家', 'writer', '著名作家角色11', 5, 1, 'SYSTEM001_turbocloud', '2023-06-19 14:25:26.618957', 'SYSTEM001_turbocloud', '2023-06-19 14:26:20.095934', 0, 0, 'TRC-L1H395ADSMPH00018');
INSERT INTO `ums_role` (`id`, `system_id`, `role_name`, `role_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('e451b437ca0a11ed99020242ac110003', 'SYSTEM001', '普通用户', 'GeneralUser', '普通用户角色', 2, 1, 'maintainer', '2022-10-11 08:30:50.039017', 'SYSTEM001_turbocloud', '2023-05-25 13:25:07.426886', 0, 0, 'TRC-41H18NWC70XY0001C');
INSERT INTO `ums_role` (`id`, `system_id`, `role_name`, `role_code`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('ff71c453ca0a11ed99020242ac110003', 'SYSTEM001', '临时用户', 'TemporaryUser', '临时用户角色', 3, 1, 'maintainer', '2022-10-11 08:30:50.039017', 'NONE', '2023-05-08 14:02:51.626074', 0, 0, 'TRC-51GZWZ98L3S90004A');
COMMIT;

-- ----------------------------
-- Table structure for ums_role_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_permission_relation`;
CREATE TABLE `ums_role_permission_relation` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `role_id` varchar(36) NOT NULL COMMENT '角色ID',
  `permission_id` varchar(36) NOT NULL COMMENT '权限ID',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rmr_permission_id` (`permission_id`) USING BTREE,
  KEY `rmr_menu_id` (`role_id`) USING BTREE
) COMMENT='角色和权限关系表';

-- ----------------------------
-- Records of ums_role_permission_relation
-- ----------------------------
BEGIN;
INSERT INTO `ums_role_permission_relation` (`id`, `role_id`, `permission_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('492b286f2ca07b7a525e92db4b9e8910', 'd860790eaa5bb51f95eb87da65b85a48', '2b3e82137b454e3e960ab664921b1216', 1, 'SYSTEM001_turbocloud', '2023-06-19 14:26:32.356470', 'SYSTEM001_turbocloud', '2023-06-19 14:26:32.356481', 0, 0, NULL);
INSERT INTO `ums_role_permission_relation` (`id`, `role_id`, `permission_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('85e0de5995fac5be16bf4fcc82d31176', 'e451b437ca0a11ed99020242ac110003', '2b3e82137b454e3e960ab664921b1216', 1, 'SYSTEM001_turbocloud', '2023-06-03 16:01:52.650568', 'SYSTEM001_turbocloud', '2023-06-03 16:01:52.650579', 0, 0, NULL);
INSERT INTO `ums_role_permission_relation` (`id`, `role_id`, `permission_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('860f83087def951e85d722970276316d', '705c6dd17b7743cdbe2ff1c21ce2443d', '2b3e82137b454e3e960ab664921b1216', 1, 'SYSTEM001_turbocloud', '2023-06-20 08:32:53.821328', 'SYSTEM001_turbocloud', '2023-06-20 08:32:53.821392', 0, 0, NULL);
INSERT INTO `ums_role_permission_relation` (`id`, `role_id`, `permission_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('c5c7f20d5b1bc5d17cf30985150ec7ca', 'd860790eaa5bb51f95eb87da65b85a48', '2ab9bb074dcb4182955d973fe35de8c2', 1, 'SYSTEM001_turbocloud', '2023-06-19 14:26:32.361135', 'SYSTEM001_turbocloud', '2023-06-19 14:26:32.361145', 0, 0, NULL);
INSERT INTO `ums_role_permission_relation` (`id`, `role_id`, `permission_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('d6384787003fcb6ef83fec3d88c61c3c', '705c6dd17b7743cdbe2ff1c21ce2443d', '2ab9bb074dcb4182955d973fe35de8c2', 1, 'SYSTEM001_turbocloud', '2023-06-20 08:32:53.823651', 'SYSTEM001_turbocloud', '2023-06-20 08:32:53.823659', 0, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ums_system
-- ----------------------------
DROP TABLE IF EXISTS `ums_system`;
CREATE TABLE `ums_system` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `logo` varchar(500) DEFAULT '' COMMENT '系统LOGO链接',
  `system_name` varchar(36) NOT NULL DEFAULT '' COMMENT '系统名称',
  `system_code` varchar(36) NOT NULL COMMENT '系统Code',
  `system_secret_key` varchar(36) NOT NULL DEFAULT '' COMMENT '系统秘钥',
  `summary` varchar(255) DEFAULT NULL COMMENT '系统描述',
  `copyright` varchar(36) DEFAULT '' COMMENT '系统版权',
  `extern_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '外部链接',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `s_system_code` (`system_code`) USING BTREE
) COMMENT='系统表';

-- ----------------------------
-- Records of ums_system
-- ----------------------------
BEGIN;
INSERT INTO `ums_system` (`id`, `logo`, `system_name`, `system_code`, `system_secret_key`, `summary`, `copyright`, `extern_path`, `note`, `sort`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('SYSTEM001', '', '学海系统', 'mousika_sea', '123456', '学海无涯，学海无涯', 'Copyright©2022 学海科技部出品', NULL, '学海无涯苦作舟', 1, 1, 'maintainer', '2022-10-10 08:24:19.955138', 'maintainer', '2023-03-08 07:16:13.913799', 3, 0, 'TRC-91GJC9TL6SQL0000J');
COMMIT;

-- ----------------------------
-- Table structure for ums_user
-- ----------------------------
DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE `ums_user` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `system_id` varchar(36) NOT NULL COMMENT '系统Id',
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `real_name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `ext_attribute` varchar(2000) DEFAULT NULL COMMENT '扩展属性，可以存储json',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `u_system_id` (`system_id`) USING BTREE,
  KEY `u_username` (`username`) USING BTREE,
  KEY `u_email` (`email`) USING BTREE
) COMMENT='用户表';

-- ----------------------------
-- Records of ums_user
-- ----------------------------
BEGIN;
INSERT INTO `ums_user` (`id`, `system_id`, `username`, `password`, `icon`, `email`, `real_name`, `nick_name`, `note`, `ext_attribute`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('SYSTEM001_luxun', 'SYSTEM001', 'luxun', '$2a$10$5es55bqi3HYmDH3A.NzVAuE67JPJQ0RqVCtoDZDN1NBdtZvOEqStC', '20230619/bc9ae6446c5c4c3783da21287defdbb0.png', 'luxun@email.com', '鲁迅', NULL, '鲁迅（1881年9月25日—1936年10月19日），原名周樟寿，后改名周树人，字豫山，后改字豫才，浙江绍兴人。著名文学家、思想家、革命家、教育家、民主战士，新文化运动的重要参与者，中国现代文学的奠基', NULL, 1, 'SYSTEM001_turbocloud', '2023-06-19 13:16:03.125647', 'SYSTEM001_turbocloud', '2023-06-19 13:19:50.962993', 0, 0, 'TRC-21H391GP5FTC00032');
INSERT INTO `ums_user` (`id`, `system_id`, `username`, `password`, `icon`, `email`, `real_name`, `nick_name`, `note`, `ext_attribute`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('SYSTEM001_turbocloud', 'SYSTEM001', 'turbocloud', '$2a$10$Nn2YFhLgO6NA87XI6CYVEOLg3F9p03uJoviwVY/O/XGAfcYOSUfg6', '20230509/c1029526cf114249afb9682440e2514d.png', 'admin@xxx.com', '管理员', '管理员', '超级管理员', NULL, 1, 'maintainer', '2022-08-16 07:03:48.487243', 'SYSTEM001_turbocloud', '2023-05-09 16:02:26.513375', 2, 0, 'TRC-Q1GZZRGY14VR0000E');
INSERT INTO `ums_user` (`id`, `system_id`, `username`, `password`, `icon`, `email`, `real_name`, `nick_name`, `note`, `ext_attribute`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('SYSTEM001_wangwu', 'SYSTEM001', 'wangwu', '$2a$10$CwojuP3FA8O8lVsHisMOu.hmQm173ZHm26xPqRIJ5m6WkzCvjbUFu', '20230508/1be2dd28ece44604ad519fc051a784db.png', 'wangwu@xxx.com', '王五', NULL, '游客用户', NULL, 1, 'NONE', '2023-05-08 09:28:30.456894', 'NONE', '2023-05-09 15:52:43.110935', 0, 0, 'TRC-51GZZQZ4L2RG0002J');
INSERT INTO `ums_user` (`id`, `system_id`, `username`, `password`, `icon`, `email`, `real_name`, `nick_name`, `note`, `ext_attribute`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('SYSTEM001_zhangluning', 'SYSTEM001', 'lisi', '$2a$10$kUnbF78DNPqhwv/I81hgaOcWEqMOyojHld/tjpeSRm/cNjBR/vzXe', '20230508/89c48e39e2144231b7a0f1a75725c266.jpeg', 'lisi@xxx.com', '李四', '四四', '普通用户', NULL, 1, 'maintainer', '2022-08-16 07:03:48.487243', 'NONE', '2023-05-09 15:52:48.711163', 0, 0, 'TRC-K1GZZQZ9T3RG00030');
INSERT INTO `ums_user` (`id`, `system_id`, `username`, `password`, `icon`, `email`, `real_name`, `nick_name`, `note`, `ext_attribute`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('SYSTEM001_zhangsan', 'SYSTEM001', 'zhangsan', '$2a$10$kzehsPQlmjsGAa6tY.heXe8vwwspwcvu7wY.zKTvQSZpH2WSn30.i', '20230508/f0f9fcd31b8c455eb04a49547531de37.jpeg', 'zhangsan@xxx.com', '张三', '三三', '临时用户', NULL, 1, 'NONE', '2023-04-04 16:33:11.856000', 'NONE', '2023-05-09 15:52:54.163568', 0, 0, 'TRC-21GZZQZF4FRG0003E');
COMMIT;

-- ----------------------------
-- Table structure for ums_user_dept_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_dept_relation`;
CREATE TABLE `ums_user_dept_relation` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `user_id` varchar(36) NOT NULL COMMENT '用户ID',
  `dept_id` varchar(36) NOT NULL COMMENT '部门ID',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `udr_user_id` (`user_id`) USING BTREE,
  KEY `udr_dept_id` (`dept_id`) USING BTREE
) COMMENT='用户和部门关系表';

-- ----------------------------
-- Records of ums_user_dept_relation
-- ----------------------------
BEGIN;
INSERT INTO `ums_user_dept_relation` (`id`, `user_id`, `dept_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('0caee93de35ccb0428009cd386b1024f', 'SYSTEM001_wangwu', 'ad6dd6f0c87011ed99020242ac110003', 1, 'NONE', '2023-05-09 15:52:43.135720', 'NONE', '2023-05-09 15:52:43.135726', 0, 0, NULL);
INSERT INTO `ums_user_dept_relation` (`id`, `user_id`, `dept_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('0d2fe7301c11398bb8165db311661b53', 'SYSTEM001_luxun', '790e69c2c87111ed99020242ac110003', 1, 'SYSTEM001_turbocloud', '2023-06-19 13:19:51.006296', 'SYSTEM001_turbocloud', '2023-06-19 13:19:51.006303', 0, 0, NULL);
INSERT INTO `ums_user_dept_relation` (`id`, `user_id`, `dept_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('0e3f586cffd32e210e39f88969b09f91', 'SYSTEM001_turbocloud', '790e69c2c87111ed99020242ac110003', 1, 'SYSTEM001_turbocloud', '2023-05-09 16:02:26.559787', 'SYSTEM001_turbocloud', '2023-05-09 16:02:26.559792', 0, 0, NULL);
INSERT INTO `ums_user_dept_relation` (`id`, `user_id`, `dept_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('5cea6683795e69f2c29bee1a565df06a', 'SYSTEM001_zhangluning', '937592c7c87111ed99020242ac110003', 1, 'NONE', '2023-05-09 15:52:48.737617', 'NONE', '2023-05-09 15:52:48.737623', 0, 0, NULL);
INSERT INTO `ums_user_dept_relation` (`id`, `user_id`, `dept_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('70786c18546e810c976af5c7210e7384', 'SYSTEM001_liuliu', '8db805cdefb99d677b13557373413ce2', 1, 'NONE', '2023-05-08 13:40:56.068759', 'NONE', '2023-05-08 13:40:56.068770', 0, 0, NULL);
INSERT INTO `ums_user_dept_relation` (`id`, `user_id`, `dept_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7ae01870c4d7524c138a4c1871f2d071', 'SYSTEM001_zhangsan', '790e69c2c87111ed99020242ac110003', 1, 'NONE', '2023-05-09 15:52:54.184271', 'NONE', '2023-05-09 15:52:54.184278', 0, 0, NULL);
INSERT INTO `ums_user_dept_relation` (`id`, `user_id`, `dept_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('b1e3f594980401770e69589b3a9e1c24', 'SYSTEM001_wangerma', 'c04553e8ebba11edae9d0242ac110003', 1, 'SYSTEM001_turbocloud', '2023-06-08 09:26:29.473208', 'SYSTEM001_turbocloud', '2023-06-08 09:26:29.473216', 0, 0, NULL);
INSERT INTO `ums_user_dept_relation` (`id`, `user_id`, `dept_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('b25d7b6912b02fd15c11080dd9124776', 'SYSTEM001_turbocloud', '15d9f796a82a8283464225d7a55dc88f', 1, 'SYSTEM001_turbocloud', '2023-05-09 16:02:26.560084', 'SYSTEM001_turbocloud', '2023-05-09 16:02:26.560089', 0, 0, NULL);
INSERT INTO `ums_user_dept_relation` (`id`, `user_id`, `dept_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('d01e6e64710468fcecfbb899df01a74c', 'SYSTEM001_turbocloud', '790e69c2c87111ed99020242ac110003', 1, 'SYSTEM001_turbocloud', '2023-05-09 16:02:26.558302', 'SYSTEM001_turbocloud', '2023-05-09 16:02:26.558310', 0, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ums_user_home
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_home`;
CREATE TABLE `ums_user_home` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `user_id` varchar(36) NOT NULL COMMENT '用户ID',
  `menu_id` varchar(100) NOT NULL COMMENT '菜单ID',
  `note` varchar(500) DEFAULT NULL COMMENT '描述',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uh_user_id` (`user_id`) USING BTREE,
  KEY `uh_menu_id` (`menu_id`) USING BTREE
) COMMENT='用户首页菜单表';

-- ----------------------------
-- Records of ums_user_home
-- ----------------------------
BEGIN;
INSERT INTO `ums_user_home` (`id`, `user_id`, `menu_id`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('01d34694b1c10da7aa9637438d4dc4da', 'SYSTEM001_wangwu', 'f7e92d4ac3d011edb19d0242ac110002', NULL, 1, 'NONE', '2023-05-09 15:52:43.141239', 'NONE', '2023-05-09 15:52:43.141245', 0, 0, NULL);
INSERT INTO `ums_user_home` (`id`, `user_id`, `menu_id`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('0d42a976b3b7796ff2ec2fa072f6fd39', 'SYSTEM001_zhangluning', 'f7e92d4ac3d011edb19d0242ac110002', NULL, 1, 'NONE', '2023-05-09 15:52:48.748708', 'NONE', '2023-05-09 15:52:48.748718', 0, 0, NULL);
INSERT INTO `ums_user_home` (`id`, `user_id`, `menu_id`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('1d8728b6abbac20286bbd04634829023', 'SYSTEM001_turbocloud', 'f7e92d4ac3d011edb19d0242ac110002', NULL, 1, 'SYSTEM001_turbocloud', '2023-05-09 16:02:26.567171', 'SYSTEM001_turbocloud', '2023-05-09 16:02:26.567199', 0, 0, NULL);
INSERT INTO `ums_user_home` (`id`, `user_id`, `menu_id`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('6eb927c5d0e3350f86622a0538ea29c3', 'SYSTEM001_luxun', 'f7e92d4ac3d011edb19d0242ac110002', NULL, 1, 'SYSTEM001_turbocloud', '2023-06-19 13:19:51.015726', 'SYSTEM001_turbocloud', '2023-06-19 13:19:51.015738', 0, 0, NULL);
INSERT INTO `ums_user_home` (`id`, `user_id`, `menu_id`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7ac4661c245479edc6cd6b3d4bdb1040', 'SYSTEM001_wangerma', 'f7e92d4ac3d011edb19d0242ac110002', NULL, 1, 'SYSTEM001_turbocloud', '2023-06-08 09:26:29.481807', 'SYSTEM001_turbocloud', '2023-06-08 09:26:29.481815', 0, 0, NULL);
INSERT INTO `ums_user_home` (`id`, `user_id`, `menu_id`, `note`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('dcc81c3d61f9b353856a538cd0188391', 'SYSTEM001_zhangsan', 'f7e92d4ac3d011edb19d0242ac110002', NULL, 1, 'NONE', '2023-05-09 15:52:54.193752', 'NONE', '2023-05-09 15:52:54.193766', 0, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ums_user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_role_relation`;
CREATE TABLE `ums_user_role_relation` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `user_id` varchar(36) NOT NULL COMMENT '用户ID',
  `role_id` varchar(36) NOT NULL COMMENT '角色ID',
  `state_id` int unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `created_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '创建人',
  `created_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `last_modified_by` varchar(36) NOT NULL DEFAULT 'maintainer' COMMENT '更新人',
  `last_modified_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `version_lock` int unsigned NOT NULL DEFAULT '0' COMMENT '乐观锁',
  `deleted_time_long` bigint NOT NULL DEFAULT '0' COMMENT '逻辑删除时间',
  `trace_id` varchar(36) DEFAULT NULL COMMENT 'traceId',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `urr_user_id` (`user_id`) USING BTREE,
  KEY `urr_role_id` (`role_id`) USING BTREE
) COMMENT='用户和角色关系表';

-- ----------------------------
-- Records of ums_user_role_relation
-- ----------------------------
BEGIN;
INSERT INTO `ums_user_role_relation` (`id`, `user_id`, `role_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('06f38fd568c21b5a584f6bb9dd8a7cd0', 'SYSTEM001_luxun', 'e451b437ca0a11ed99020242ac110003', 1, 'SYSTEM001_turbocloud', '2023-06-19 13:19:50.994906', 'SYSTEM001_turbocloud', '2023-06-19 13:19:50.994921', 0, 0, NULL);
INSERT INTO `ums_user_role_relation` (`id`, `user_id`, `role_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('1e72d67533eb5f7cb9c5978647acb3f2', 'SYSTEM001_turbocloud', '705c6dd17b7743cdbe2ff1c21ce2443d', 1, 'SYSTEM001_turbocloud', '2023-05-09 16:02:26.540404', 'SYSTEM001_turbocloud', '2023-05-09 16:02:26.540415', 0, 0, NULL);
INSERT INTO `ums_user_role_relation` (`id`, `user_id`, `role_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('36e20b7ac73464e6f9a7fed4c28b2e66', 'SYSTEM001_liuliu', 'e451b437ca0a11ed99020242ac110003', 1, 'NONE', '2023-05-08 13:40:56.059319', 'NONE', '2023-05-08 13:40:56.059329', 0, 0, NULL);
INSERT INTO `ums_user_role_relation` (`id`, `user_id`, `role_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('378dc013f7dd68a780c10a927975ff55', 'SYSTEM001_wangwu', '705c6dd17b7743cdbe2ff1c21ce2443d', 1, 'NONE', '2023-05-09 15:52:43.121966', 'NONE', '2023-05-09 15:52:43.121972', 0, 0, NULL);
INSERT INTO `ums_user_role_relation` (`id`, `user_id`, `role_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('7cde46e5349d3ea2511c3034038b1000', 'SYSTEM001_zhangluning', '705c6dd17b7743cdbe2ff1c21ce2443d', 1, 'NONE', '2023-05-09 15:52:48.728163', 'NONE', '2023-05-09 15:52:48.728170', 0, 0, NULL);
INSERT INTO `ums_user_role_relation` (`id`, `user_id`, `role_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('e72cd11391ccfa9b70c0a45f5e9e6d23', 'SYSTEM001_zhangsan', '705c6dd17b7743cdbe2ff1c21ce2443d', 1, 'NONE', '2023-05-09 15:52:54.172971', 'NONE', '2023-05-09 15:52:54.172977', 0, 0, NULL);
INSERT INTO `ums_user_role_relation` (`id`, `user_id`, `role_id`, `state_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `version_lock`, `deleted_time_long`, `trace_id`) VALUES ('f45105017076c9c5d33c5080e2e0a397', 'SYSTEM001_wangerma', 'b6c6c78218eb4c889c824bccbbda2fb3', 1, 'SYSTEM001_turbocloud', '2023-06-08 09:26:29.459667', 'SYSTEM001_turbocloud', '2023-06-08 09:26:29.459674', 0, 0, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
