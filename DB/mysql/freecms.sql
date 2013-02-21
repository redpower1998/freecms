/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.51b-community-nt : Database - freecms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`freecms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `freecms`;

/*Table structure for table `freecms_answer` */

DROP TABLE IF EXISTS `freecms_answer`;

CREATE TABLE `freecms_answer` (
  `id` varchar(50) NOT NULL,
  `questionid` varchar(50) default NULL,
  `name` varchar(500) default NULL,
  `isok` char(1) default NULL,
  `ordernum` int(11) default NULL,
  `selectnum` int(11) default NULL,
  `isselect` char(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_question_answer` (`questionid`),
  CONSTRAINT `FK_question_answer` FOREIGN KEY (`questionid`) REFERENCES `freecms_question` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网上调查选项';

/*Data for the table `freecms_answer` */

/*Table structure for table `freecms_channel` */

DROP TABLE IF EXISTS `freecms_channel`;

CREATE TABLE `freecms_channel` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) default NULL,
  `templet` varchar(50) default NULL,
  `contentTemplet` varchar(50) default NULL,
  `img` varchar(500) default NULL,
  `description` text,
  `parId` varchar(50) default NULL,
  `site` varchar(50) default NULL,
  `url` varchar(500) default NULL,
  `state` varchar(1) default NULL,
  `orderNum` int(11) default NULL,
  `clickNum` int(11) default NULL,
  `navigation` varchar(1) default NULL,
  `pagemark` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_栏目_站点` (`site`),
  CONSTRAINT `FK_栏目_站点` FOREIGN KEY (`site`) REFERENCES `freecms_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目';

/*Data for the table `freecms_channel` */

insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('15d53d41-003c-454b-b5fa-d4e4ec0c0ccc','许可证','','',NULL,'<h1 id=\"What\">\r\n	FreeCMS使用Apache License 2.0开源协议</h1>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Apache License<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version 2.0, January 2004<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; http://www.apache.org/licenses/<br />\r\n	<br />\r\n	&nbsp;&nbsp; TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION<br />\r\n	<br />\r\n	&nbsp;&nbsp; 1. Definitions.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;License&quot; shall mean the terms and conditions for use, reproduction,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and distribution as defined by Sections 1 through 9 of this document.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Licensor&quot; shall mean the copyright owner or entity authorized by<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the copyright owner that is granting the License.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Legal Entity&quot; shall mean the union of the acting entity and all<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; other entities that control, are controlled by, or are under common<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; control with that entity. For the purposes of this definition,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;control&quot; means (i) the power, direct or indirect, to cause the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; direction or management of such entity, whether by contract or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; otherwise, or (ii) ownership of fifty percent (50%) or more of the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; outstanding shares, or (iii) beneficial ownership of such entity.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;You&quot; (or &quot;Your&quot;) shall mean an individual or Legal Entity<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; exercising permissions granted by this License.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Source&quot; form shall mean the preferred form for making modifications,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; including but not limited to software source code, documentation<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; source, and configuration files.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Object&quot; form shall mean any form resulting from mechanical<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; transformation or translation of a Source form, including but<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; not limited to compiled object code, generated documentation,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and conversions to other media types.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Work&quot; shall mean the work of authorship, whether in Source or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Object form, made available under the License, as indicated by a<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; copyright notice that is included in or attached to the work<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (an example is provided in the Appendix below).<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Derivative Works&quot; shall mean any work, whether in Source or Object<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; form, that is based on (or derived from) the Work and for which the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; editorial revisions, annotations, elaborations, or other modifications<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; represent, as a whole, an original work of authorship. For the purposes<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of this License, Derivative Works shall not include works that remain<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; separable from, or merely link (or bind by name) to the interfaces of,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Work and Derivative Works thereof.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Contribution&quot; shall mean any work of authorship, including<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the original version of the Work and any modifications or additions<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to that Work or Derivative Works thereof, that is intentionally<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; submitted to Licensor for inclusion in the Work by the copyright owner<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or by an individual or Legal Entity authorized to submit on behalf of<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the copyright owner. For the purposes of this definition, &quot;submitted&quot;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; means any form of electronic, verbal, or written communication sent<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to the Licensor or its representatives, including but not limited to<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; communication on electronic mailing lists, source code control systems,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and issue tracking systems that are managed by, or on behalf of, the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Licensor for the purpose of discussing and improving the Work, but<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; excluding communication that is conspicuously marked or otherwise<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; designated in writing by the copyright owner as &quot;Not a Contribution.&quot;<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Contributor&quot; shall mean Licensor and any individual or Legal Entity<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; on behalf of whom a Contribution has been received by Licensor and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; subsequently incorporated within the Work.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 2. Grant of Copyright License. Subject to the terms and conditions of<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this License, each Contributor hereby grants to You a perpetual,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; worldwide, non-exclusive, no-charge, royalty-free, irrevocable<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; copyright license to reproduce, prepare Derivative Works of,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; publicly display, publicly perform, sublicense, and distribute the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Work and such Derivative Works in Source or Object form.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 3. Grant of Patent License. Subject to the terms and conditions of<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this License, each Contributor hereby grants to You a perpetual,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; worldwide, non-exclusive, no-charge, royalty-free, irrevocable<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (except as stated in this section) patent license to make, have made,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use, offer to sell, sell, import, and otherwise transfer the Work,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; where such license applies only to those patent claims licensable<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; by such Contributor that are necessarily infringed by their<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contribution(s) alone or by combination of their Contribution(s)<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; with the Work to which such Contribution(s) was submitted. If You<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; institute patent litigation against any entity (including a<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cross-claim or counterclaim in a lawsuit) alleging that the Work<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or a Contribution incorporated within the Work constitutes direct<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or contributory patent infringement, then any patent licenses<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; granted to You under this License for that Work shall terminate<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; as of the date such litigation is filed.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 4. Redistribution. You may reproduce and distribute copies of the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Work or Derivative Works thereof in any medium, with or without<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; modifications, and in Source or Object form, provided that You<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meet the following conditions:<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (a) You must give any other recipients of the Work or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Derivative Works a copy of this License; and<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (b) You must cause any modified files to carry prominent notices<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stating that You changed the files; and<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (c) You must retain, in the Source form of any Derivative Works<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; that You distribute, all copyright, patent, trademark, and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; attribution notices from the Source form of the Work,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; excluding those notices that do not pertain to any part of<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Derivative Works; and<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (d) If the Work includes a &quot;NOTICE&quot; text file as part of its<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; distribution, then any Derivative Works that You distribute must<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; include a readable copy of the attribution notices contained<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; within such NOTICE file, excluding those notices that do not<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pertain to any part of the Derivative Works, in at least one<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of the following places: within a NOTICE text file distributed<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; as part of the Derivative Works; within the Source form or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; documentation, if provided along with the Derivative Works; or,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; within a display generated by the Derivative Works, if and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wherever such third-party notices normally appear. The contents<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of the NOTICE file are for informational purposes only and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; do not modify the License. You may add Your own attribution<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; notices within Derivative Works that You distribute, alongside<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or as an addendum to the NOTICE text from the Work, provided<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; that such additional attribution notices cannot be construed<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; as modifying the License.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; You may add Your own copyright statement to Your modifications and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; may provide additional or different license terms and conditions<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for use, reproduction, or distribution of Your modifications, or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for any such Derivative Works as a whole, provided Your use,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reproduction, and distribution of the Work otherwise complies with<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the conditions stated in this License.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 5. Submission of Contributions. Unless You explicitly state otherwise,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; any Contribution intentionally submitted for inclusion in the Work<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; by You to the Licensor shall be under the terms and conditions of<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this License, without any additional terms or conditions.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Notwithstanding the above, nothing herein shall supersede or modify<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the terms of any separate license agreement you may have executed<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; with Licensor regarding such Contributions.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 6. Trademarks. This License does not grant permission to use the trade<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; names, trademarks, service marks, or product names of the Licensor,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except as required for reasonable and customary use in describing the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; origin of the Work and reproducing the content of the NOTICE file.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 7. Disclaimer of Warranty. Unless required by applicable law or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; agreed to in writing, Licensor provides the Work (and each<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contributor provides its Contributions) on an &quot;AS IS&quot; BASIS,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; implied, including, without limitation, any warranties or conditions<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PARTICULAR PURPOSE. You are solely responsible for determining the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; appropriateness of using or redistributing the Work and assume any<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; risks associated with Your exercise of permissions under this License.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 8. Limitation of Liability. In no event and under no legal theory,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; whether in tort (including negligence), contract, or otherwise,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unless required by applicable law (such as deliberate and grossly<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; negligent acts) or agreed to in writing, shall any Contributor be<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; liable to You for damages, including any direct, indirect, special,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; incidental, or consequential damages of any character arising as a<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; result of this License or out of the use or inability to use the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Work (including but not limited to damages for loss of goodwill,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; work stoppage, computer failure or malfunction, or any and all<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; other commercial damages or losses), even if such Contributor<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; has been advised of the possibility of such damages.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 9. Accepting Warranty or Additional Liability. While redistributing<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Work or Derivative Works thereof, You may choose to offer,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and charge a fee for, acceptance of support, warranty, indemnity,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or other liability obligations and/or rights consistent with this<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; License. However, in accepting such obligations, You may act only<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; on Your own behalf and on Your sole responsibility, not on behalf<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of any other Contributor, and only if You agree to indemnify,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; defend, and hold each Contributor harmless for any liability<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; incurred by, or claims asserted against, such Contributor by reason<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of your accepting any such warranty or additional liability.<br />\r\n	<br />\r\n	&nbsp;&nbsp; END OF TERMS AND CONDITIONS<br />\r\n	<br />\r\n	&nbsp;&nbsp; APPENDIX: How to apply the Apache License to your work.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To apply the Apache License to your work, attach the following<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; boilerplate notice, with the fields enclosed by brackets &quot;[]&quot;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; replaced with your own identifying information. (Don&#39;t include<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the brackets!)&nbsp; The text should be enclosed in the appropriate<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; comment syntax for the file format. We also recommend that a<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file or class name and description of purpose be included on the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; same &quot;printed page&quot; as the copyright notice for easier<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; identification within third-party archives.<br />\r\n	<br />\r\n	&nbsp;&nbsp; Copyright [yyyy] [name of copyright owner]<br />\r\n	<br />\r\n	&nbsp;&nbsp; Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);<br />\r\n	&nbsp;&nbsp; you may not use this file except in compliance with the License.<br />\r\n	&nbsp;&nbsp; You may obtain a copy of the License at<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; http://www.apache.org/licenses/LICENSE-2.0<br />\r\n	<br />\r\n	&nbsp;&nbsp; Unless required by applicable law or agreed to in writing, software<br />\r\n	&nbsp;&nbsp; distributed under the License is distributed on an &quot;AS IS&quot; BASIS,<br />\r\n	&nbsp;&nbsp; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.<br />\r\n	&nbsp;&nbsp; See the License for the specific language governing permissions and<br />\r\n	&nbsp;&nbsp; limitations under the License.<br />\r\n	&nbsp;</p>','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',2,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('16ec77b8-38d9-406b-8142-92292b48ea7d','源代码','','',NULL,'','f2417969-1508-470e-862c-ae1adfcd04e7','7a4d22d6-762b-46e5-895b-d62da52bf9cb','http://code.google.com/p/freecms/source/checkout','1',2,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('43283229-fd90-4632-8614-89c8831746dd','加入FreeTeam','','',NULL,'<h1>\r\n	加入FreeTeam</h1>\r\n<p>\r\n	<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>目前使用SVN来控制程序版本，如果您想加入<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>，最好先弄明白SVN的使用方法。<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>托管在google code上，google code把开发人员分成项目所有者和项目成员两种身份，他们都可以向SVN提交代码。因此如果您想向<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的SVN提交代码必须具备以下条件</p>\r\n<ul>\r\n	<li>\r\n		1.必要的职业技能水平，不一定是程序员，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>也需要前端工程师和设计师，以及文档撰写者。</li>\r\n	<li>\r\n		2.热衷于开源软件事业</li>\r\n	<li>\r\n		3.一个google的帐号:)</li>\r\n</ul>\r\n<p>\r\n	如果您觉得自己具备了这些条件，又迫不及待地想加入到<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>之中，请立即向freeteam@foxmail.com提交您的请求，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将尽快组织人员对您的请求给予答复。邮件请按以下格式撰写:</p>\r\n<ul>\r\n	<li>\r\n		真实姓名</li>\r\n	<li>\r\n		常用电子邮件</li>\r\n	<li>\r\n		Google帐号</li>\r\n	<li>\r\n		希望从事的工作</li>\r\n	<li>\r\n		自我介绍</li>\r\n</ul>\r\n<p>\r\n	<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>欢迎您的加入!</p>','b13493bc-fae7-4908-8c1f-9f4a18426222','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',4,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('529669e6-2765-4091-8f2a-bb99b379c5c0','下载','','',NULL,'','f2417969-1508-470e-862c-ae1adfcd04e7','7a4d22d6-762b-46e5-895b-d62da52bf9cb','http://code.google.com/p/freecms/downloads/list','1',NULL,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('6555dd8b-7acc-4e57-a19a-cc70dd4f7135','动态','栏目信息列表.html','','','','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',0,NULL,'1','动态');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('7681f4e6-fba1-40c5-9bba-eb3c274bd499','维基','','',NULL,'','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','http://code.google.com/p/freecms/wiki/Wiki','1',4,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('7bdbcb40-0ca7-4bc7-91da-e8cb9c569a2b','解决方案','','',NULL,'<h1>\r\n	解决方案</h1>\r\n<h2>\r\n	政府部门网站解决方案</h2>\r\n<p>\r\n	政府部门网站解决方案倡导&quot;安全、共享、协同、应用&quot;的理念，遵循国家电子政务标准实施中&quot;统一组织领导、统一规划实施、统一标准规范、同一网络平台、统一安全管理&quot;的基本原则，充分发挥政府网站有效服务社会的应用职能，有效推进政府信息群架构进程。</p>\r\n<h2>\r\n	集团企业门户解决方案</h2>\r\n<p>\r\n	集团企业门户解决方案从&quot;集成管理、随需应变&quot;的理念出发，不但把集团的企业、集团的产品等相关信息展示给我们的客户、合作伙伴和业内同行，同时也能给他们提供一个便捷有效的反馈平台，商务平台，在网上实现在线企业的概念。使集团的业务能超越时间和空间的限制，在业内更具有竞争力。</p>\r\n<h2>\r\n	大型资讯门户整体解决方案</h2>\r\n<p>\r\n	大型资讯类门户网站最核心的部分是解决资讯来源问题，需要保证能够获取大量实时资讯内容，同时需要保证网站能够无差错不间断的稳定运行。 大型信息门户整体解决方案专为大型资讯类门户网站而设计，定时自动采集模块能够不断获取资讯内容，定时生成、定时备份等多项措施能够减轻维护人员工作量，同时经过考验的CMS系统能够为大型网站提供最佳的整体方案解决可能遇到的各种问题。</p>\r\n<h2>\r\n	大型门户CMS集成解决方案</h2>\r\n<p>\r\n	大型门户网站需要一个强大的CMS系统作为支撑，要求CMS系统不但能够管理资讯信息，同时能够将门户系统内的业务相关数据集成显示，统一纳入CMS中进行管理。 大型门户CMS集成解决方案能够将电子商务门户、行业门户网站、娱乐门户网站、证券门户网站等拥有除资讯外信息的多类网站整合到FreeCMS系统中进行维护管理，将业务数据、产品数据、信息交互等多种信息静态化，使维护大型网站不再困难。</p>\r\n<h2>\r\n	企业信息门户解决方案</h2>\r\n<p>\r\n	针对各种不同的企业，FreeCMS将为您提供全方位的网站解决方案，为您搭建一个集个性化与网下活动同步、拓展范围更广、信息及其应用范围更广的专业网络宣传与交流门户平台。</p>','f9dda97c-a26c-40a3-8a13-12db9538c864','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',2,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('7c4171d2-d677-447e-a478-16a73d9c625f','其它','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',6,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('860f8115-fdd5-438b-a445-1c27e7f6a685','常见问题解答','','',NULL,'<h1>\r\n	常见问题解答</h1>\r\n<h2>\r\n	FreeCMS公开所有源码么?</h2>\r\n<p>\r\n	FreeCMS遵守Apache License 2.0开源协议，并公开所有源码，您可以随意下载并传播源码，并可根据自己的需求进行二次开发，但<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>保留对FreeCMS的所有权。</p>\r\n<h2>\r\n	FreeCMS可以免费商用么?</h2>\r\n<p>\r\n	免费是FreeCMS的宗旨，您可以使用FreeCMS建设自己的个人站点，也可以应用于商业项目而无需商业授权。</p>','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',3,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('864e2a6a-1937-43c4-b02f-630463ea3c9b','Bug报告','','','','<h1>\r\n	Bug报告</h1>\r\n<p>\r\n	Bug 是期望之外的瑕疵，错误，缺陷，或<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的不完美之处。<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>希望知道<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>在使用中拥有哪些问题。</p>\r\n<p>\r\n	您可以发送标题如&quot;Bug报告:XXXXXX&quot;格式的邮件至freeteam@foxmail.com。</p>\r\n<p>\r\n	要使报告的信息有用，bug 报告需要尽可能详细。在提交报告或考虑报告 bug 时请根据如下指示说明：</p>\r\n<ul>\r\n	<li>\r\n		1.确保您在使用<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>最新版本。</li>\r\n	<li>\r\n		2.在描述问题时请包含尽可能多的相关细节。</li>\r\n	<li>\r\n		3.确定 bug 是可以重现的，即:当您重复同样操作时，问题会重复出现。请包含导致 bug 出现的操作信息。</li>\r\n	<li>\r\n		4.一个 bug 请提交一个 bug 报告；请勿在一个 bug 报告中包含众多问题。</li>\r\n	<li>\r\n		5.在提交bug报告前请检查报告内容，确保其中已经包含了所有想要表达的内容。</li>\r\n</ul>\r\n<p>\r\n	报告提交后，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将尽快响应您的bug报告。</p>\r\n<p>\r\n	感谢您抽时间帮助<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>改进<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的功能！</p>','b13493bc-fae7-4908-8c1f-9f4a18426222','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',2,NULL,'1','bug');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('92897509-f7ad-4169-9cbb-8635d152fb41','关于','栏目页面.html','',NULL,'<h1 id=\"What\">\r\n	什么是FreeTeam？</h1>\r\n<p>\r\n	<trans data-src=\"The Apache HTTP Server Project is a collaborative software development\" style=\"background: none transparent scroll repeat 0% 0%\">FreeTeam开发组织是一个协同软件开发组织，致力于建立一个强大的、商业级、功能丰富和</trans><trans data-src=\"freely-available source code implementation of an HTTP (Web) server. \">免费提供源代码的开发组织。</trans><trans data-src=\"The\">本</trans><trans data-src=\"project is jointly managed by a group of volunteers located around the\">组织是由一组遍布全国的志愿者，使用互联网和网络沟通，计划和开发相关项目的。</trans><trans data-src=\"This project is part of the Apache\"></trans><trans data-src=\"In addition, hundreds of users have contributed ideas,\"></trans><trans data-src=\"code, and documentation to the project. \"><trans data-src=\"In February of 1995, the most popular server software on the Web was the\" style=\"background: none transparent scroll repeat 0% 0%\"></trans></trans></p>\r\n<p>\r\n	<trans data-src=\"If you just want to send in an occasional suggestion/fix, then you can\">\r\n	<p>\r\n		<trans data-src=\"code, and documentation to the project. \">\r\n		<h1 id=\"Involved\">\r\n			<trans data-src=\"Getting Involved\">参与</trans></h1>\r\n		<p>\r\n			<trans data-src=\"If you just want to send in an occasional suggestion/fix, then you can\">如果您有任何关于FreeTeam开发组织或其开发项目的建议或问题，您可以直接发送邮件到<a href=\"mailto:freeteam@foxmail.com\">freeteam@foxmail.com</a><news:comp.infosystems.www.servers.ms-windows>。</news:comp.infosystems.www.servers.ms-windows></trans></p>\r\n		</trans></p>\r\n	</trans></p>','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',1,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('adc2c031-42a7-4555-af57-5c9937dbbfe9','讨论','','',NULL,'','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','http://code.google.com/p/freecms/issues/list','1',5,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('b13493bc-fae7-4908-8c1f-9f4a18426222','参与','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',5,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('c2ed4a9f-fc59-4cba-91c6-098b248021ab','捐赠','','',NULL,'<h1>\r\n	捐赠</h1>\r\n<p>\r\n	开源离不开大家的支持! 有大家的支持<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>会做的更好!</p>\r\n<p>\r\n	欢迎并感谢大家对<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>进行捐赠，大家可以进入<a href=\"https://me.alipay.com/freeteam\" rel=\"nofollow\">捐赠主页</a>进行捐赠。</p>','7c4171d2-d677-447e-a478-16a73d9c625f','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',1,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('c60bebab-cf84-4ba9-8c79-3dff5c2dc427','要点','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',1,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('d8aa15d1-710c-4931-8c3b-b0b2d3db3d56','贡献源码','','',NULL,'<h1>\r\n	贡献源码</h1>\r\n<p>\r\n	如果您在使用<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>时，感觉您的源码、功能模块、页面模板、标签、或建设建议很好，并想贡献出来，您可以发送标题如&quot;贡献源码:XXXXXX&quot;格式的邮件至freeteam@foxmail.com。</p>\r\n<p>\r\n	要使贡献的源码有用，贡献源码邮件需要尽可能详细。在提交邮件或考虑贡献源码时请根据如下指示说明：</p>\r\n<ul>\r\n	<li>\r\n		1.确保<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>最新版本没有您所贡献的源码。</li>\r\n	<li>\r\n		2.请详细描述您贡献的源码所完成的功能。</li>\r\n	<li>\r\n		3.在描述如何把源码集成到<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>时请包含尽可能多的相关细节。</li>\r\n	<li>\r\n		4.一个完整的源码包请提交一个贡献源码邮件；请勿在一个贡献源码邮件中包含众多源码包。</li>\r\n	<li>\r\n		5.在提交贡献源码邮件前请检查邮件内容，确保其中已经包含了所有想要表达的内容。</li>\r\n</ul>\r\n<p>\r\n	贡献源码邮件提交后，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将尽快响应您的贡献源码邮件。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	感谢您抽时间帮助<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>改进<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的功能！</p>','b13493bc-fae7-4908-8c1f-9f4a18426222','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',3,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('f2417969-1508-470e-862c-ae1adfcd04e7','下载','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',2,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('f9dda97c-a26c-40a3-8a13-12db9538c864','获得支持','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',4,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('fba30fa6-107e-41ec-a134-50855a847857','服务支持','','',NULL,'<h1>\r\n	服务支持</h1>\r\n<p>\r\n	首先<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>感谢您选择并使用<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将为您提供全方位的持续稳定的支持服务，确保项目的可持续性，为您提供信心保障，最大化的体现项目的价值。<br />\r\n	<br />\r\n	<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>提供两种服务支持方式，一种是免费支持，一种是赞助支持。</p>\r\n<h2>\r\n	免费支持</h2>\r\n<p>\r\n	免费支持面向所有用户，您可以通过以下方式获取免费支持:</p>\r\n<ul>\r\n	<li>\r\n		讨论支持：您可以直接在<a href=\"http://code.google.com/p/freecms/issues/list\" rel=\"nofollow\">讨论区</a>发布您遇到的问题或解答别人的问题，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将尽快处理您所提出的问题。</li>\r\n	<li>\r\n		产品升级：针对<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的新版本，提供终生免费升级并通过<a href=\"http://code.google.com/p/freecms/issues/list\" rel=\"nofollow\">讨论区</a>提供程序升级问题解答。</li>\r\n	<li>\r\n		BUG清除：清除<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>中出现的任何BUG。</li>\r\n	<li>\r\n		安全预警：当程序有重大安全隐患时，通过<a href=\"http://code.google.com/p/freecms/issues/list\" rel=\"nofollow\">讨论区</a>进行预警通知，并提供解决方案。</li>\r\n	<li>\r\n		帮助教程：使用<a href=\"http://code.google.com/p/freecms/wiki/Wiki\">Wiki</a>提供<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的教程、操作手册以及二次开发文档等相关帮助。</li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n<h2>\r\n	赞助支持</h2>\r\n<p>\r\n	赞助支持主要针对有特殊需求的用户，您需要赞助一定的费用才能得到以下相应的支持项目。</p>\r\n<h3>\r\n	基础支持</h3>\r\n<ul>\r\n	<li>\r\n		软件安装服务:500元/次。</li>\r\n	<li>\r\n		软件升级操作服务:500元/次。</li>\r\n</ul>\r\n<h3>\r\n	网站安全与服务器</h3>\r\n<ul>\r\n	<li>\r\n		服务器迁移:500元/次。</li>\r\n	<li>\r\n		系统故障诊断:300元/次。</li>\r\n	<li>\r\n		系统修复服务:300元/小时。</li>\r\n	<li>\r\n		服务器安全检测配置:800元/次。</li>\r\n	<li>\r\n		网站安全检测和设置:800元/次。</li>\r\n</ul>\r\n<h3>\r\n	培训与技术支持</h3>\r\n<ul>\r\n	<li>\r\n		软件远程培训服务:100元/小时。</li>\r\n	<li>\r\n		软件现场培训服务:600元/人天。</li>\r\n	<li>\r\n		软件上门培训服务:1000元/人天。</li>\r\n	<li>\r\n		QQ技术支持服务:2600元/年。</li>\r\n</ul>\r\n<h3>\r\n	项目应用支持</h3>\r\n<ul>\r\n	<li>\r\n		系统功能模板实现:100元/小时。</li>\r\n	<li>\r\n		模板错误诊断:100元/次。</li>\r\n	<li>\r\n		模板错误修正服务:150元/小时。</li>\r\n	<li>\r\n		模板局部修改:150元/小时。</li>\r\n	<li>\r\n		栏目架构调整:150元/小时。</li>\r\n</ul>\r\n<h3>\r\n	内容维护</h3>\r\n<ul>\r\n	<li>\r\n		信息发布:100元/小时。</li>\r\n	<li>\r\n		内容更新:100元/小时。</li>\r\n</ul>\r\n<h3>\r\n	定制服务</h3>\r\n<p>\r\n	定制服务是由<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>开发人员根据您的网站运营的实际功能需求，对<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>进行功能和模板定制开发的服务。鉴于不同站点有不同的实际具体功能需求，为了让更多的用户体验<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的强大易用功能，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>提供在系统基础上进行程序定制和模板定制，对于有定制需求的用户，欢迎联系定制。<br />\r\n	<br />\r\n	为了更好的服务用户，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>针对地理位置较近的用户提供现场开发服务，赞助费用为1000元/人天。</p>\r\n<h4>\r\n	定制流程</h4>\r\n<ul>\r\n	<li>\r\n		1.用户提出建站基本需求:用户向<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>提出程序或模板定制的基本需求，包括功能实现详细要求等，并提供详细的程序定制需求说明或者参考网站。</li>\r\n	<li>\r\n		2.项目建设方案及报价款:<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将根据用户提供的程序定制需求说明，反馈报价供用户参考。经双方交流与磋商，确定具体程序定制的内容及赞助费用。</li>\r\n	<li>\r\n		3.签订程序定制协议，用户赞助报价的50%:双方签订《程序定制协议》[可选] ，用户赞助报价的50%。相关技术人员与用户通过QQ、电子邮件、电话等方式进行交流。</li>\r\n	<li>\r\n		4.网站测试，用户上网验收:将测试网站功能文件上传至测试服务器，用户上网浏览并验收。验收项目包括：所定制的功能模块运行是否正常。验收合格后，用户签发《程序验收合格书》。</li>\r\n	<li>\r\n		5.用户赞助余款，网站建设过程结束:用户按照《程序定制协议》，支付剩余程序定制赞助费用。<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>在收到余款后，将相关定制程序文件递交给用户；或应用户要求将文件直接上传至客户服务器上。至此，程序定制过程全部结束。</li>\r\n</ul>','f9dda97c-a26c-40a3-8a13-12db9538c864','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',1,NULL,'1','');

/*Table structure for table `freecms_comment` */

DROP TABLE IF EXISTS `freecms_comment`;

CREATE TABLE `freecms_comment` (
  `id` varchar(50) NOT NULL,
  `siteid` varchar(50) default NULL,
  `memberid` varchar(50) default NULL,
  `membername` varchar(50) default NULL,
  `isAnonymous` char(1) default NULL,
  `objid` varchar(50) default NULL,
  `objtype` varchar(50) default NULL,
  `ip` varchar(50) default NULL,
  `addtime` datetime default NULL,
  `state` char(1) default NULL,
  `content` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论';

/*Data for the table `freecms_comment` */

/*Table structure for table `freecms_config` */

DROP TABLE IF EXISTS `freecms_config`;

CREATE TABLE `freecms_config` (
  `code` varchar(50) NOT NULL,
  `name` varchar(50) default NULL,
  `configValue` varchar(500) default NULL,
  `orderNum` int(11) default NULL,
  PRIMARY KEY  (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置';

/*Data for the table `freecms_config` */

insert  into `freecms_config`(`code`,`name`,`configValue`,`orderNum`) values ('mailAuth','邮件 要求身份验证(是/否)','是',5);
insert  into `freecms_config`(`code`,`name`,`configValue`,`orderNum`) values ('mailCharset','邮件 字符编码','UTF-8',9);
insert  into `freecms_config`(`code`,`name`,`configValue`,`orderNum`) values ('mailFrom','邮件 发信人邮件地址','test@qq.com',6);
insert  into `freecms_config`(`code`,`name`,`configValue`,`orderNum`) values ('mailPort','邮件 SMTP 端口','25',4);
insert  into `freecms_config`(`code`,`name`,`configValue`,`orderNum`) values ('mailPwd','邮件 密码','test',8);
insert  into `freecms_config`(`code`,`name`,`configValue`,`orderNum`) values ('mailServer','邮件 SMTP 服务器','smtp.qq.com',3);
insert  into `freecms_config`(`code`,`name`,`configValue`,`orderNum`) values ('mailType','互动信件类型(多个用,号分隔)','咨询,建议,投诉,指南,举报,其他',1);
insert  into `freecms_config`(`code`,`name`,`configValue`,`orderNum`) values ('mailUsername','邮件 用户名','test',7);
insert  into `freecms_config`(`code`,`name`,`configValue`,`orderNum`) values ('memberLimitName','会员禁用登录名(多个用,号分隔)','admin,freecms',2);

/*Table structure for table `freecms_creditlog` */

DROP TABLE IF EXISTS `freecms_creditlog`;

CREATE TABLE `freecms_creditlog` (
  `id` varchar(50) NOT NULL,
  `memberid` varchar(50) default NULL,
  `membername` varchar(50) default NULL,
  `creditruleid` varchar(50) default NULL,
  `type` int(11) default NULL,
  `credit` int(11) default NULL,
  `experience` int(11) default NULL,
  `credittime` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_creditlog_rule` (`creditruleid`),
  KEY `FK_creditlog_member` (`memberid`),
  CONSTRAINT `FK_creditlog_member` FOREIGN KEY (`memberid`) REFERENCES `freecms_member` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_creditlog_rule` FOREIGN KEY (`creditruleid`) REFERENCES `freecms_creditrule` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分记录';

/*Data for the table `freecms_creditlog` */

/*Table structure for table `freecms_creditrule` */

DROP TABLE IF EXISTS `freecms_creditrule`;

CREATE TABLE `freecms_creditrule` (
  `id` varchar(50) NOT NULL,
  `code` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `orderNum` int(11) default NULL,
  `rewardtype` int(11) default NULL,
  `cycletype` int(11) default NULL,
  `cycletime` int(11) default NULL,
  `rewardnum` int(11) default NULL,
  `credit` int(11) default NULL,
  `experience` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分规则';

/*Data for the table `freecms_creditrule` */

insert  into `freecms_creditrule`(`id`,`code`,`name`,`orderNum`,`rewardtype`,`cycletype`,`cycletime`,`rewardnum`,`credit`,`experience`) values ('1b6a14a8-c5b2-4f92-8d9a-ab3dd0f60ecf','login','登录',1,1,1,NULL,NULL,5,5);
insert  into `freecms_creditrule`(`id`,`code`,`name`,`orderNum`,`rewardtype`,`cycletype`,`cycletime`,`rewardnum`,`credit`,`experience`) values ('4216470b-ac74-4b81-a83c-5c550ae27e27','comment_del','删除评论',3,0,3,NULL,NULL,5,5);
insert  into `freecms_creditrule`(`id`,`code`,`name`,`orderNum`,`rewardtype`,`cycletype`,`cycletime`,`rewardnum`,`credit`,`experience`) values ('b0e11648-6320-426d-87a9-179bca82eee3','comment_pub','发表评论',2,1,3,NULL,NULL,5,5);

/*Table structure for table `freecms_func` */

DROP TABLE IF EXISTS `freecms_func`;

CREATE TABLE `freecms_func` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `isOk` char(1) NOT NULL,
  `orderNum` int(11) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `parId` varchar(36) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能';

/*Data for the table `freecms_func` */

insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('003c47c5-7041-4cfa-8631-82c00ab3fb35','菜单管理','1',101,'func.jsp','a5452f4f-1a1b-4980-90a3-4a60a38ba373');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('08cfd343-2803-403e-b952-f7d41199d8e1','快速添加','1',0,'cms/info_edit.do','cb42d736-3386-42b8-a9f7-62840c4ecefa');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('0af2a5d9-26e6-4b82-a07c-062a35b3a7e5','会员权限','1',8,'cms/memberauth_list.do','8acc3be4-a2f6-4fe8-903f-9fd5867f985a');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('0bec6b84-19be-4d99-bc44-ca1d8472148f','图片链接管理','1',4,'cms/link_list.do?link.type=2','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('12187d67-5ab9-4ae4-bbee-9a772cebd0de','用户管理','1',1,'user_list.do','15dfc8ac-bfda-40cc-abb1-f563c1a1d1d2');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('14a4e894-1a48-4145-b467-0fe0499e8758','会员组','1',9,'cms/membergroup_list.do','8acc3be4-a2f6-4fe8-903f-9fd5867f985a');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('15dfc8ac-bfda-40cc-abb1-f563c1a1d1d2','用户管理','1',100,'','a5452f4f-1a1b-4980-90a3-4a60a38ba373');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('18974989-cd85-48b2-8169-348bc3481ef8','文字链接分类','1',5,'cms/link_clazz.do?link.type=3','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('19eebfb0-16b5-40eb-a909-1bd37ef7d745','站点管理','1',0,'cms/site_site.do','a5452f4f-1a1b-4980-90a3-4a60a38ba373');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('2403873a-48fb-48ac-acd0-af4098df1a0a','添加用户','1',0,'userEdit.jsp','15dfc8ac-bfda-40cc-abb1-f563c1a1d1d2');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('26622672-9a10-4e4e-93a7-7fe50a9208b3','链接管理','1',5,'','64f2084d-3fe7-4345-85c6-4dc835c1b939');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('2b89c1fd-9e85-40d0-9ad8-9d401526d8fe','网上调查','1',5,'cms/question_list.do','64f2084d-3fe7-4345-85c6-4dc835c1b939');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('3dc03dc5-56ba-46d9-b8ab-78d19c04cd86','角色管理','1',99,'','a5452f4f-1a1b-4980-90a3-4a60a38ba373');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('3e344b36-736e-4afd-8216-beb4fa54d467','积分记录','1',12,'cms/creditlog_list.do','8acc3be4-a2f6-4fe8-903f-9fd5867f985a');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('425d0211-0196-4456-a24b-3e8d614dec8b','信息管理','1',1,'cms/info_info.do','cb42d736-3386-42b8-a9f7-62840c4ecefa');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('4331df96-2b8d-4dcf-9bdb-1015dfd0a759','图片链接分类','1',3,'cms/link_clazz.do?link.type=2','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('47b80631-bb6e-4abd-8e47-5b99bce8b3bd','操作日志','1',105,'operLog_list.do','a5452f4f-1a1b-4980-90a3-4a60a38ba373');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('5257f8fd-9da2-4e83-8538-b6ffca22e45a','模板管理','1',3,'cms/templet_list.do','64f2084d-3fe7-4345-85c6-4dc835c1b939');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('58fe298f-b448-40bb-a1c0-d81134efa4af','信息页静态化','1',3,'cms/html_info.do','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('5a47681c-63c3-47b1-8e1f-34d4dbba7d85','文字链接管理','1',6,'cms/link_list.do?link.type=3','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('5f3a8e01-4216-4982-b07b-ad367fe9ef96','栏目页静态化','1',2,'cms/html_channel.do','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('64f2084d-3fe7-4345-85c6-4dc835c1b939','站点','1',2,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('66ecf6f7-1911-4e7e-8089-3a01f44a6d12','单位管理','1',98,'unit.jsp','a5452f4f-1a1b-4980-90a3-4a60a38ba373');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('67025758-eb65-40b1-a59c-edee1b3ae938','下拉链接分类','1',1,'cms/link_clazz.do?link.type=1','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('67705234-603a-47c7-8f0d-8cdd349fd7c6','互动信件','1',6,'','64f2084d-3fe7-4345-85c6-4dc835c1b939');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('6c561fe7-2013-4ce5-bf9a-42874b07a99e','站点设置','1',0,'cms/site_config.do','64f2084d-3fe7-4345-85c6-4dc835c1b939');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('6f32a2b6-a552-4a91-a10c-2962af63eca7','添加角色','1',0,'role_edit.do','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('742470cc-eaf1-48c4-805c-44c9936a7622','部门信件','1',1,'cms/mail_list.do?mail.type=unit','67705234-603a-47c7-8f0d-8cdd349fd7c6');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('88749e6a-a8ec-47ef-aa4a-f7912d0ed12c','下拉链接管理','1',2,'cms/link_list.do?link.type=1','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('8acc3be4-a2f6-4fe8-903f-9fd5867f985a','会员','1',3,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('8afb6f01-ae46-447c-acfa-1a6e0964bbba','角色管理','1',1,'role_list.do','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('95088cf5-299d-495a-896e-b3eae1a404c0','积分规则','1',11,'cms/creditrule_list.do','8acc3be4-a2f6-4fe8-903f-9fd5867f985a');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('969d27f9-71f8-4cb8-a1bd-6343fe32bbb1','评论管理','1',13,'cms/comment_list.do','8acc3be4-a2f6-4fe8-903f-9fd5867f985a');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('a5452f4f-1a1b-4980-90a3-4a60a38ba373','系统','1',1,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('c0ac116b-2b2a-4a09-ba25-0c2fffc12b4d','栏目管理','1',1,'cms/channel_channel.do','64f2084d-3fe7-4345-85c6-4dc835c1b939');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('cb42d736-3386-42b8-a9f7-62840c4ecefa','信息管理','1',2,'','64f2084d-3fe7-4345-85c6-4dc835c1b939');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('df4647eb-8758-451c-bdcd-54c2d180c474','会员管理','1',10,'cms/member_list.do','8acc3be4-a2f6-4fe8-903f-9fd5867f985a');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('e01bb9aa-b122-41ac-b28c-e97993c2d250','其他信件','1',3,'cms/mail_list.do?mail.type=other','67705234-603a-47c7-8f0d-8cdd349fd7c6');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('e3066945-edb5-43ca-b29a-a0f96f98a50e','首页静态化','1',1,'cms/html_indexConfirm.do','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('e63b222f-3ccb-4e22-b8ab-7cd0dece9f06','静态化管理','1',4,'','64f2084d-3fe7-4345-85c6-4dc835c1b939');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('ea3034c4-5a98-4a8a-a175-7c43e42aa939','系统配置','1',102,'config_config.do','a5452f4f-1a1b-4980-90a3-4a60a38ba373');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('f0709c68-3af5-413b-8503-0f0bc2a3eb74','个人信件','1',2,'cms/mail_list.do?mail.type=user','67705234-603a-47c7-8f0d-8cdd349fd7c6');

/*Table structure for table `freecms_htmlquartz` */

DROP TABLE IF EXISTS `freecms_htmlquartz`;

CREATE TABLE `freecms_htmlquartz` (
  `id` varchar(50) NOT NULL,
  `siteid` varchar(50) default NULL,
  `channelid` varchar(50) default NULL,
  `type` char(1) default NULL,
  `exetimehour` int(11) default NULL,
  `exetimemin` int(11) default NULL,
  `intervaltype` char(1) default NULL,
  `intervalhour` int(11) default NULL,
  `intervalmin` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='静态化调度';

/*Data for the table `freecms_htmlquartz` */

insert  into `freecms_htmlquartz`(`id`,`siteid`,`channelid`,`type`,`exetimehour`,`exetimemin`,`intervaltype`,`intervalhour`,`intervalmin`) values ('8205e44d-5fdb-4543-a8d5-b95dc4d7b43c','7a4d22d6-762b-46e5-895b-d62da52bf9cb',NULL,'1',23,10,'1',0,10);

/*Table structure for table `freecms_info` */

DROP TABLE IF EXISTS `freecms_info`;

CREATE TABLE `freecms_info` (
  `id` varchar(50) NOT NULL,
  `site` varchar(50) default NULL,
  `channel` varchar(50) default NULL,
  `title` varchar(500) default NULL,
  `shortTitle` varchar(100) default NULL,
  `titleColor` varchar(10) default NULL,
  `titleBlod` varchar(1) default NULL,
  `source` varchar(50) default NULL,
  `author` varchar(50) default NULL,
  `description` varchar(1000) default NULL,
  `content` text,
  `tags` varchar(1000) default NULL,
  `img` varchar(500) default NULL,
  `url` varchar(500) default NULL,
  `attchs` varchar(1000) default NULL,
  `addtime` datetime default NULL,
  `templet` varchar(50) default NULL,
  `isTop` varchar(1) default NULL,
  `topEndTime` datetime default NULL,
  `clickNum` int(11) default NULL,
  `addUser` varchar(50) default NULL,
  `state` varchar(1) default NULL,
  `issign` varchar(1) default NULL,
  `video` varchar(500) default NULL,
  `iscomment` char(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_信息_栏目` (`channel`),
  CONSTRAINT `FK_信息_栏目` FOREIGN KEY (`channel`) REFERENCES `freecms_channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='信息';

/*Data for the table `freecms_info` */

insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`,`video`,`iscomment`) values ('74ef43c9-cc3b-4eea-bacf-2703f663bf2f','7a4d22d6-762b-46e5-895b-d62da52bf9cb','6555dd8b-7acc-4e57-a19a-cc70dd4f7135','欢迎大家使用FreeCMS','','000000','0','','','','<p>\r\n	欢迎大家使用FreeCMS!</p>','','/userfiles/images/admin/logo.png','','/userfiles/files/admin/log.rar;/userfiles/images/admin/1.png;','2012-12-05 21:18:29','','0',NULL,8,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,NULL,NULL,NULL);
insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`,`video`,`iscomment`) values ('75085629-29f2-4c87-a938-ce32f35d0c0f','7a4d22d6-762b-46e5-895b-d62da52bf9cb','6555dd8b-7acc-4e57-a19a-cc70dd4f7135','FreeCMS 1.2 发布','','000000','0','','','','<p>\r\n	Bug修复:<br />\r\n	1.菜单管理：删除操作按钮后不能直接进行删除菜单操作。<br />\r\n	2.删除单位时操作记录不显示单位名称问题。<br />\r\n	3.站点管理：改变所属站点增加改变为一级站点功能，上传非图片logo时虽然提示但仍上传成功问题。<br />\r\n	4.模板文件管理：点击查看/下载文件时路径不对问题。<br />\r\n	5.list类标签增加index返回值:channelList,infoAttchs,linkClass,link.<br />\r\n	6.部分浏览器提示信息出现乱码问题。<br />\r\n	7.启用、禁用用户时操作记录记录用户名问题。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	功能新增:<br />\r\n	1.站点和栏目增加静态化调度配置。<br />\r\n	2.信息增加签收、视频、评论功能。<br />\r\n	3.栏目页静态化增加可以设置只生成前几页功能。<br />\r\n	4.增加网上调查功能。<br />\r\n	5.增加互动信件功能。<br />\r\n	6.单位可以设置是否接收互动信件。<br />\r\n	7.用户可以设置是否接收互动信件。<br />\r\n	8.增加系统配置管理功能。<br />\r\n	9.增加ajaxLoad标签，通过ajax加载页面。<br />\r\n	10.增加模板示例库。<br />\r\n	11.增加infoSign标签，显示信息签收代码。<br />\r\n	12.增加mailList标签，提取信件列表。<br />\r\n	13.增加mailPage标签，分页提取信件列表。<br />\r\n	14.增加mailQuery标签，根据查询码查询信件处理结果。<br />\r\n	15.增加mailSave标签，信件保存处理。<br />\r\n	16.增加questionList标签，提取网上调查列表。<br />\r\n	17.增加questionPage标签，分页提取网上调查列表。<br />\r\n	17.增加questionOne标签，提取指定id的网上调查。<br />\r\n	18.增加config标签，提取系统配置。<br />\r\n	19.增加unitList标签，提取单位列表。<br />\r\n	20.增加userList标签，提取用户列表。<br />\r\n	21.增加video标签，播放视频。<br />\r\n	22.增加会员权限管理功能。<br />\r\n	22.增加会员组管理功能。<br />\r\n	23.增加会员管理功能。<br />\r\n	24.增加评论管理功能。<br />\r\n	25.增加积分规则管理功能。<br />\r\n	26.增加积分记录管理功能。<br />\r\n	27.增加commentPage标签，分页提取评论列表。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<br />\r\n	&nbsp;</p>','','','','','2013-02-21 19:37:42','','0',NULL,7,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,'0','','1');
insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`,`video`,`iscomment`) values ('93fa57df-3a03-4715-968d-bae6cb5a0742','7a4d22d6-762b-46e5-895b-d62da52bf9cb','6555dd8b-7acc-4e57-a19a-cc70dd4f7135','FreeCMS 1.0 发布','','000000','0','','','','<p>\r\n	FreeCMS 1.0 已发布，请到<a href=\"http://code.google.com/p/freecms/downloads/list\">http://code.google.com/p/freecms/downloads/list</a>下载。</p>','','/userfiles/images/admin/logo.png','','','2012-12-05 20:57:54','','0',NULL,3,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,NULL,NULL,NULL);

/*Table structure for table `freecms_info_sign` */

DROP TABLE IF EXISTS `freecms_info_sign`;

CREATE TABLE `freecms_info_sign` (
  `id` varchar(50) NOT NULL,
  `userid` varchar(50) default NULL,
  `infoid` varchar(50) default NULL,
  `signtime` datetime default NULL,
  `ip` varchar(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_19` (`infoid`),
  KEY `FK_Reference_20` (`userid`),
  CONSTRAINT `FK_Reference_19` FOREIGN KEY (`infoid`) REFERENCES `freecms_info` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Reference_20` FOREIGN KEY (`userid`) REFERENCES `freecms_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户签收表';

/*Data for the table `freecms_info_sign` */

/*Table structure for table `freecms_link` */

DROP TABLE IF EXISTS `freecms_link`;

CREATE TABLE `freecms_link` (
  `id` varchar(50) NOT NULL,
  `parid` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `url` varchar(500) default NULL,
  `isok` varchar(1) default NULL,
  `ordernum` int(11) default NULL,
  `site` varchar(50) default NULL,
  `type` varchar(1) default NULL,
  `img` varchar(500) default NULL,
  `pagemark` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_12` (`site`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`site`) REFERENCES `freecms_site` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='链接';

/*Data for the table `freecms_link` */

/*Table structure for table `freecms_mail` */

DROP TABLE IF EXISTS `freecms_mail`;

CREATE TABLE `freecms_mail` (
  `id` varchar(50) NOT NULL,
  `unitid` varchar(50) default NULL,
  `userid` varchar(50) default NULL,
  `mailtype` varchar(50) default NULL,
  `title` varchar(100) default NULL,
  `writer` varchar(20) default NULL,
  `tel` varchar(50) default NULL,
  `address` varchar(500) default NULL,
  `email` varchar(100) default NULL,
  `isopen` char(1) default NULL,
  `content` varchar(2000) default NULL,
  `querycode` varchar(20) default NULL,
  `addtime` datetime default NULL,
  `ip` varchar(20) default NULL,
  `state` char(1) default NULL,
  `recontent` varchar(2000) default NULL,
  `retime` datetime default NULL,
  `proflow` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='互动信件';

/*Data for the table `freecms_mail` */

/*Table structure for table `freecms_member` */

DROP TABLE IF EXISTS `freecms_member`;

CREATE TABLE `freecms_member` (
  `id` varchar(50) NOT NULL,
  `grouptype` int(11) default NULL,
  `groupid` varchar(50) default NULL,
  `loginname` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `sex` char(1) default NULL,
  `birthday` datetime default NULL,
  `tel` varchar(50) default NULL,
  `mobilephone` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `isOk` char(1) default NULL,
  `lastLoginTime` datetime default NULL,
  `addtime` datetime default NULL,
  `intro` varchar(500) default NULL,
  `credit` int(11) default NULL,
  `experience` int(11) default NULL,
  `img` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `freecms_member` */

insert  into `freecms_member`(`id`,`grouptype`,`groupid`,`loginname`,`name`,`pwd`,`sex`,`birthday`,`tel`,`mobilephone`,`email`,`isOk`,`lastLoginTime`,`addtime`,`intro`,`credit`,`experience`,`img`) values ('e6ce1c93-9a00-4d44-9785-631468fa5aa9',0,'2751da4b-4a05-40ac-b7e2-eec21c33aa4b','freeteam','freeteam','e10adc3949ba59abbe56e057f20f883e','1',NULL,'','','freeteam@foxmail.com','1','2013-02-21 20:25:58','2013-02-04 17:20:05','',0,0,NULL);

/*Table structure for table `freecms_memberauth` */

DROP TABLE IF EXISTS `freecms_memberauth`;

CREATE TABLE `freecms_memberauth` (
  `id` varchar(50) NOT NULL,
  `code` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `ordernum` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员权限';

/*Data for the table `freecms_memberauth` */

insert  into `freecms_memberauth`(`id`,`code`,`name`,`ordernum`) values ('04111db9-e3cc-4810-92ee-0a6c5553a9b7','commentPub','发表评论',NULL);

/*Table structure for table `freecms_membergroup` */

DROP TABLE IF EXISTS `freecms_membergroup`;

CREATE TABLE `freecms_membergroup` (
  `id` varchar(50) NOT NULL,
  `type` int(11) default NULL,
  `name` varchar(50) default NULL,
  `orderNum` int(11) default NULL,
  `beginExperience` int(11) default NULL,
  `img` varchar(500) default NULL,
  `color` varchar(10) default NULL,
  `maxAttchSize` int(11) default NULL,
  `maxFriendNum` int(11) default NULL,
  `commentNeedCheck` int(11) default NULL,
  `commentNeedCaptcha` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员组';

/*Data for the table `freecms_membergroup` */

insert  into `freecms_membergroup`(`id`,`type`,`name`,`orderNum`,`beginExperience`,`img`,`color`,`maxAttchSize`,`maxFriendNum`,`commentNeedCheck`,`commentNeedCaptcha`) values ('2751da4b-4a05-40ac-b7e2-eec21c33aa4b',0,'普通会员',NULL,0,NULL,'#000000',NULL,NULL,1,1);
insert  into `freecms_membergroup`(`id`,`type`,`name`,`orderNum`,`beginExperience`,`img`,`color`,`maxAttchSize`,`maxFriendNum`,`commentNeedCheck`,`commentNeedCaptcha`) values ('7604f200-9a32-4b5b-ad5f-b51e3cbdd3c0',0,'中级会员',NULL,100,NULL,'#000000',NULL,NULL,1,1);
insert  into `freecms_membergroup`(`id`,`type`,`name`,`orderNum`,`beginExperience`,`img`,`color`,`maxAttchSize`,`maxFriendNum`,`commentNeedCheck`,`commentNeedCaptcha`) values ('e14fa93d-e07e-4599-8058-2c1893affd8d',1,'管理员',NULL,NULL,NULL,'#000000',NULL,NULL,1,1);
insert  into `freecms_membergroup`(`id`,`type`,`name`,`orderNum`,`beginExperience`,`img`,`color`,`maxAttchSize`,`maxFriendNum`,`commentNeedCheck`,`commentNeedCaptcha`) values ('f1c5ebac-c948-4424-9b06-feb5fc5a311a',0,'高级会员',NULL,1000,NULL,'#000000',NULL,NULL,1,NULL);

/*Table structure for table `freecms_membergroup_auth` */

DROP TABLE IF EXISTS `freecms_membergroup_auth`;

CREATE TABLE `freecms_membergroup_auth` (
  `id` varchar(50) NOT NULL,
  `groupid` varchar(50) default NULL,
  `authid` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_23` (`authid`),
  KEY `FK_Reference_24` (`groupid`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`authid`) REFERENCES `freecms_memberauth` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Reference_24` FOREIGN KEY (`groupid`) REFERENCES `freecms_membergroup` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员组权限';

/*Data for the table `freecms_membergroup_auth` */

insert  into `freecms_membergroup_auth`(`id`,`groupid`,`authid`) values ('48e3b9ed-1071-416c-9848-8f11749a0256','7604f200-9a32-4b5b-ad5f-b51e3cbdd3c0','04111db9-e3cc-4810-92ee-0a6c5553a9b7');
insert  into `freecms_membergroup_auth`(`id`,`groupid`,`authid`) values ('60d695a6-adbb-4de7-849d-942440cbfa0a','e14fa93d-e07e-4599-8058-2c1893affd8d','04111db9-e3cc-4810-92ee-0a6c5553a9b7');
insert  into `freecms_membergroup_auth`(`id`,`groupid`,`authid`) values ('8fe2d904-bf86-49af-a17c-372bb81f3faa','f1c5ebac-c948-4424-9b06-feb5fc5a311a','04111db9-e3cc-4810-92ee-0a6c5553a9b7');
insert  into `freecms_membergroup_auth`(`id`,`groupid`,`authid`) values ('cb581140-030d-46a5-92a0-28482c67814e','2751da4b-4a05-40ac-b7e2-eec21c33aa4b','04111db9-e3cc-4810-92ee-0a6c5553a9b7');

/*Table structure for table `freecms_operbutton` */

DROP TABLE IF EXISTS `freecms_operbutton`;

CREATE TABLE `freecms_operbutton` (
  `id` varchar(36) NOT NULL default 'newid()',
  `func` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(1000) NOT NULL,
  `isOk` char(1) NOT NULL,
  `orderNum` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_操作按钮_功能` (`func`),
  CONSTRAINT `FK_操作按钮_功能` FOREIGN KEY (`func`) REFERENCES `freecms_func` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作按钮';

/*Data for the table `freecms_operbutton` */

insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('01587af4-0fd3-41e3-9dcb-8deab4ee35cf','95088cf5-299d-495a-896e-b3eae1a404c0','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('02b90aa0-c2e0-4a63-bbe5-04838bd2d847','5257f8fd-9da2-4e83-8538-b6ffca22e45a','编 辑','edit()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('031926ef-2738-40d6-9ef9-880199099955','df4647eb-8758-451c-bdcd-54c2d180c474','启 用','isok(\'1\')','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('05393847-a0d1-407d-97f5-8f8a4225e863','e01bb9aa-b122-41ac-b28c-e97993c2d250','转 交','forward()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('0b547a0a-c5b9-4186-920e-507d0e4268d4','425d0211-0196-4456-a24b-3e8d614dec8b','编 辑','edit()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('0d262669-48eb-4951-84cc-356765b771d4','df4647eb-8758-451c-bdcd-54c2d180c474','禁 用','isok(\'0\')','1',4);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('0db25404-44ac-429b-8ab7-66bd1bbc176a','5f3a8e01-4216-4982-b07b-ad367fe9ef96','生成所选栏目页','createChannel()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('10e8612b-af7b-437d-b8da-1c1a550bdce5','58fe298f-b448-40bb-a1c0-d81134efa4af','生成信息页面','createHtml()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('137705c8-8e68-410c-a61d-d13e0c01af6b','4331df96-2b8d-4dcf-9bdb-1015dfd0a759','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('15a50d4c-4866-4533-93a8-a19887d230d1','6c561fe7-2013-4ce5-bf9a-42874b07a99e','保 存','save()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('161b2215-d862-433c-aff2-3d99bc9236e0','19eebfb0-16b5-40eb-a909-1bd37ef7d745','编辑','edit()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('17a4ab4a-3c1c-4a8e-b7f7-d41c3e49a00b','f0709c68-3af5-413b-8503-0f0bc2a3eb74','转 交','forward()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('1a5ec49d-571b-4e42-a9da-2863c4704e94','66ecf6f7-1911-4e7e-8089-3a01f44a6d12','保存','save()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('21ca6c9c-c5dc-47ab-9d74-dfd6fca9e2c3','67025758-eb65-40b1-a59c-edee1b3ae938','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('22c02db3-24e3-46bc-8dcc-f7248207c3ad','0af2a5d9-26e6-4b82-a07c-062a35b3a7e5','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('22c09714-f443-456b-8ad3-992d1f02d9dc','19eebfb0-16b5-40eb-a909-1bd37ef7d745','改变所属站点','parButton()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('238aa44d-d862-44f3-969d-d2abba6225ff','df4647eb-8758-451c-bdcd-54c2d180c474','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('275224d4-00d0-43e8-a9e8-379fd24429c9','2403873a-48fb-48ac-acd0-af4098df1a0a','保存','WebForm_OnSubmit()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('2aca3b79-6f94-473a-bfa8-420d92f9586b','66ecf6f7-1911-4e7e-8089-3a01f44a6d12','删除','del()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('2b9262d4-5b64-42c5-b951-78190143c8e2','df4647eb-8758-451c-bdcd-54c2d180c474','删 除','del()','1',5);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('2db278fd-422f-44df-9072-2dca297c1b47','4331df96-2b8d-4dcf-9bdb-1015dfd0a759','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('307bca7a-ec7f-4bb3-8c8c-b8a072390494','67025758-eb65-40b1-a59c-edee1b3ae938','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('310108b1-a5dc-434d-b5de-d5f0064c004a','ea3034c4-5a98-4a8a-a175-7c43e42aa939','保 存','save()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('3221edae-8f1e-4101-8ebe-5742dcc0edc1','18974989-cd85-48b2-8169-348bc3481ef8','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('3561a44f-a0c9-491e-9300-9ffe59c3fca7','5257f8fd-9da2-4e83-8538-b6ffca22e45a','文件管理','fileManage()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('3af3a17a-4267-43d0-ad08-8391a82a698e','2b89c1fd-9e85-40d0-9ad8-9d401526d8fe','设置选项','answer()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('3c06e1ec-717d-4c2a-8340-47bbd2b3ff4f','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86','授 权','auth()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('3f167129-3d4d-4c92-8a91-5d1d5ed799d1','14a4e894-1a48-4145-b467-0fe0499e8758','删 除','del()','1',4);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('4090990b-9e87-4a0b-b2fa-9354d9c3a46a','12187d67-5ab9-4ae4-bbee-9a772cebd0de','编 辑','edit()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('427b987d-b3c2-4e17-bb09-f4a6faf248bb','5a47681c-63c3-47b1-8e1f-34d4dbba7d85','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('44e33169-b7b9-4995-a8f1-291b69286bcf','5a47681c-63c3-47b1-8e1f-34d4dbba7d85','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('464b41df-f81e-4e54-b28d-436e9092eda2','4331df96-2b8d-4dcf-9bdb-1015dfd0a759','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('4de14364-517b-4c41-a60f-318ec98296a0','6f32a2b6-a552-4a91-a10c-2962af63eca7','保存','WebForm_OnSubmit()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('4e86fdcb-4240-4bd7-96f7-1921671bf650','19eebfb0-16b5-40eb-a909-1bd37ef7d745','添加下级站点','addSon()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('4ec7e50a-a272-4a12-8f69-a36366595397','0bec6b84-19be-4d99-bc44-ca1d8472148f','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('52fb7676-6ff5-41e7-bb7a-bff8c177f30f','969d27f9-71f8-4cb8-a1bd-6343fe32bbb1','审 核','state()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('56227812-981f-488f-90b1-92eded41aa54','5f3a8e01-4216-4982-b07b-ad367fe9ef96','生成此站点所有栏目页','createAll()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('562dd385-6990-4d80-a4ee-6937ab5580c6','95088cf5-299d-495a-896e-b3eae1a404c0','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('597ad917-2681-444e-b92b-b5971c94aca2','12187d67-5ab9-4ae4-bbee-9a772cebd0de','删 除','del()','1',5);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('59a6b3e9-eafc-47cc-825c-eda5ef46a816','12187d67-5ab9-4ae4-bbee-9a772cebd0de','重置密码','resetPwd()','1',4);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('5a0b8732-af98-4270-acee-b5456898ff46','66ecf6f7-1911-4e7e-8089-3a01f44a6d12','添加下级单位','addSon()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('5de475b4-6585-498b-93d7-9cd5f8d14f98','14a4e894-1a48-4145-b467-0fe0499e8758','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('5e180d27-33ff-4dde-92ec-ee732447e114','e01bb9aa-b122-41ac-b28c-e97993c2d250','办 理','pro()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('67982f56-1b92-4e04-ae78-128a8853edb8','425d0211-0196-4456-a24b-3e8d614dec8b','添 加','add()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('6866fac3-70dd-4895-b4bb-ea9a50c465dd','66ecf6f7-1911-4e7e-8089-3a01f44a6d12','改变所属单位','parButton()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('6e1fa81d-8a23-4a29-8ced-095d79e914b2','2b89c1fd-9e85-40d0-9ad8-9d401526d8fe','删 除','del()','1',4);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('6f6ebd83-cace-4cb9-9b64-4fdbe60741ee','8afb6f01-ae46-447c-acfa-1a6e0964bbba','编 辑','edit()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('70206d34-e4da-47ae-afd9-eb9985dba306','2b89c1fd-9e85-40d0-9ad8-9d401526d8fe','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('754fd2a6-6094-4334-b457-e0107a0506bf','5257f8fd-9da2-4e83-8538-b6ffca22e45a','删 除','del()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('768963aa-aa71-444a-a013-a06a31fcad2c','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('77b23596-654b-4a54-993e-8e678e51cf74','66ecf6f7-1911-4e7e-8089-3a01f44a6d12','添加一级单位','addOne()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('77e74e50-ed23-43a4-8afa-029aef42f065','0bec6b84-19be-4d99-bc44-ca1d8472148f','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('7882b7f4-cb5b-4a18-b1f6-037cbf815661','5257f8fd-9da2-4e83-8538-b6ffca22e45a','添 加','add()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('791f635b-6f69-43d7-9e2f-4a710daf3210','f0709c68-3af5-413b-8503-0f0bc2a3eb74','办 理','pro()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('7d203eda-94be-4d56-8171-97d0b2ec28d0','df4647eb-8758-451c-bdcd-54c2d180c474','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('80f3c1df-4df6-4c4c-8fd8-20a415536a2a','6c561fe7-2013-4ce5-bf9a-42874b07a99e','预览站点','preview()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('85ca4973-0e3c-4a14-be16-290850aa760c','0bec6b84-19be-4d99-bc44-ca1d8472148f','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('8ce8c4c5-da00-49c6-9575-54851695f3ad','14a4e894-1a48-4145-b467-0fe0499e8758','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('95872bc9-b7a3-43d7-b72c-8e20e5d43874','19eebfb0-16b5-40eb-a909-1bd37ef7d745','添加一级站点','addOne()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('95c7f91f-eaff-4ceb-b88c-baf1bcb5ea39','003c47c5-7041-4cfa-8631-82c00ab3fb35','保存','save()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('9a533db1-728f-45ce-882f-a75b5a5d9332','8afb6f01-ae46-447c-acfa-1a6e0964bbba','站点授权','siteAuth()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('9b06c3d6-0198-4b6e-a2bb-44397fbdd9dd','742470cc-eaf1-48c4-805c-44c9936a7622','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('9d780208-d3d6-4dd9-99d5-4dfbc5870128','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('9efc12ca-5991-43fd-ab74-435eb38fcfe6','95088cf5-299d-495a-896e-b3eae1a404c0','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('a1503362-5cc4-46a0-bfe2-a57e9c1479e4','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86','编 辑','edit()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('adef49b9-1e4f-410b-bc35-e9611a255356','12187d67-5ab9-4ae4-bbee-9a772cebd0de','授 权','auth()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('af01be01-45a6-4bf0-aafb-3415a86e5379','742470cc-eaf1-48c4-805c-44c9936a7622','转 交','forward()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('b3627085-294d-4e71-ba74-6a98e6525530','003c47c5-7041-4cfa-8631-82c00ab3fb35','管理操作按钮','operButton()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('bae98298-d8c8-412f-bd0a-ce69225c2f96','e01bb9aa-b122-41ac-b28c-e97993c2d250','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('beb25f53-7325-49b9-ab95-8abeff63448c','19eebfb0-16b5-40eb-a909-1bd37ef7d745','删除','del()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('c3ce9418-9dcc-4578-90b2-3f6ab08f61a7','18974989-cd85-48b2-8169-348bc3481ef8','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('c3f6186b-ef24-4a51-ab83-b7162d468125','2b89c1fd-9e85-40d0-9ad8-9d401526d8fe','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('ca0d70ff-0509-4d9b-b224-f0428934825b','003c47c5-7041-4cfa-8631-82c00ab3fb35','删除','del()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('cb52abdd-9a80-46d0-9115-f4c7cdf0c8f4','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('cdcd83fe-3cc2-4bbb-bb7e-e279c1780a77','14a4e894-1a48-4145-b467-0fe0499e8758','授 权','auth()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('cef54353-09d1-4ff6-bedd-370ab799913c','18974989-cd85-48b2-8169-348bc3481ef8','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('d46540d4-03fb-4de8-a502-3cbe9e72e9bd','67025758-eb65-40b1-a59c-edee1b3ae938','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('d6001817-3246-4d7b-a86e-49d771fdb082','12187d67-5ab9-4ae4-bbee-9a772cebd0de','禁 用','state(\'0\')','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('d6d1f29e-99a2-4621-b89c-b6f8ad2a4d52','425d0211-0196-4456-a24b-3e8d614dec8b','删 除','del()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('db1df28e-ddf2-45b6-9a8c-c0f76d50a4ac','003c47c5-7041-4cfa-8631-82c00ab3fb35','添加一级菜单','addOne()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('dd6018a7-1757-44e6-823d-b782c6cf94e3','969d27f9-71f8-4cb8-a1bd-6343fe32bbb1','删 除','del()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('dfc3a95f-db39-42b8-91b9-2682aa32c0ea','742470cc-eaf1-48c4-805c-44c9936a7622','办 理','pro()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('e234bf55-ecff-4689-b90e-f8f9f58f1c9f','0af2a5d9-26e6-4b82-a07c-062a35b3a7e5','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('e6636e5a-f71f-433e-9e42-7dd3d8babb31','f0709c68-3af5-413b-8503-0f0bc2a3eb74','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('e919a9bf-2a08-4c66-9924-c7207fe04bae','12187d67-5ab9-4ae4-bbee-9a772cebd0de','启 用','state(\'1\')','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('eda69cc3-77c0-4ba4-8dfd-57da1bc5ce97','8afb6f01-ae46-447c-acfa-1a6e0964bbba','授 权','auth()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('f0966fd2-e63f-44a4-ae75-7e006592e33a','5a47681c-63c3-47b1-8e1f-34d4dbba7d85','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('f802308a-b962-4835-937e-3f46caa88c18','003c47c5-7041-4cfa-8631-82c00ab3fb35','改变所属菜单','parButton()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('f93e7a6a-3365-4166-aaf1-65e4d9c5f9e5','8afb6f01-ae46-447c-acfa-1a6e0964bbba','删 除','del()','1',6);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('f9df095f-5d08-426a-adde-442db13672eb','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86','删 除','del()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('fcff283e-2dcc-4735-afb7-ee0375d32a9d','0af2a5d9-26e6-4b82-a07c-062a35b3a7e5','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('fe923f0e-62ac-4a00-ba51-6a27f37ddc60','003c47c5-7041-4cfa-8631-82c00ab3fb35','添加下级菜单','addSon()','1',0);

/*Table structure for table `freecms_operlogs` */

DROP TABLE IF EXISTS `freecms_operlogs`;

CREATE TABLE `freecms_operlogs` (
  `id` varchar(36) NOT NULL default 'newid()',
  `loginName` varchar(100) NOT NULL,
  `operTime` datetime NOT NULL,
  `content` varchar(5000) NOT NULL,
  `ip` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志';

/*Data for the table `freecms_operlogs` */

/*Table structure for table `freecms_question` */

DROP TABLE IF EXISTS `freecms_question`;

CREATE TABLE `freecms_question` (
  `id` varchar(50) NOT NULL,
  `name` varchar(500) default NULL,
  `selecttype` char(1) default NULL,
  `isok` char(1) default NULL,
  `siteid` varchar(50) default NULL,
  `adduser` varchar(50) default NULL,
  `addtime` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_site_question` (`siteid`),
  CONSTRAINT `FK_site_question` FOREIGN KEY (`siteid`) REFERENCES `freecms_site` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网上调查';

/*Data for the table `freecms_question` */

/*Table structure for table `freecms_role_channel` */

DROP TABLE IF EXISTS `freecms_role_channel`;

CREATE TABLE `freecms_role_channel` (
  `id` varchar(50) NOT NULL,
  `roleid` varchar(50) default NULL,
  `channelid` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_17` (`roleid`),
  KEY `FK_Reference_18` (`channelid`),
  CONSTRAINT `FK_Reference_17` FOREIGN KEY (`roleid`) REFERENCES `freecms_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Reference_18` FOREIGN KEY (`channelid`) REFERENCES `freecms_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色_栏目';

/*Data for the table `freecms_role_channel` */

/*Table structure for table `freecms_role_func` */

DROP TABLE IF EXISTS `freecms_role_func`;

CREATE TABLE `freecms_role_func` (
  `id` varchar(36) NOT NULL default 'newid()',
  `roleId` varchar(36) NOT NULL,
  `funcId` varchar(36) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_角色_功能__功能` (`funcId`),
  KEY `FK_角色_功能__角色` (`roleId`),
  CONSTRAINT `FK_角色_功能__角色` FOREIGN KEY (`roleId`) REFERENCES `freecms_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_角色_功能__功能` FOREIGN KEY (`funcId`) REFERENCES `freecms_func` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色_功能';

/*Data for the table `freecms_role_func` */

insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('011d8fd6-fd0c-4207-a6e0-648f06cf48d9','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','2b89c1fd-9e85-40d0-9ad8-9d401526d8fe');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('058bce5a-cd3b-4b73-bb5f-6eeef36fb326','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','95088cf5-299d-495a-896e-b3eae1a404c0');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('0ca42f48-c62b-4d3b-8dab-1343519051b8','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','47b80631-bb6e-4abd-8e47-5b99bce8b3bd');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('11351937-f2e3-4f10-9b9b-2cdc1babbbd7','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','5f3a8e01-4216-4982-b07b-ad367fe9ef96');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('150d09ee-c23a-46d2-8aaf-0b9c1bee4e2f','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','64f2084d-3fe7-4345-85c6-4dc835c1b939');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('1b7434e5-2f7e-4b77-bb0e-016c211d47e7','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','df4647eb-8758-451c-bdcd-54c2d180c474');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('1e9c224b-a4fe-465e-972f-724c5651807f','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','425d0211-0196-4456-a24b-3e8d614dec8b');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('210ba1a3-7a2e-4f86-b419-ec20c97d0a54','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','0bec6b84-19be-4d99-bc44-ca1d8472148f');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('213b1ac5-116d-4166-9c32-9facd4b1a98b','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','cb42d736-3386-42b8-a9f7-62840c4ecefa');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('2297cae4-a395-4cab-9af1-1f78d459a523','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','742470cc-eaf1-48c4-805c-44c9936a7622');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('263bc6bd-f274-4f1b-9191-b3b8d0c95152','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','67705234-603a-47c7-8f0d-8cdd349fd7c6');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('2b334331-7a66-4b5c-bd12-ac98109eb8e1','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','67025758-eb65-40b1-a59c-edee1b3ae938');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('2ff19fe8-b5c7-42a3-ad35-02f5caf187e2','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','5257f8fd-9da2-4e83-8538-b6ffca22e45a');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('3445c49f-d17a-43c4-a8f2-e56c35794aca','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','a5452f4f-1a1b-4980-90a3-4a60a38ba373');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('37f10813-6e90-42a4-b2bc-32727fc8302b','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','969d27f9-71f8-4cb8-a1bd-6343fe32bbb1');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('393cbffc-2d21-4203-8f27-ac8a40411932','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','66ecf6f7-1911-4e7e-8089-3a01f44a6d12');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('438df26e-94ee-454d-acc0-fd56cddb0bf9','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','cb42d736-3386-42b8-a9f7-62840c4ecefa');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('4676138f-1a2e-43b1-a8d4-d8fdb6afa878','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','19eebfb0-16b5-40eb-a909-1bd37ef7d745');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('4cd0268a-2afd-4138-8415-78e36463b92b','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('4d8f5c3f-2171-4ba8-8183-478edd4749c0','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('4dd72e33-2afd-40c5-8c5c-2b6cebb8d067','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','003c47c5-7041-4cfa-8631-82c00ab3fb35');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('56be2722-f688-4f39-9b08-41b943183b3b','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','0af2a5d9-26e6-4b82-a07c-062a35b3a7e5');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('5b4fa9b1-3dac-4547-8169-76f450e9e85a','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','5a47681c-63c3-47b1-8e1f-34d4dbba7d85');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('5b580be5-4552-495c-b503-49f326e55b68','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','08cfd343-2803-403e-b952-f7d41199d8e1');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('5ef90f9d-8cf3-42a8-a6eb-0091f3b52d54','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','ea3034c4-5a98-4a8a-a175-7c43e42aa939');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('60300c12-a38e-4968-8848-35e4a8c758b4','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','47b80631-bb6e-4abd-8e47-5b99bce8b3bd');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('60a5e528-31bb-4b2d-9047-efcf4b5c9b0e','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('6100e3ba-4e2e-47e7-8f64-d2b2db0335a9','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','18974989-cd85-48b2-8169-348bc3481ef8');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('63d716ed-a17f-4144-ba14-1475972dcf8c','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','742470cc-eaf1-48c4-805c-44c9936a7622');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('64241dc0-fda4-4f58-8c17-75b0ab48f2db','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','e01bb9aa-b122-41ac-b28c-e97993c2d250');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('7328120e-7241-44c6-a852-54267155e187','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','18974989-cd85-48b2-8169-348bc3481ef8');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('738d4447-b9c7-43bc-a2e6-6ffcdf4d1ff1','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','c0ac116b-2b2a-4a09-ba25-0c2fffc12b4d');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('813b6de1-8d96-4a0e-be6b-89348a36f05c','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','08cfd343-2803-403e-b952-f7d41199d8e1');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('8aa8f12b-de3b-412d-89c4-c8dd94118b77','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('8ffc46e4-14fb-4ba9-887e-fb372e4caaec','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','0bec6b84-19be-4d99-bc44-ca1d8472148f');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('92ad4f3a-ef23-4521-aad4-39dab6f4efd4','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','6c561fe7-2013-4ce5-bf9a-42874b07a99e');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('a2b3a078-d673-4752-ad0f-4c3bc9d18f37','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','58fe298f-b448-40bb-a1c0-d81134efa4af');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('a73eb267-54d8-4b61-b35f-0f2d97947971','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','14a4e894-1a48-4145-b467-0fe0499e8758');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('ac8e469d-07c1-42b2-8a88-f5a256f9f98e','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','e3066945-edb5-43ca-b29a-a0f96f98a50e');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('b2044d86-d02c-4342-945b-7ff6ee574b54','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('b25fc673-7ff0-4c34-af9b-efcdd683a2d4','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','12187d67-5ab9-4ae4-bbee-9a772cebd0de');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('b32ef6ec-c490-4388-8da0-391145a8e55a','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','425d0211-0196-4456-a24b-3e8d614dec8b');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('b39566ed-77e9-4cbf-89b5-4762d7122be3','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','f0709c68-3af5-413b-8503-0f0bc2a3eb74');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('bc7dfd13-29db-4dfc-9abc-0dc82f3ad7db','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','5257f8fd-9da2-4e83-8538-b6ffca22e45a');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('bed880b3-ab93-4d3a-9fed-0ce9214ff2d6','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','4331df96-2b8d-4dcf-9bdb-1015dfd0a759');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('bf9182d6-16ec-4d79-952d-8867a23a887a','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('c3e86733-7020-41bc-b888-58b1b6dba341','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','2403873a-48fb-48ac-acd0-af4098df1a0a');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('c940bb28-6519-4678-aad0-ac3b38be9df3','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','f0709c68-3af5-413b-8503-0f0bc2a3eb74');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('cd57e2f1-c307-414f-a13c-1a550e3a8cc8','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','a5452f4f-1a1b-4980-90a3-4a60a38ba373');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('cdfa9c7a-46da-45c3-bbaf-50315b9a59fd','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','5a47681c-63c3-47b1-8e1f-34d4dbba7d85');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('cedd82fc-9a02-460a-904d-03683c53fed5','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('cf58732e-cb40-4b9a-a78a-afacacf9ebfe','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','3e344b36-736e-4afd-8216-beb4fa54d467');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('d012680a-88b1-40b0-99a4-aa51dc11d7c8','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','4331df96-2b8d-4dcf-9bdb-1015dfd0a759');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('d16e529d-1691-4ed6-a8c7-d24a513cef70','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','15dfc8ac-bfda-40cc-abb1-f563c1a1d1d2');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('d3bde903-f60a-43f4-96dc-b2be8d37d0f4','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','e3066945-edb5-43ca-b29a-a0f96f98a50e');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('d9e664a8-03d8-40c3-8154-a97fb3a67615','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','64f2084d-3fe7-4345-85c6-4dc835c1b939');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('dd298cc2-70ef-4b4b-9306-44dd16595050','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','8afb6f01-ae46-447c-acfa-1a6e0964bbba');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('df926af7-bc89-4424-bf20-0f5a8d55846a','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','5f3a8e01-4216-4982-b07b-ad367fe9ef96');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('e0907746-36d5-4577-8453-8282d05cd516','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','8acc3be4-a2f6-4fe8-903f-9fd5867f985a');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('e21dbb10-38b6-4f1b-87f9-c7e4605ceb44','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','e01bb9aa-b122-41ac-b28c-e97993c2d250');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('e28496d1-77ca-4f87-8573-b94c7e8c2284','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','67025758-eb65-40b1-a59c-edee1b3ae938');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('e3c1df82-85f2-4f5a-8469-bd994a3ab1bf','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','c0ac116b-2b2a-4a09-ba25-0c2fffc12b4d');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('e49be6ae-7121-4a6e-9eb0-d639feb87bc5','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','6c561fe7-2013-4ce5-bf9a-42874b07a99e');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('ecad88b4-6c2e-4343-b53b-0f7f253b6406','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','6f32a2b6-a552-4a91-a10c-2962af63eca7');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('f5f92caf-cb4b-49a4-a605-d25b264776f6','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','2b89c1fd-9e85-40d0-9ad8-9d401526d8fe');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('f8bb0022-fc60-4a50-a061-cbe71aa8b794','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','67705234-603a-47c7-8f0d-8cdd349fd7c6');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('f8f98529-8f63-4fb6-b211-f93cfe134029','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','58fe298f-b448-40bb-a1c0-d81134efa4af');

/*Table structure for table `freecms_role_site` */

DROP TABLE IF EXISTS `freecms_role_site`;

CREATE TABLE `freecms_role_site` (
  `id` varchar(50) NOT NULL,
  `roleid` varchar(50) default NULL,
  `siteid` varchar(50) default NULL,
  `siteadmin` varchar(1) default NULL COMMENT '是否是站点管理员',
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_15` (`roleid`),
  KEY `FK_Reference_16` (`siteid`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`roleid`) REFERENCES `freecms_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`siteid`) REFERENCES `freecms_site` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色_站点';

/*Data for the table `freecms_role_site` */

insert  into `freecms_role_site`(`id`,`roleid`,`siteid`,`siteadmin`) values ('47df0463-1e86-4958-bdfb-543a8c145c60','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','7a4d22d6-762b-46e5-895b-d62da52bf9cb','1');

/*Table structure for table `freecms_role_user` */

DROP TABLE IF EXISTS `freecms_role_user`;

CREATE TABLE `freecms_role_user` (
  `id` varchar(36) NOT NULL default 'newid()',
  `roles` varchar(36) NOT NULL,
  `users` varchar(36) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_角色_用户__用户` (`users`),
  KEY `FK_角色_用户__角色` (`roles`),
  CONSTRAINT `FK_角色_用户__用户` FOREIGN KEY (`users`) REFERENCES `freecms_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_角色_用户__角色` FOREIGN KEY (`roles`) REFERENCES `freecms_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色_用户';

/*Data for the table `freecms_role_user` */

insert  into `freecms_role_user`(`id`,`roles`,`users`) values ('b7b9ea15-47dc-458d-b99d-82d3567addfe','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','fdc995ef-e96f-4c00-9746-4b5a9b365caa');

/*Table structure for table `freecms_roles` */

DROP TABLE IF EXISTS `freecms_roles`;

CREATE TABLE `freecms_roles` (
  `id` varchar(36) NOT NULL default 'newid()',
  `name` varchar(100) NOT NULL,
  `isOk` char(1) NOT NULL,
  `adduser` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

/*Data for the table `freecms_roles` */

insert  into `freecms_roles`(`id`,`name`,`isOk`,`adduser`) values ('d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','站点管理员','1','admin');
insert  into `freecms_roles`(`id`,`name`,`isOk`,`adduser`) values ('db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','管理员','1','admin');

/*Table structure for table `freecms_site` */

DROP TABLE IF EXISTS `freecms_site`;

CREATE TABLE `freecms_site` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) default NULL,
  `siteDomain` varchar(100) default NULL,
  `sourcePath` varchar(500) default NULL,
  `copyright` varchar(500) default NULL,
  `recordCode` varchar(50) default NULL,
  `parId` varchar(50) default NULL,
  `state` varchar(1) default NULL,
  `url` varchar(500) default NULL,
  `indexTemplet` varchar(50) default NULL,
  `logo` varchar(500) default NULL,
  `orderNum` int(11) default NULL,
  `clickNum` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点';

/*Data for the table `freecms_site` */

insert  into `freecms_site`(`id`,`name`,`siteDomain`,`sourcePath`,`copyright`,`recordCode`,`parId`,`state`,`url`,`indexTemplet`,`logo`,`orderNum`,`clickNum`) values ('7a4d22d6-762b-46e5-895b-d62da52bf9cb','FreeCMS','','FreeCMS','FreeTeam','','','1','','freecms',NULL,NULL,NULL);

/*Table structure for table `freecms_templet` */

DROP TABLE IF EXISTS `freecms_templet`;

CREATE TABLE `freecms_templet` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) default NULL,
  `state` varchar(1) default NULL,
  `orderNum` int(11) default NULL,
  `useSites` varchar(1000) default NULL,
  `useSiteNames` varchar(1000) default NULL,
  `adduser` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模板';

/*Data for the table `freecms_templet` */

insert  into `freecms_templet`(`id`,`name`,`state`,`orderNum`,`useSites`,`useSiteNames`,`adduser`) values ('examples','模板示例库','1',NULL,NULL,NULL,NULL);
insert  into `freecms_templet`(`id`,`name`,`state`,`orderNum`,`useSites`,`useSiteNames`,`adduser`) values ('freecms','FreeCMS站点模板','1',NULL,'','','02debc9f-53cd-4bc9-887b-49ffc4e925f2');

/*Table structure for table `freecms_unit` */

DROP TABLE IF EXISTS `freecms_unit`;

CREATE TABLE `freecms_unit` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) default NULL,
  `parid` varchar(36) default NULL,
  `isOk` char(1) default NULL,
  `ordernum` int(11) default NULL,
  `ismail` char(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单位';

/*Data for the table `freecms_unit` */

insert  into `freecms_unit`(`id`,`name`,`parid`,`isOk`,`ordernum`,`ismail`) values ('freeteam','freeteam','','1',0,NULL);

/*Table structure for table `freecms_unit_user` */

DROP TABLE IF EXISTS `freecms_unit_user`;

CREATE TABLE `freecms_unit_user` (
  `id` varchar(36) NOT NULL,
  `unit` varchar(36) default NULL,
  `users` varchar(36) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_13` (`users`),
  KEY `FK_Reference_14` (`unit`),
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`users`) REFERENCES `freecms_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Reference_14` FOREIGN KEY (`unit`) REFERENCES `freecms_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单位_用户';

/*Data for the table `freecms_unit_user` */

insert  into `freecms_unit_user`(`id`,`unit`,`users`) values ('68853479-c103-4759-8145-ce007b6657ab','freeteam','fdc995ef-e96f-4c00-9746-4b5a9b365caa');

/*Table structure for table `freecms_users` */

DROP TABLE IF EXISTS `freecms_users`;

CREATE TABLE `freecms_users` (
  `id` varchar(36) NOT NULL,
  `loginName` varchar(100) NOT NULL,
  `roleNames` varchar(500) default NULL,
  `name` varchar(100) default NULL,
  `pwd` varchar(100) default NULL,
  `sex` char(1) default NULL,
  `birthday` datetime default NULL,
  `tel` varchar(100) default NULL,
  `mobilephone` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `isOk` char(1) default NULL,
  `lastLoginTime` datetime default NULL,
  `lastestLoginTime` datetime default NULL,
  `loginFailNum` int(11) default NULL,
  `loginNum` int(11) default NULL,
  `addTime` datetime default NULL,
  `unitNames` varchar(500) default NULL,
  `unitIds` varchar(500) default NULL,
  `ismail` char(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `freecms_users` */

insert  into `freecms_users`(`id`,`loginName`,`roleNames`,`name`,`pwd`,`sex`,`birthday`,`tel`,`mobilephone`,`email`,`isOk`,`lastLoginTime`,`lastestLoginTime`,`loginFailNum`,`loginNum`,`addTime`,`unitNames`,`unitIds`,`ismail`) values ('02debc9f-53cd-4bc9-887b-49ffc4e925f2','admin','管理员;','管理员','523af537946b79c4f8369ed39ba78605','1',NULL,'','','freeteam@foxmail.com','1','2013-02-21 20:07:07','2013-02-21 20:18:24',0,0,NULL,NULL,NULL,NULL);
insert  into `freecms_users`(`id`,`loginName`,`roleNames`,`name`,`pwd`,`sex`,`birthday`,`tel`,`mobilephone`,`email`,`isOk`,`lastLoginTime`,`lastestLoginTime`,`loginFailNum`,`loginNum`,`addTime`,`unitNames`,`unitIds`,`ismail`) values ('fdc995ef-e96f-4c00-9746-4b5a9b365caa','freecms','站点管理员;','freecms','523af537946b79c4f8369ed39ba78605','1','2012-11-06 00:00:00','','','','1','2013-02-21 13:56:37','2013-02-21 13:57:03',0,0,'2012-11-28 20:25:41','freeteam;','freeteam;',NULL);

/* Procedure structure for procedure `role_del` */

/*!50003 DROP PROCEDURE IF EXISTS  `role_del` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `role_del`(IN roleId varchar(50))
BEGIN 
	
	DECLARE userId VARCHAR(50) DEFAULT '' ;
	
	declare my_cursor CURSOR FOR select users from freecms_role_user where roles =roleId ;
	
	 
        OPEN my_cursor;
         
        FETCH my_cursor INTO userId;
         
        WHILE ( userId is not null) DO
	
	update freecms_users 
	set roleNames=(
	select GROUP_CONCAT(NAME SEPARATOR  ';') 
	FROM freecms_roles u left join freecms_role_user uu on u.id=uu.roles
	where uu.users=userId and u.id!=roleId
	) 
	where id=userId;
           
          FETCH my_cursor INTO userId;
        END WHILE;
        CLOSE my_cursor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `role_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `role_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `role_update`(IN roleId varchar(50))
BEGIN 
	
	DECLARE userId VARCHAR(50) DEFAULT '' ;
	
	declare my_cursor CURSOR FOR select users from freecms_role_user where roles =roleId ;
	
	 
        OPEN my_cursor;
         
        FETCH my_cursor INTO userId;
         
        WHILE ( userId is not null) DO
	
	update freecms_users 
	set roleNames=(
	select GROUP_CONCAT(NAME SEPARATOR  ';') 
	FROM freecms_roles u left join freecms_role_user uu on u.id=uu.roles
	where uu.users=userId
	) 
	where id=userId;
           
          FETCH my_cursor INTO userId;
        END WHILE;
        CLOSE my_cursor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `unit_del` */

/*!50003 DROP PROCEDURE IF EXISTS  `unit_del` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `unit_del`(IN unitId varchar(50))
BEGIN 
	
	DECLARE userId VARCHAR(50) DEFAULT '' ;
	
	declare my_cursor CURSOR FOR select users from freecms_unit_user where unit =unitId ;
	
	 
        OPEN my_cursor;
         
        FETCH my_cursor INTO userId;
         
        WHILE ( userId is not null) DO
	
	update freecms_users 
	set unitNames=(
	select GROUP_CONCAT(NAME SEPARATOR  ';') 
	FROM freecms_unit u left join freecms_unit_user uu on u.id=uu.unit
	where uu.users=userId and u.id!=unitId
	) 
	where id=userId;
           
          FETCH my_cursor INTO userId;
        END WHILE;
        CLOSE my_cursor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `unit_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `unit_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `unit_update`(IN unitId varchar(50))
BEGIN 
	
	DECLARE userId VARCHAR(50) DEFAULT '' ;
	
	declare my_cursor CURSOR FOR select users from freecms_unit_user where unit =unitId ;
	
	 
        OPEN my_cursor;
         
        FETCH my_cursor INTO userId;
         
        WHILE ( userId is not null) DO
	
	update freecms_users 
	set unitNames=(
	select GROUP_CONCAT(NAME SEPARATOR  ';') 
	FROM freecms_unit u left join freecms_unit_user uu on u.id=uu.unit
	where uu.users=userId
	) 
	where id=userId;
           
          FETCH my_cursor INTO userId;
        END WHILE;
        CLOSE my_cursor;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
