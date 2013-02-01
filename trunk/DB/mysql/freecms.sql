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

insert  into `freecms_answer`(`id`,`questionid`,`name`,`isok`,`ordernum`,`selectnum`,`isselect`) values ('47d105b8-a242-4853-97fe-fb08a7e33b8c','03d86aaa-0b64-44a4-a1ff-e154591a8379','第一个选项','1',1,0,NULL);
insert  into `freecms_answer`(`id`,`questionid`,`name`,`isok`,`ordernum`,`selectnum`,`isselect`) values ('5ac96e08-8f1b-42f7-8a02-b021b4e3d186','2210e309-c4da-4522-87e0-07b40bb04d05','选项一','1',NULL,0,'0');
insert  into `freecms_answer`(`id`,`questionid`,`name`,`isok`,`ordernum`,`selectnum`,`isselect`) values ('653f64b4-7662-48b7-b428-207f7a14c42c','03d86aaa-0b64-44a4-a1ff-e154591a8379','第二个选项','1',2,0,NULL);

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
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('95f9f6f2-6742-4dab-9983-12ecdcb81316','t','','','','','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',NULL,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('adc2c031-42a7-4555-af57-5c9937dbbfe9','讨论','','',NULL,'','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','http://code.google.com/p/freecms/issues/list','1',5,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('b13493bc-fae7-4908-8c1f-9f4a18426222','参与','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',5,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('c2ed4a9f-fc59-4cba-91c6-098b248021ab','捐赠','','',NULL,'<h1>\r\n	捐赠</h1>\r\n<p>\r\n	开源离不开大家的支持! 有大家的支持<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>会做的更好!</p>\r\n<p>\r\n	欢迎并感谢大家对<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>进行捐赠，大家可以进入<a href=\"https://me.alipay.com/freeteam\" rel=\"nofollow\">捐赠主页</a>进行捐赠。</p>','7c4171d2-d677-447e-a478-16a73d9c625f','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',1,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('c60bebab-cf84-4ba9-8c79-3dff5c2dc427','要点','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',1,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('d8aa15d1-710c-4931-8c3b-b0b2d3db3d56','贡献源码','','',NULL,'<h1>\r\n	贡献源码</h1>\r\n<p>\r\n	如果您在使用<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>时，感觉您的源码、功能模块、页面模板、标签、或建设建议很好，并想贡献出来，您可以发送标题如&quot;贡献源码:XXXXXX&quot;格式的邮件至freeteam@foxmail.com。</p>\r\n<p>\r\n	要使贡献的源码有用，贡献源码邮件需要尽可能详细。在提交邮件或考虑贡献源码时请根据如下指示说明：</p>\r\n<ul>\r\n	<li>\r\n		1.确保<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>最新版本没有您所贡献的源码。</li>\r\n	<li>\r\n		2.请详细描述您贡献的源码所完成的功能。</li>\r\n	<li>\r\n		3.在描述如何把源码集成到<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>时请包含尽可能多的相关细节。</li>\r\n	<li>\r\n		4.一个完整的源码包请提交一个贡献源码邮件；请勿在一个贡献源码邮件中包含众多源码包。</li>\r\n	<li>\r\n		5.在提交贡献源码邮件前请检查邮件内容，确保其中已经包含了所有想要表达的内容。</li>\r\n</ul>\r\n<p>\r\n	贡献源码邮件提交后，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将尽快响应您的贡献源码邮件。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	感谢您抽时间帮助<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>改进<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的功能！</p>','b13493bc-fae7-4908-8c1f-9f4a18426222','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',3,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('f2417969-1508-470e-862c-ae1adfcd04e7','下载','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',2,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('f665343a-d4d1-4738-a7f7-18d0ec5ddd97','一级栏目','','',NULL,'','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',NULL,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('f9dda97c-a26c-40a3-8a13-12db9538c864','获得支持','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',4,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('fba30fa6-107e-41ec-a134-50855a847857','服务支持','','',NULL,'<h1>\r\n	服务支持</h1>\r\n<p>\r\n	首先<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>感谢您选择并使用<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将为您提供全方位的持续稳定的支持服务，确保项目的可持续性，为您提供信心保障，最大化的体现项目的价值。<br />\r\n	<br />\r\n	<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>提供两种服务支持方式，一种是免费支持，一种是赞助支持。</p>\r\n<h2>\r\n	免费支持</h2>\r\n<p>\r\n	免费支持面向所有用户，您可以通过以下方式获取免费支持:</p>\r\n<ul>\r\n	<li>\r\n		讨论支持：您可以直接在<a href=\"http://code.google.com/p/freecms/issues/list\" rel=\"nofollow\">讨论区</a>发布您遇到的问题或解答别人的问题，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将尽快处理您所提出的问题。</li>\r\n	<li>\r\n		产品升级：针对<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的新版本，提供终生免费升级并通过<a href=\"http://code.google.com/p/freecms/issues/list\" rel=\"nofollow\">讨论区</a>提供程序升级问题解答。</li>\r\n	<li>\r\n		BUG清除：清除<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>中出现的任何BUG。</li>\r\n	<li>\r\n		安全预警：当程序有重大安全隐患时，通过<a href=\"http://code.google.com/p/freecms/issues/list\" rel=\"nofollow\">讨论区</a>进行预警通知，并提供解决方案。</li>\r\n	<li>\r\n		帮助教程：使用<a href=\"http://code.google.com/p/freecms/wiki/Wiki\">Wiki</a>提供<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的教程、操作手册以及二次开发文档等相关帮助。</li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n<h2>\r\n	赞助支持</h2>\r\n<p>\r\n	赞助支持主要针对有特殊需求的用户，您需要赞助一定的费用才能得到以下相应的支持项目。</p>\r\n<h3>\r\n	基础支持</h3>\r\n<ul>\r\n	<li>\r\n		软件安装服务:500元/次。</li>\r\n	<li>\r\n		软件升级操作服务:500元/次。</li>\r\n</ul>\r\n<h3>\r\n	网站安全与服务器</h3>\r\n<ul>\r\n	<li>\r\n		服务器迁移:500元/次。</li>\r\n	<li>\r\n		系统故障诊断:300元/次。</li>\r\n	<li>\r\n		系统修复服务:300元/小时。</li>\r\n	<li>\r\n		服务器安全检测配置:800元/次。</li>\r\n	<li>\r\n		网站安全检测和设置:800元/次。</li>\r\n</ul>\r\n<h3>\r\n	培训与技术支持</h3>\r\n<ul>\r\n	<li>\r\n		软件远程培训服务:100元/小时。</li>\r\n	<li>\r\n		软件现场培训服务:600元/人天。</li>\r\n	<li>\r\n		软件上门培训服务:1000元/人天。</li>\r\n	<li>\r\n		QQ技术支持服务:2600元/年。</li>\r\n</ul>\r\n<h3>\r\n	项目应用支持</h3>\r\n<ul>\r\n	<li>\r\n		系统功能模板实现:100元/小时。</li>\r\n	<li>\r\n		模板错误诊断:100元/次。</li>\r\n	<li>\r\n		模板错误修正服务:150元/小时。</li>\r\n	<li>\r\n		模板局部修改:150元/小时。</li>\r\n	<li>\r\n		栏目架构调整:150元/小时。</li>\r\n</ul>\r\n<h3>\r\n	内容维护</h3>\r\n<ul>\r\n	<li>\r\n		信息发布:100元/小时。</li>\r\n	<li>\r\n		内容更新:100元/小时。</li>\r\n</ul>\r\n<h3>\r\n	定制服务</h3>\r\n<p>\r\n	定制服务是由<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>开发人员根据您的网站运营的实际功能需求，对<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>进行功能和模板定制开发的服务。鉴于不同站点有不同的实际具体功能需求，为了让更多的用户体验<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的强大易用功能，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>提供在系统基础上进行程序定制和模板定制，对于有定制需求的用户，欢迎联系定制。<br />\r\n	<br />\r\n	为了更好的服务用户，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>针对地理位置较近的用户提供现场开发服务，赞助费用为1000元/人天。</p>\r\n<h4>\r\n	定制流程</h4>\r\n<ul>\r\n	<li>\r\n		1.用户提出建站基本需求:用户向<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>提出程序或模板定制的基本需求，包括功能实现详细要求等，并提供详细的程序定制需求说明或者参考网站。</li>\r\n	<li>\r\n		2.项目建设方案及报价款:<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将根据用户提供的程序定制需求说明，反馈报价供用户参考。经双方交流与磋商，确定具体程序定制的内容及赞助费用。</li>\r\n	<li>\r\n		3.签订程序定制协议，用户赞助报价的50%:双方签订《程序定制协议》[可选] ，用户赞助报价的50%。相关技术人员与用户通过QQ、电子邮件、电话等方式进行交流。</li>\r\n	<li>\r\n		4.网站测试，用户上网验收:将测试网站功能文件上传至测试服务器，用户上网浏览并验收。验收项目包括：所定制的功能模块运行是否正常。验收合格后，用户签发《程序验收合格书》。</li>\r\n	<li>\r\n		5.用户赞助余款，网站建设过程结束:用户按照《程序定制协议》，支付剩余程序定制赞助费用。<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>在收到余款后，将相关定制程序文件递交给用户；或应用户要求将文件直接上传至客户服务器上。至此，程序定制过程全部结束。</li>\r\n</ul>','f9dda97c-a26c-40a3-8a13-12db9538c864','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',1,NULL,'1','');

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

insert  into `freecms_config`(`code`,`name`,`configValue`,`orderNum`) values ('mailType','互动信件类型(多个用,号分隔)','咨询,建议,投诉,指南,举报,其他',NULL);
insert  into `freecms_config`(`code`,`name`,`configValue`,`orderNum`) values ('memberLimitName','会员禁用登录名(多个用,号分隔)','admin,freecms',NULL);

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

insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('003c47c5-7041-4cfa-8631-82c00ab3fb35','菜单管理','1',101,'func.jsp','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('08cfd343-2803-403e-b952-f7d41199d8e1','快速添加','1',0,'cms/info_edit.do','cb42d736-3386-42b8-a9f7-62840c4ecefa');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('0af2a5d9-26e6-4b82-a07c-062a35b3a7e5','会员权限','1',8,'cms/memberauth_list.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('0bec6b84-19be-4d99-bc44-ca1d8472148f','图片链接管理','1',4,'cms/link_list.do?link.type=2','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('12187d67-5ab9-4ae4-bbee-9a772cebd0de','用户管理','1',1,'user_list.do','15dfc8ac-bfda-40cc-abb1-f563c1a1d1d2');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('14a4e894-1a48-4145-b467-0fe0499e8758','会员组','1',9,'cms/membergroup_list.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('15dfc8ac-bfda-40cc-abb1-f563c1a1d1d2','用户管理','1',100,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('18974989-cd85-48b2-8169-348bc3481ef8','文字链接分类','1',5,'cms/link_clazz.do?link.type=3','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('19eebfb0-16b5-40eb-a909-1bd37ef7d745','站点管理','1',0,'cms/site_site.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('2403873a-48fb-48ac-acd0-af4098df1a0a','添加用户','1',0,'userEdit.jsp','15dfc8ac-bfda-40cc-abb1-f563c1a1d1d2');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('26622672-9a10-4e4e-93a7-7fe50a9208b3','链接管理','1',5,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('2b89c1fd-9e85-40d0-9ad8-9d401526d8fe','网上调查','1',5,'cms/question_list.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('3dc03dc5-56ba-46d9-b8ab-78d19c04cd86','角色管理','1',99,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('425d0211-0196-4456-a24b-3e8d614dec8b','信息管理','1',1,'cms/info_info.do','cb42d736-3386-42b8-a9f7-62840c4ecefa');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('4331df96-2b8d-4dcf-9bdb-1015dfd0a759','图片链接分类','1',3,'cms/link_clazz.do?link.type=2','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('47b80631-bb6e-4abd-8e47-5b99bce8b3bd','操作日志','1',105,'operLog_list.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('5257f8fd-9da2-4e83-8538-b6ffca22e45a','模板管理','1',3,'cms/templet_list.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('58fe298f-b448-40bb-a1c0-d81134efa4af','信息页静态化','1',3,'cms/html_info.do','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('5a47681c-63c3-47b1-8e1f-34d4dbba7d85','文字链接管理','1',6,'cms/link_list.do?link.type=3','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('5f3a8e01-4216-4982-b07b-ad367fe9ef96','栏目页静态化','1',2,'cms/html_channel.do','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('66ecf6f7-1911-4e7e-8089-3a01f44a6d12','单位管理','1',98,'unit.jsp','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('67025758-eb65-40b1-a59c-edee1b3ae938','下拉链接分类','1',1,'cms/link_clazz.do?link.type=1','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('67705234-603a-47c7-8f0d-8cdd349fd7c6','互动信件','1',6,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('6c561fe7-2013-4ce5-bf9a-42874b07a99e','站点设置','1',0,'cms/site_config.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('6f32a2b6-a552-4a91-a10c-2962af63eca7','添加角色','1',0,'role_edit.do','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('742470cc-eaf1-48c4-805c-44c9936a7622','部门信件','1',1,'cms/mail_list.do?mail.type=unit','67705234-603a-47c7-8f0d-8cdd349fd7c6');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('88749e6a-a8ec-47ef-aa4a-f7912d0ed12c','下拉链接管理','1',2,'cms/link_list.do?link.type=1','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('8afb6f01-ae46-447c-acfa-1a6e0964bbba','角色管理','1',1,'role_list.do','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('c0ac116b-2b2a-4a09-ba25-0c2fffc12b4d','栏目管理','1',1,'cms/channel_channel.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('cb42d736-3386-42b8-a9f7-62840c4ecefa','信息管理','1',2,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('df4647eb-8758-451c-bdcd-54c2d180c474','会员管理','1',10,'cms/member_list.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('e01bb9aa-b122-41ac-b28c-e97993c2d250','其他信件','1',3,'cms/mail_list.do?mail.type=other','67705234-603a-47c7-8f0d-8cdd349fd7c6');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('e3066945-edb5-43ca-b29a-a0f96f98a50e','首页静态化','1',1,'cms/html_indexConfirm.do','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('e63b222f-3ccb-4e22-b8ab-7cd0dece9f06','静态化管理','1',4,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('ea3034c4-5a98-4a8a-a175-7c43e42aa939','系统配置','1',102,'config_config.do','');
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

insert  into `freecms_htmlquartz`(`id`,`siteid`,`channelid`,`type`,`exetimehour`,`exetimemin`,`intervaltype`,`intervalhour`,`intervalmin`) values ('4a9fb41d-1691-4ff1-8fb8-605047c5e927','80f429ad-ec91-4eca-87c2-82d6cba631de',NULL,'0',23,29,'0',0,0);
insert  into `freecms_htmlquartz`(`id`,`siteid`,`channelid`,`type`,`exetimehour`,`exetimemin`,`intervaltype`,`intervalhour`,`intervalmin`) values ('8205e44d-5fdb-4543-a8d5-b95dc4d7b43c','7a4d22d6-762b-46e5-895b-d62da52bf9cb',NULL,'0',23,10,'1',0,1);
insert  into `freecms_htmlquartz`(`id`,`siteid`,`channelid`,`type`,`exetimehour`,`exetimemin`,`intervaltype`,`intervalhour`,`intervalmin`) values ('9bf93797-9dc6-413f-ba0d-a1c6f45a17d1','7a4d22d6-762b-46e5-895b-d62da52bf9cb','f665343a-d4d1-4738-a7f7-18d0ec5ddd97','0',23,29,'0',0,0);

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
  PRIMARY KEY  (`id`),
  KEY `FK_信息_栏目` (`channel`),
  CONSTRAINT `FK_信息_栏目` FOREIGN KEY (`channel`) REFERENCES `freecms_channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='信息';

/*Data for the table `freecms_info` */

insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`,`video`) values ('311a914f-45f5-4dac-8883-43b0e782950a','7a4d22d6-762b-46e5-895b-d62da52bf9cb','6555dd8b-7acc-4e57-a19a-cc70dd4f7135','视频','','000000','0','','','','','','','','','2013-01-16 19:33:59','','0',NULL,0,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,'0','比对磊');
insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`,`video`) values ('74ef43c9-cc3b-4eea-bacf-2703f663bf2f','7a4d22d6-762b-46e5-895b-d62da52bf9cb','6555dd8b-7acc-4e57-a19a-cc70dd4f7135','欢迎大家使用FreeCMS','','000000','0','','','','<p>\r\n	欢迎大家使用FreeCMS!</p>','','/userfiles/images/admin/logo.png','','/userfiles/files/admin/log.rar;/userfiles/images/admin/1.png;','2012-12-05 21:18:29','','0',NULL,8,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,NULL,NULL);
insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`,`video`) values ('78b5d180-805e-46aa-a80b-4ab6ab2e868c','7a4d22d6-762b-46e5-895b-d62da52bf9cb','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','ds','','000000','0','','','','','','','','','2013-01-16 20:28:24','','0',NULL,17,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,'0','/upload/7a4d22d6-762b-46e5-895b-d62da52bf9cb/dfdb449f-af94-4859-84fc-3cd6907a9477.flv');
insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`,`video`) values ('8700b1ba-917a-4986-adad-d647070e3d25','7a4d22d6-762b-46e5-895b-d62da52bf9cb','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','地','','000000','0','','','','','','','','','2013-01-16 20:20:31','','0',NULL,1,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,'0','');
insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`,`video`) values ('93fa57df-3a03-4715-968d-bae6cb5a0742','7a4d22d6-762b-46e5-895b-d62da52bf9cb','6555dd8b-7acc-4e57-a19a-cc70dd4f7135','FreeCMS 1.0 发布','','000000','0','','','','<p>\r\n	FreeCMS 1.0 已发布，请到<a href=\"http://code.google.com/p/freecms/downloads/list\">http://code.google.com/p/freecms/downloads/list</a>下载。</p>','','/userfiles/images/admin/logo.png','','','2012-12-05 20:57:54','','0',NULL,3,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,NULL,NULL);
insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`,`video`) values ('d45fd50c-2199-48cc-a8fd-ad6b6ef7c2ae','7a4d22d6-762b-46e5-895b-d62da52bf9cb','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','sign','','000000','0','','','','','','','','','2013-01-15 18:53:11','','0',NULL,52,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,'1','');
insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`,`video`) values ('d51cba2d-19cb-4517-9353-2b7a329bd1a6','7a4d22d6-762b-46e5-895b-d62da52bf9cb','6555dd8b-7acc-4e57-a19a-cc70dd4f7135','s','','000000','0','','','','','','','','','2013-01-15 19:29:23','','0',NULL,10,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,'1',NULL);

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

insert  into `freecms_info_sign`(`id`,`userid`,`infoid`,`signtime`,`ip`) values ('2bbeeca4-e974-4f88-9370-ab846283b6e3','02debc9f-53cd-4bc9-887b-49ffc4e925f2','d51cba2d-19cb-4517-9353-2b7a329bd1a6','2012-09-09 00:00:00','123678');
insert  into `freecms_info_sign`(`id`,`userid`,`infoid`,`signtime`,`ip`) values ('588f66cf-bc05-4876-af5c-e9abd9222d49','fdc995ef-e96f-4c00-9746-4b5a9b365caa','d45fd50c-2199-48cc-a8fd-ad6b6ef7c2ae','2012-09-09 00:00:00','123678');
insert  into `freecms_info_sign`(`id`,`userid`,`infoid`,`signtime`,`ip`) values ('726f8bc2-79ae-4e5f-ad7d-4d37a27c2771','fdc995ef-e96f-4c00-9746-4b5a9b365caa','d51cba2d-19cb-4517-9353-2b7a329bd1a6','2013-01-16 19:00:36','127.0.0.1');
insert  into `freecms_info_sign`(`id`,`userid`,`infoid`,`signtime`,`ip`) values ('f6cfc88d-803d-47f3-b73a-228d2ef6238d','02debc9f-53cd-4bc9-887b-49ffc4e925f2','d45fd50c-2199-48cc-a8fd-ad6b6ef7c2ae','2013-01-19 13:53:07','127.0.0.1');

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

insert  into `freecms_link`(`id`,`parid`,`name`,`url`,`isok`,`ordernum`,`site`,`type`,`img`,`pagemark`) values ('037abd4d-b19a-4108-8c82-c1575f9673e8','c3a152e9-ed35-458e-9208-335f27612a44','Google','http://www.google.com','1',NULL,'7a4d22d6-762b-46e5-895b-d62da52bf9cb','1','','');
insert  into `freecms_link`(`id`,`parid`,`name`,`url`,`isok`,`ordernum`,`site`,`type`,`img`,`pagemark`) values ('7860cba8-fd7c-4f88-9bec-2b7138b5276c','c3a152e9-ed35-458e-9208-335f27612a44','FreeCMS','http://code.google.com/p/freecms/downloads/list','1',NULL,'7a4d22d6-762b-46e5-895b-d62da52bf9cb','1','','FreeCMS');
insert  into `freecms_link`(`id`,`parid`,`name`,`url`,`isok`,`ordernum`,`site`,`type`,`img`,`pagemark`) values ('c3a152e9-ed35-458e-9208-335f27612a44',NULL,'测试链接分类',NULL,'1',NULL,'7a4d22d6-762b-46e5-895b-d62da52bf9cb','1',NULL,'test');

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

insert  into `freecms_mail`(`id`,`unitid`,`userid`,`mailtype`,`title`,`writer`,`tel`,`address`,`email`,`isopen`,`content`,`querycode`,`addtime`,`ip`,`state`,`recontent`,`retime`,`proflow`) values ('0fbb6a81-41bc-4c54-85f3-aaa80e8ab022','f5b2d3de-96df-4ce2-a856-8715310c0765','','咨询','fsd','fsa','','fds','','0','fdsa','20130118224726881','2013-01-18 22:47:26','127.0.0.1','1','理结果','2013-01-19 15:45:13','其他 --> 信件 --> fds');
insert  into `freecms_mail`(`id`,`unitid`,`userid`,`mailtype`,`title`,`writer`,`tel`,`address`,`email`,`isopen`,`content`,`querycode`,`addtime`,`ip`,`state`,`recontent`,`retime`,`proflow`) values ('147fbca2-c8ba-4ece-ac7e-116df79c58bd','1304e48c-773a-4afa-b4e5-e087648e4a17','','咨询','dfsfsd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','d','2013-01-22 19:50:19','fds --> 信件');
insert  into `freecms_mail`(`id`,`unitid`,`userid`,`mailtype`,`title`,`writer`,`tel`,`address`,`email`,`isopen`,`content`,`querycode`,`addtime`,`ip`,`state`,`recontent`,`retime`,`proflow`) values ('439493e6-3f92-4f44-b555-9ade28fdb233','','44291cbf-696d-4c2e-b9d5-4238d986d479','咨询','dsa','dsa','','dsa','','1','ds','20130118203717790',NULL,NULL,NULL,NULL,NULL,'信件 --> fds --> 信件user');
insert  into `freecms_mail`(`id`,`unitid`,`userid`,`mailtype`,`title`,`writer`,`tel`,`address`,`email`,`isopen`,`content`,`querycode`,`addtime`,`ip`,`state`,`recontent`,`retime`,`proflow`) values ('88a0758e-7cf8-4764-9346-7efd6c5465db','1304e48c-773a-4afa-b4e5-e087648e4a17','','咨询','fsd4444','fsa','','fds','','1','fdsa','20130118205037727','2013-01-18 20:50:37','127.0.0.1',NULL,NULL,NULL,'其他 -->');

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

insert  into `freecms_memberauth`(`id`,`code`,`name`,`ordernum`) values ('04111db9-e3cc-4810-92ee-0a6c5553a9b7','comment','发表评论',NULL);
insert  into `freecms_memberauth`(`id`,`code`,`name`,`ordernum`) values ('7666af84-31fe-439f-87d0-7d7f262e33ee','addinfo','投稿',NULL);

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

insert  into `freecms_membergroup`(`id`,`type`,`name`,`orderNum`,`beginExperience`,`img`,`color`,`maxAttchSize`,`maxFriendNum`,`commentNeedCheck`,`commentNeedCaptcha`) values ('2751da4b-4a05-40ac-b7e2-eec21c33aa4b',0,'新手上路',NULL,0,NULL,'#3414FF',NULL,NULL,1,1);
insert  into `freecms_membergroup`(`id`,`type`,`name`,`orderNum`,`beginExperience`,`img`,`color`,`maxAttchSize`,`maxFriendNum`,`commentNeedCheck`,`commentNeedCaptcha`) values ('e14fa93d-e07e-4599-8058-2c1893affd8d',1,'管理员',NULL,NULL,NULL,'#000000',NULL,NULL,1,1);

/*Table structure for table `freecms_membergroup_auth` */

DROP TABLE IF EXISTS `freecms_membergroup_auth`;

CREATE TABLE `freecms_membergroup_auth` (
  `id` varchar(50) NOT NULL,
  `groupid` varchar(50) default NULL,
  `authid` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_23` (`authid`),
  KEY `FK_Reference_24` (`groupid`),
  CONSTRAINT `FK_Reference_24` FOREIGN KEY (`groupid`) REFERENCES `freecms_membergroup` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`authid`) REFERENCES `freecms_memberauth` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员组权限';

/*Data for the table `freecms_membergroup_auth` */

insert  into `freecms_membergroup_auth`(`id`,`groupid`,`authid`) values ('b34dea9b-ebb4-4dd8-992a-9e42b3450ac5','2751da4b-4a05-40ac-b7e2-eec21c33aa4b','04111db9-e3cc-4810-92ee-0a6c5553a9b7');

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
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('56227812-981f-488f-90b1-92eded41aa54','5f3a8e01-4216-4982-b07b-ad367fe9ef96','生成此站点所有栏目页','createAll()','1',2);
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
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('9d780208-d3d6-4dd9-99d5-4dfbc5870128','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('a1503362-5cc4-46a0-bfe2-a57e9c1479e4','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86','编 辑','edit()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('adef49b9-1e4f-410b-bc35-e9611a255356','12187d67-5ab9-4ae4-bbee-9a772cebd0de','授 权','auth()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('af01be01-45a6-4bf0-aafb-3415a86e5379','742470cc-eaf1-48c4-805c-44c9936a7622','转 交','forward()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('b3627085-294d-4e71-ba74-6a98e6525530','003c47c5-7041-4cfa-8631-82c00ab3fb35','管理操作按钮','operButton()','1',0);
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
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('dfc3a95f-db39-42b8-91b9-2682aa32c0ea','742470cc-eaf1-48c4-805c-44c9936a7622','办 理','pro()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('e234bf55-ecff-4689-b90e-f8f9f58f1c9f','0af2a5d9-26e6-4b82-a07c-062a35b3a7e5','删 除','del()','1',3);
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

insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('00040e81-4975-4f44-b20f-92cce1183fb0','admin','2013-01-24 22:47:57','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('000f46c0-5ed6-4de2-ba02-c93824fa8b7f','admin','2012-12-20 20:58:14','添加操作按钮 sa 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('00ca8033-6e4f-4dd6-afbe-e397f45429ce','admin','2013-01-17 21:44:57','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0116ed8f-9d77-4ab7-a11e-0d43ce04a0d6','admin','2013-01-17 18:54:48','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('015986cf-ce18-4c22-ad85-f312a1f77e67','admin','2013-01-17 21:31:16','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0186b71d-0677-4cb0-884e-c61b2dee1226','admin','2013-01-10 22:01:16','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('01bcb34a-c1d0-4202-ab08-21492f86854b','admin','2013-01-06 22:11:22','栏目静态化:捐赠 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0208c281-2bd2-496a-8fab-6d9dcedd5a5e','admin','2013-01-24 20:32:29','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('026ada50-5df8-4a63-a206-8c2d7eb0147d','admin','2013-02-01 13:04:45','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('02950985-455d-4909-b792-a549c32fa7da','admin','2013-01-16 22:05:09','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('03086191-831f-43cc-b55f-136af1f27622','admin','2013-01-14 20:11:48','修改菜单 用户管理 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('03101d3f-2892-4470-8892-1e4824fb6c98','admin','2013-01-14 20:11:57','修改菜单 菜单管理 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('031825ce-cc6d-4a2b-884f-349cc8cc277a','admin','2013-01-23 19:55:54','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('032fe450-3583-41d5-89a7-7a3dbff51cac','admin','2012-12-30 16:12:21','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('03329a0b-c596-4e1c-a720-32368f66216c','admin','2012-12-25 19:39:57','添加模板(测试模板)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('033972ba-d8af-4c80-8f3f-1ae0c7b7c5a1','admin','2013-01-23 19:49:47','栏目静态化:动态 第4页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0384af23-cae5-4b3c-a2ba-6ab2db69acc5','admin','2013-01-19 12:45:15','添加角色菜单权限(站点管理员-互动信件)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('039d7b57-b285-41d0-9eee-a97ca1d20ae7','admin','2013-01-18 19:19:39','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('03eb842f-9f83-4b6a-afe1-31dd0c2ab90e','admin','2013-01-06 22:11:24','栏目静态化:贡献源码 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('041ab63d-7866-4190-abe8-947a382ebcb5','admin','2013-01-24 20:44:53','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('04385dce-7556-44a2-9391-c51c961dad54','admin','2012-12-20 20:03:00','添加菜单 一级菜单 成功<属性>b51c4461-2c30-4710-b833-04811cde745a<属性>一级菜单','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('04670169-db1a-43ad-b4cb-08e182644bf3','admin','2012-12-30 17:46:36','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('057f1230-f148-4d8f-b8d0-7d81968c14c1','admin','2012-12-30 18:02:43','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('059fd0a7-207a-4035-a2a8-62e81bca09e6','admin','2012-12-30 17:05:39','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('06e99fcc-a4fc-4972-966c-7fe7bf5e54d1','admin','2013-02-01 16:55:59','会员组授权(fsd 发表评论;)','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('076b595f-db3b-46a0-b2eb-04fc31e7c7f9','admin','2013-01-28 21:44:14','修改网上调查(测试网上调查1)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('077739f0-3c17-461d-8b2f-2cdade8e779a','admin','2013-01-06 22:01:36','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('07abfbb0-f5a6-4948-80e9-9d7aedbd9f8d','admin','2013-01-06 22:11:20','栏目静态化:下载 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('07df4a18-17c8-4253-8e16-1a7b2822139a','admin','2013-01-17 19:55:14','修改单位 信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('07e083c0-5aa2-48d4-af56-527583e05a57','admin','2013-02-01 21:15:08','添加会员组 管理员','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('08749e74-7f7d-4acb-b581-bd766397c288','admin','2013-01-16 19:32:52','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('08dc98dc-40a2-4fab-a511-7dd3460c7194','admin','2013-01-28 21:38:40','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('09345146-9240-4012-b6ac-da78cf707b7f','admin','2013-01-30 21:48:41','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0936ffe5-9b0e-4f59-a2eb-10105e38ddb8','admin','2013-01-06 20:44:02','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0940988d-2db8-4ef9-89b9-dd70bb5c721d','admin','2013-01-22 20:25:01','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0972fc68-d840-468a-a8f4-06d702632876','admin','2013-01-16 22:00:53','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('099d67c5-78aa-47eb-bcf7-251455245dec','admin','2013-01-16 22:06:05','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('09c0f022-a1d8-418c-90e9-f55ef18ffd02','admin','2013-01-17 21:39:29','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0a001f00-25f3-4b9b-bdbe-2e3fafe1f3c5','admin','2013-01-10 20:08:42','更新站点 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0a347e76-7104-43ed-b32a-d245a305eab6','admin','2013-02-01 16:39:46','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0b520e41-6946-4590-a27b-b0e8f4e65ee5','admin','2013-01-22 19:55:28','修改网上调查(需要)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0b698e6e-c341-4458-a0d5-5b77374b2a5d','admin','2012-12-25 19:39:46','添加模板(要)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0b7f1900-a680-4bbc-8a24-930d9d1f4cab','admin','2013-01-24 22:57:15','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0c7ca812-36ef-4b36-bd92-a0a6d2506d63','admin','2013-01-23 19:17:45','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0c878b7d-cbb6-470a-86a1-8de377a43595','admin','2013-01-23 18:51:05','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0c933b12-ba66-43a1-ae99-b283a26ffacd','admin','2013-02-01 12:54:35','删除会员组(sd)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0c973551-34c6-40ff-9ffd-b27fb80937cb','admin','2013-01-15 18:53:11','添加信息(sign)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0cf1a036-eb4a-4afd-b371-434cd0de7f8d','admin','2013-01-23 19:35:08','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0d9896ff-7dc0-4989-b7c3-d6cd37c2f59c','admin','2012-12-30 17:53:50','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0daecd5b-75f3-489b-81ac-9195b57eaae6','admin','2013-01-23 19:56:18','栏目静态化:动态 第3页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0db2ac7b-2eaf-4fb0-b763-787bc8b4f263','admin','2013-01-18 20:43:16','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0e1c0006-d146-4d6a-bacc-ccefb2c9ae41','admin','2013-02-01 12:54:23','删除会员组(xc)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0e2adaf0-ad90-4e8d-940d-550030c32ee3','admin','2013-01-17 21:29:58','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0ef21ba4-1092-4f55-8f73-176ee879d343','admin','2013-01-29 20:38:48','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0f760ea9-0d1c-4d93-90c2-7d678efee3a9','admin','2013-01-18 22:47:54','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0f8b96d0-98a8-49c9-b7b2-6d73bf20376c','admin','2013-01-18 22:43:20','修改菜单 互动信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0f8d1b91-704f-4f7d-a6fd-4d5a7127162a','admin','2013-01-17 18:54:49','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('105c1566-4b1b-4a36-ac1e-f88adfbae03c','admin','2013-01-16 22:15:50','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('11695df5-ed9d-4641-9786-24dd7c8b6256','admin','2013-01-31 22:09:37','添加会员组 原梓菲','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('117066c0-6766-4ee7-b5cb-d415789fbc96','admin','2013-01-17 21:47:08','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1173f94c-b908-4b2e-b473-57b152bb5ab7','admin','2013-01-28 20:28:17','添加栏目 一级栏目','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('11bad94d-a06b-4abf-b50e-91f6bb95538d','admin','2013-02-01 20:54:41','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('11c11827-a2a3-4a77-a0c4-58bcfb2204e9','admin','2013-01-06 22:11:21','栏目静态化:关于 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('122b6fbc-f2a2-419e-be2e-7df468ee3ec0','admin','2013-01-17 21:46:07','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('12a8615e-9dc0-41e6-a227-ea6f0091287c','admin','2012-12-25 20:02:14','修改模板文件(templet\\f392cd10-13b6-4208-a5a9-77c7fd30bcf5\\test.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('12c4bf57-7d5d-4806-9442-7a2b7163ab25','admin','2013-01-16 19:33:59','添加信息(视频)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('136df0f5-81df-4aae-a7f5-b9d930dbfcf6','admin','2012-12-25 19:39:18','添加模板(工)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('13973e6a-cfbc-41f9-91fd-f10097ce16fc','admin','2012-12-30 17:37:49','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1406dcbe-9cbd-4bcb-b9b6-d51e3f840387','admin','2013-01-17 21:40:26','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('144c5b10-5712-4092-a455-8221c930aa12','admin','2013-01-23 19:46:34','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('14524498-b0cf-49f4-9e0e-add74ca1c86a','admin','2013-01-19 12:44:46','退出系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('149070d1-1497-4706-abb4-bacd92af377d','admin','2013-01-06 20:35:05','更新信息(欢迎大家使用FreeCMS)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('14b2ac07-7d6f-4f37-95d8-e649dfe9cccf','admin','2013-01-23 19:49:46','栏目静态化:动态 第2页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('155c976c-452e-4846-a4eb-269d985826fe','admin','2013-02-01 16:37:33','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1584a299-767d-456c-ab9a-478447996883','admin','2013-01-06 22:10:06','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('15b96241-e08f-4a44-955b-0a20a6e82e75','admin','2013-01-23 19:49:46','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('163682c9-5c7a-4612-81fa-6887159eae03','admin','2013-01-24 20:53:34','更新栏目 动态','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('167feb53-3b88-4191-a6ac-39aa44138237','admin','2013-01-06 22:11:21','栏目静态化:动态 第2页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('16be8b20-d5df-41cb-9795-0a05a8bde26c','admin','2012-12-30 17:50:01','更新信息(FreeCMS 1.0 发布)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('174045c3-239b-4db6-b8b5-1145c0a35ba3','admin','2013-01-18 20:53:16','添加菜单 互动信件 成功<属性>67705234-603a-47c7-8f0d-8cdd349fd7c6<属性>互动信件','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('17e01cbf-d2bc-4c2a-a6b6-5d1fa8cf0caa','admin','2013-01-17 20:11:21','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('17e3367a-7df9-41b8-a395-d40e98a4781c','admin','2013-01-18 20:57:38','修改菜单 其他信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('18128655-4f1c-4f32-aed4-f107464ef3bc','admin','2013-01-23 21:41:11','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1825fe7d-40df-484f-8d1e-f99ac56d5693','admin','2013-01-22 20:00:09','添加网上调查(网上调查)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('189a1023-4190-427d-8fb6-676559899577','admin','2013-01-16 21:56:54','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('18a44e8d-b32e-46ef-8b49-33933b8c1932','admin','2013-01-16 20:29:30','更新信息(ds)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('18c080cb-ea79-4907-bdea-c2daf84df49b','admin','2013-01-19 13:33:49','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('19572708-d766-4266-a128-24105adccaf9','admin','2013-01-15 20:24:45','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('19d0a062-bab6-4e2c-af6e-6ffa1f91df4c','admin','2013-01-22 19:50:40','添加网上调查(需要)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1a05f46f-6e70-4b29-9a9f-ff37a2501599','admin','2013-02-01 20:13:44','添加操作按钮 添 加 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1b29b97c-5090-488a-9f11-6eb01f307fc7','admin','2012-12-26 19:45:58','添加链接分类(测试链接分类)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1ba95f84-5e85-41c3-bbaf-8ff8942125c5','admin','2013-01-19 16:21:11','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1c724884-4f98-4735-9b34-380c9eeb16ca','admin','2013-01-18 20:02:03','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1c8a7648-04c4-4cc3-bf87-25c059475e46','admin','2013-01-19 12:46:59','退出系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1cbb100e-b6a0-4d5f-9816-1c6d6e5b39c5','admin','2013-01-23 19:57:48','创建模板文件夹(templet\\examples\\信息)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1cda3ca4-3585-4952-8220-0cdcc9e68738','admin','2013-01-23 19:39:00','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1e26be2d-8d9c-477b-96b3-8f487ccd010d','admin','2012-12-30 16:08:49','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1e4a2e0c-46c7-4fdd-946d-244045a8b45c','admin','2013-01-16 22:00:45','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1e87176c-2916-4374-a346-877e28b128a2','admin','2013-01-16 21:53:17','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1f2a8467-3de6-42ed-a1c8-843efb269010','mail','2013-01-19 12:44:25','退出系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('200fdfa1-99bf-49c6-835b-72f02e84fef0','admin','2013-01-17 18:54:40','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('20b1566c-0bf3-4004-87ad-2ee0c4103089','admin','2013-01-22 19:47:56','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('210d7ec3-bdc6-4b50-b774-fc54164acf7f','admin','2013-01-17 18:54:48','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('22233aa6-ca38-43eb-8770-c505f37f44dd','admin','2013-01-22 20:49:37','修改调查选项 大本营1 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('224b7e51-b805-4114-a439-ecbcccc62774','admin','2013-01-17 20:11:40','添加用户(ddd)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('228ab1ae-2d90-4543-9a7b-fd8b3a985663','admin','2013-01-17 20:09:43','编辑用户(mail)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('22bc42b1-974e-45dc-ba5c-9caa9f252c8f','admin','2013-01-19 16:12:10','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('22f1cc80-282f-4a73-9cdb-1bde37f3a171','admin','2013-01-19 15:11:12','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('23390d4f-25f7-42ec-8f67-5e1cb959436c','admin','2013-01-24 20:35:12','添加栏目 t','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('23696a62-ccad-4655-a07b-8516ad4d0f8a','admin','2013-02-01 20:21:17','更新会员组 新手上路','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('23a2ca47-fb9a-4c2c-8020-2b1329ab0c8b','mail','2013-01-19 12:46:32','退出系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('23ed583d-1987-4e4c-a6fb-53ffbd4d699c','admin','2012-12-21 19:56:52','删除单位 sdfd 成功<属性>07f9e6f6-f181-4733-99dc-1c925ec4e204','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('23feb6b3-60c0-4f1f-92af-b1c65ff2a48c','admin','2013-01-17 21:17:40','添加模板文件(templet\\freecms\\mail.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2434af5a-3d12-478b-a240-29c8bcc455e0','admin','2013-01-04 20:21:17','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('245983c1-3546-4fb9-ac60-ee20f1119ca8','admin','2013-01-19 12:44:43','给人员信件(mail)授权(管理员)','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('245d93e8-e2e9-491b-8d9b-0ef4fec120a7','admin','2013-01-16 21:56:54','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('25734058-e2fc-4695-9e44-8f24c20df2df','admin','2013-02-01 16:38:34','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('25823024-10bf-4fd4-a878-429c6a9e594b','admin','2013-01-18 20:57:11','修改菜单 部门信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2583dd59-6731-4f23-ab75-5fa971c61c35','admin','2013-01-19 12:40:18','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('25fc8824-121a-4c6a-b1a1-835fa451959a','admin','2013-02-01 13:01:42','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('260e4f0c-ab53-437c-a5e5-d9f95f22351e','admin','2013-01-19 12:46:36','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2647132a-4ce4-4259-86dd-2630ab41a42f','admin','2013-01-22 13:18:45','添加操作按钮 添 加 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('269c4e29-312c-4a40-a923-faf958927ea9','admin','2013-01-19 16:18:08','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('271badcb-cba9-4f79-ba86-36193edc8b54','admin','2013-01-31 22:12:33','添加会员组 xc','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2737fe0e-a1fb-4936-9a0c-1b4726510507','admin','2013-01-16 20:20:32','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('27486644-33b3-454a-809a-bd82eae9a946','admin','2013-01-24 22:53:15','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2804b25c-814f-465f-93ba-f598eed44210','admin','2013-02-01 21:11:35','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2823a45f-15e7-463f-af78-ea953c066e03','admin','2013-01-22 13:53:41','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('29235ce1-de02-4497-9bdb-971f47c6a3f5','admin','2012-12-30 17:40:48','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('29c3db6b-382f-4a68-9379-87e94a8d7136','admin','2013-01-06 20:24:04','修改模板文件(templet\\freecms\\inc\\头部.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('29db0292-7d25-48bb-ae5f-8786033e8757','admin','2013-01-17 21:47:53','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2a4e126e-0ab1-4f0a-a757-d0e4b3be3e7d','admin','2013-01-23 20:02:48','添加模板文件(templet\\examples\\信息\\infoPage.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2b04ac62-5eec-4ae1-bf29-fb207ba68c5b','admin','2013-01-17 19:59:43','修改单位 信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2b08062e-2baf-40b8-932e-6becf36ff3e3','admin','2013-02-01 20:14:50','添加操作按钮 删 除 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2b48e87e-42ca-47f3-94a4-f1bea0e51208','admin','2013-01-16 22:06:06','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2b5de287-075d-4630-a584-77aa9989def6','admin','2013-01-19 14:38:20','添加操作按钮 办 理 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2bb0ac33-9ed6-4425-910a-0169030bb13b','admin','2012-12-30 17:49:48','信息页静态化:欢迎大家使用FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2bde77a3-c54f-4f09-94e6-a23caab71a32','admin','2013-01-16 22:10:59','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2d510fc0-3ab5-4b31-a911-b04453060aeb','admin','2013-01-24 20:35:21','更新栏目 t','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2d576b25-e961-4a62-8466-fde171b04a96','admin','2012-12-20 21:01:54','删除菜单 一级菜单 成功<属性>b51c4461-2c30-4710-b833-04811cde745a','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2e08344d-bb3f-4d4d-a14e-48f747663854','admin','2013-01-10 21:58:07','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2e240764-ef6c-4acc-a9b3-458b4c31978f','mail','2013-01-19 12:44:20','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2f3c27dc-310e-4f75-9b2c-f953d07b5db6','admin','2013-01-22 20:53:39','添加调查选项 第二个选项 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2f48dd9f-6dd4-4065-be4f-30764fc8b2c2','admin','2013-01-17 21:25:26','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2f535a8d-f68f-4554-87d0-2e4ee2d3c1cf','admin','2013-02-01 12:54:35','删除会员组(dsdas)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2fb647e5-41c4-4efd-a248-54f0e1e626c3','admin','2013-02-01 13:07:54','删除会员组(原梓菲)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2fba1856-7d36-43bb-93fa-1c838cee1f41','admin','2013-01-18 19:21:35','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2feab9b1-904b-4d92-96a0-73518cabf158','admin','2012-12-20 20:15:14','改变菜单 一级菜单 的所属菜单为 站点管理 成功<属性>b51c4461-2c30-4710-b833-04811cde745a<属性>19eebfb0-16b5-40eb-a909-1bd37ef7d745','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2feeefc3-0def-43eb-a617-6ff55969296e','admin','2013-01-22 19:36:46','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('301b2f4f-4a9c-44b8-816a-9737545c1909','admin','2013-01-23 19:43:06','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('304a00d4-9b23-428f-ac42-590471834548','admin','2013-01-06 22:10:44','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3057fb69-7075-4178-aee8-b124130d55ca','admin','2012-12-30 17:03:43','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('30640616-bf6a-4543-95a7-3bebc0f136ac','admin','2012-12-24 20:16:04','改变站点 一级站点 为 一级站点','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('30a9589b-bc96-4a18-a12d-d1142cf9ee4e','admin','2013-01-17 21:20:44','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('30ca5d20-5f51-4c6e-bbaf-edf750bdc7a0','admin','2013-01-19 12:44:30','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('311be2af-5f6b-4f87-bfb6-f9944e5378b3','admin','2013-01-23 18:52:49','添加模板文件(templet\\examples\\网上调查\\questionList.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('313deeb6-5ba5-4f55-b60d-c9a5eaf82479','admin','2013-01-06 22:06:58','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('317c1aca-08f3-4183-9485-b1bc4579d764','admin','2013-01-16 18:46:37','信息页静态化:FreeCMS 1.0 发布','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('31b1812d-2d45-4b9d-a37d-7647e00d9b0f','admin','2013-01-18 20:45:07','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('31c9e462-2606-4043-9760-e3f93588e56e','admin','2013-01-17 21:29:53','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('31edd6e2-d438-4d22-bcdb-bec44261f471','admin','2013-01-06 22:10:40','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3224bab6-20f6-4874-a889-50344c07c910','admin','2013-01-18 20:30:24','修改模板文件(templet\\examples\\工具类\\URLEncoder.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('32301138-2523-4e1a-8f7a-7fc45409d959','admin','2012-12-30 17:51:41','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('326a86ec-2549-4919-8dd0-8314f82ad1d8','admin','2013-01-16 22:12:26','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('32716a72-9346-41d6-836e-1e197bb9bd31','admin','2013-01-24 20:53:16','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('327c14db-2948-4f46-9040-40fd382805ad','admin','2013-01-06 22:11:32','信息页静态化:欢迎大家使用FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('32847960-9552-4152-b05d-c5dd001862fa','admin','2013-01-31 19:27:15','添加菜单 会员组 成功<属性>14a4e894-1a48-4145-b467-0fe0499e8758<属性>会员组','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('32c132b6-eeed-43bf-b010-556229c9b8f8','admin','2013-01-22 19:48:14','null 信件转交给 信件','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('32e4a45f-8f28-4922-8d46-24d995204162','admin','2013-01-23 19:40:43','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3359be37-d51a-4ee5-a0be-bd1fd2cf8fc9','mail','2013-01-19 12:45:00','退出系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('33fdf183-1a5f-4799-a50a-4dcd4cb67a1f','admin','2013-01-22 20:00:00','删除网上调查(需要)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('345e4dbb-e682-4760-baa0-1f094bcc870d','admin','2013-01-16 22:13:14','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('348a4303-64ac-478d-994a-e01c1ac708c3','admin','2013-01-15 20:17:21','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('34be45a6-114e-4ec3-9025-f3a7d85a33de','admin','2013-01-23 19:55:55','栏目静态化:动态 第3页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3577b3a9-873c-42db-b907-8f153a8b278e','admin','2013-01-23 19:55:55','栏目静态化:动态 第2页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('358d5b9f-6f3a-48a4-ba18-e17f784ebb06','admin','2013-01-15 18:53:12','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('360af14a-f91c-464b-810c-8f99151bc246','admin','2013-01-24 20:44:06','站点设置 t','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('366078b6-02f7-4075-89d4-e6147515ee8f','admin','2013-01-24 22:18:03','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('366b8ee1-7178-4580-bf55-6ee68f5971a4','admin','2013-01-24 22:19:18','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('36a17c2f-7ef8-4588-a0e4-ed9432becc33','admin','2013-01-06 22:11:32','信息页静态化:FreeCMS 1.0 发布','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('37623ee6-8971-4477-b845-aa0fad21dca5','admin','2012-12-30 16:12:11','更新栏目 Bug报告','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('37b4ed50-75da-4d64-93ec-5ca4b20986e5','admin','2013-01-16 22:44:40','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('37dc347d-4bb3-4fec-9c57-c562e12f5a42','admin','2013-01-22 13:25:42','修改菜单 网上调查 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('381ab95a-99c9-4607-ace4-26bfedca5b80','admin','2013-01-16 18:46:37','信息页静态化:欢迎大家使用FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3839befa-bc4a-4395-a053-f1bc0aa63ef1','admin','2013-02-01 16:00:39','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('38473f2f-0a4f-4f6b-9cfe-d0af1e4ed7b9','admin','2013-01-16 19:46:31','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3877a02e-ecaa-4800-af75-bb5cca239e69','admin','2012-12-21 20:10:26','修改角色(站点信息员)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('396ffca3-d90b-483a-8846-bfe598a63d8a','admin','2013-01-19 16:18:03','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('39963bf5-0aef-4cb0-9c1d-b1bd8844b60b','admin','2013-01-18 22:59:40','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3999e141-0824-48c0-8e7a-233ca1262423','admin','2013-01-24 22:41:24','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('39b62440-ded3-4860-9adc-8ea0ca25bd21','admin','2013-01-16 20:29:31','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('39d0d1c3-0dc4-49f5-9d0f-c70fcbb79ad5','admin','2013-01-16 22:03:25','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('39d1b05f-25c6-474a-9e9f-e4e7f8ef4ca9','admin','2013-01-23 20:01:16','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('39e92079-94cb-4da9-a8be-3e69af5e9a60','admin','2012-12-30 17:07:42','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3a276c61-64e2-43e5-a615-d3adbcef7286','admin','2013-02-01 16:55:47','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3a3dec0d-d67a-4322-8bc8-f132135d2fc5','admin','2013-01-16 22:18:54','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3ac0a501-13fc-45b5-a6eb-62ca5fa00f02','admin','2013-01-19 16:25:49','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3adf3495-c5c0-4401-adf2-b1958dc8d806','mail','2013-01-19 12:46:25','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3aeab118-dca2-47dd-9a9d-bde108bedeb1','admin','2013-01-23 19:50:56','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3b10ec5c-eafe-4713-b8bc-889c2865dbc7','admin','2013-01-18 22:48:32','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3bc8abb9-ba10-41c2-a21c-32ca226e7073','admin','2013-01-22 21:02:26','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3c81d419-0f7a-42b1-a10c-c91cf4ec0920','admin','2013-01-17 21:50:11','添加模板文件(templet\\examples\\工具类\\URLEncoder.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3d3bf31b-cc5b-41ff-b07f-0a3f650c4aa1','admin','2013-01-24 22:37:35','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3e1d7e1b-a313-402c-856e-790f24a883e7','admin','2013-01-16 20:29:14','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3e5954fe-a0f8-42aa-96bf-46cf917cdefb','admin','2013-01-17 21:45:17','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3e68116a-ff56-4c41-8e39-1584e3594ce1','admin','2013-01-10 20:14:57','更新站点 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3f06dbd4-a13e-49c3-b874-afe7f051d09a','admin','2013-02-01 12:49:24','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4024983d-3767-4614-9836-dd2b28247719','admin','2013-01-22 20:40:04','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('405bb57f-ceaa-4b79-929e-5da7f4dd8e00','admin','2013-01-18 20:42:01','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4066f407-3066-4aaa-98bb-63a55e9507a2','admin','2013-02-01 16:56:39','会员组授权(新手上路 投稿;)','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4092f2bc-2ec0-4d6a-9061-7f103b23a3e0','admin','2013-01-06 22:11:22','栏目静态化:服务支持 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('40c7b4fe-a97c-4ce8-82df-24ec231c54fe','admin','2013-01-18 20:54:54','添加菜单 其他信件 成功<属性>e01bb9aa-b122-41ac-b28c-e97993c2d250<属性>其他信件','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('40e0db86-d20a-473c-9430-a721d021219e','admin','2013-01-18 22:27:02','修改菜单 个人信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('418e2629-39e8-47d9-b776-2fc689fd5f95','admin','2012-12-21 20:17:02','添加角色菜单权限(站点信息员-站点管理)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('41954b9e-760d-4bbe-a0ef-52187dd3aa4c','admin','2013-01-06 21:52:16','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('41ca211b-92cd-4a94-a74d-c3ddcca3cd7e','admin','2013-01-23 19:39:42','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('41d39f42-8847-4077-aef8-cf211084f1f0','admin','2013-01-15 19:29:23','添加信息(s)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('421ea982-7e79-4f48-8a3b-8b1a795808e7','admin','2013-01-16 22:44:39','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('425ae115-3771-4c92-8199-0e0082967560','admin','2013-01-23 19:56:17','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4266906b-38d3-4d29-8c27-d82fa3d96188','admin','2013-01-31 19:28:28','修改菜单 会员组 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('42a7c493-90b4-423d-ad70-e037eb4ed4d9','admin','2013-01-17 21:44:53','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('42ea404b-fe11-41dc-8b81-c555e752e2c6','admin','2013-01-14 20:11:22','修改菜单 角色管理 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('43a3d1a8-c21d-4468-ab04-bfb76f297b17','admin','2013-01-17 21:40:49','修改模板文件(templet\\freecms\\信件.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('43f78ad0-acca-42c1-b285-df6b26c96953','admin','2013-01-19 12:46:50','添加角色菜单权限(管理员-其他信件)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('440fd115-e0c7-4e29-b8f4-aa40061ee17f','mail','2013-01-19 12:45:24','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('441f6b4a-1a0d-4e90-beb5-13324a0339ed','admin','2013-02-01 21:13:28','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4469f720-2b53-44b9-847c-c53c7e613f86','admin','2013-01-16 22:04:14','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4472cd95-95d8-4b8a-99c9-fb22c2537821','admin','2012-12-30 17:53:45','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('44c3be98-b1d8-4883-b78d-eee19314c0ee','admin','2013-01-17 21:41:24','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4513e40d-815b-4c42-8bc0-73031e01aedf','admin','2013-01-16 22:12:47','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('46677e96-82f7-413a-9ae5-1290fa5a15bd','admin','2013-01-16 20:19:55','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('46e2073d-45e9-4971-89b6-1da5327a1cb4','admin','2013-01-30 21:49:47','添加操作按钮 添 加 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('472e176d-888c-48fe-8ade-08fdc50287a5','admin','2013-01-16 22:13:14','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('473ce4a3-11f1-42f4-a16f-4141d6c6a486','admin','2012-12-26 19:52:09','修改链接(测试链接)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('473f5a49-accd-4ad2-b9d2-de68196456b4','admin','2013-01-19 12:43:13','退出系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('47900193-d692-4989-b2b8-82fa24be6ff7','admin','2012-12-20 20:53:27','添加操作按钮 a 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('47bf4e91-0bc5-4367-a959-e6cdd6cedbd0','admin','2013-01-16 21:55:58','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('47db5b0c-05d2-4005-9b3e-ec2e3911641c','admin','2013-01-18 19:22:24','添加模板文件(templet\\freecms\\信件提交处理.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('47eb877f-e303-4ce2-bbf0-aa8ae48a39f6','admin','2013-01-16 20:29:14','更新信息(ds)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('47eda413-33ee-48b5-a695-bb69cca53a43','admin','2013-01-16 22:13:55','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('48124d3b-04c7-443a-b2a4-be664cc66d34','admin','2013-01-06 20:43:56','添加链接(Google)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('482ada57-8185-4a98-ab56-b84daec47a8d','admin','2013-01-19 16:21:49','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('485b028a-c599-470e-8d32-ff1fbf8568e7','mail','2013-01-19 12:47:04','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('48ad3037-589d-4cf1-80cb-8e1c1d40d238','mail','2013-01-19 12:44:52','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('49119332-3ea0-4537-9c8b-68025a2d3c23','admin','2013-01-18 20:54:46','添加菜单 个人信件 成功<属性>f0709c68-3af5-413b-8503-0f0bc2a3eb74<属性>个人信件','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('49232ea0-f7d6-4aad-962a-ff09f443285e','admin','2013-01-22 13:25:06','修改操作按钮 设置选项 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('493afb77-2554-4785-ab57-9fe07ff7ef5c','admin','2013-01-18 22:47:05','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('49987d73-7f83-480e-9e1d-3253ded4ac24','admin','2013-01-06 22:11:26','栏目静态化:讨论 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4a1396f5-dbee-4ae2-8da8-9a15078a13f9','admin','2013-01-16 21:53:17','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4a2b2ba1-b721-4c8a-94f4-8139ade63cbf','mail','2013-01-19 12:54:28','添加操作按钮 转 交 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4a632dda-1d05-484f-b95d-307bd3de936b','admin','2013-02-01 16:40:55','修改会员权限(发表评论)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4abd274c-2b48-4095-96ad-6c91a13b12e9','admin','2013-01-16 22:22:18','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4b0119ef-1cea-4d3f-92a1-23272548e563','admin','2013-01-23 20:11:07','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4b492f99-af3c-495b-a709-4b85feefa444','admin','2013-01-16 19:46:36','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4b517bb7-b7e2-41df-9a51-0ae12ac47d6e','admin','2013-01-06 22:11:21','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4bbab0b8-ca33-4127-9669-cb6654d0f8df','admin','2013-01-06 20:41:11','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4bc4fcd9-bec1-4cad-8b1f-d90f68a2840f','admin','2013-01-16 19:58:47','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4c220454-f3f7-48a6-9e1e-d715340a0e2b','admin','2013-01-22 20:38:46','添加操作按钮 f 失败:org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`freecms/freecms_answer`, CONSTRAINT `FK_question_answer` FOREIGN KEY (`questionid`) REFERENCES `freecms_question` (`id`) ON DELETE CASCADE)\r\n### The error may involve cn.freeteam.cms.dao.AnswerMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### Cause: com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`freecms/freecms_answer`, CONSTRAINT `FK_question_answer` FOREIGN KEY (`questionid`) REFERENCES `freecms_question` (`id`) ON DELETE CASCADE)','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4c28cd41-2463-4d00-a855-7be0178567bd','admin','2013-01-16 21:54:43','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4c2df66d-4156-47d2-bf33-f09c8dbacc74','admin','2013-01-16 19:36:37','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4c2e0ae2-b2d7-406b-906f-8d106787c11a','admin','2013-02-01 13:11:43','添加会员组 新手上路','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4c333dc0-7674-487d-90e2-6657cbfc1435','admin','2013-01-18 19:16:12','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4c968a30-6a57-47ad-8920-cb13df662909','admin','2013-01-23 19:55:36','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4cc4ff4e-5e6d-41bd-9716-712c02214459','admin','2013-01-19 12:45:18','退出系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4d7b083e-7eca-4ecf-9fb9-2bb63214830f','admin','2013-01-17 20:03:22','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4d85688f-fc73-4ba1-9395-d519b83082b5','admin','2013-01-06 20:41:06','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4d8f28e6-de25-4249-813d-62f44bd5558b','admin','2013-01-19 13:49:01','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4da84070-ac60-45e9-ad1d-ac58a43ad266','admin','2013-01-06 20:36:21','信息页静态化:欢迎大家使用FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4dfdf780-c1eb-42a4-9f14-830dc793936b','admin','2013-01-10 22:04:12','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4e17a317-dacd-4a32-b025-1c10007d00fc','admin','2013-01-16 19:22:32','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4e958762-8a1d-4022-ad5a-85bb5d3e8f97','admin','2013-01-24 20:44:41','删除站点 t','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4f05ca98-a7a8-4ceb-ba86-07e22ebaa3aa','admin','2012-12-30 17:01:45','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4f9082f3-9e63-46dc-a02f-405d05103b18','admin','2013-01-16 19:39:44','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4fc64cdc-af0d-43c5-8364-46012df92b88','admin','2013-02-01 16:56:20','添加会员权限(投稿)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4ff3e938-852f-4cb5-930f-e7e2bf02fbc0','admin','2013-01-16 22:15:39','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('506479f5-a604-4489-8828-f37c35980b57','admin','2013-01-18 22:27:09','修改菜单 其他信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5098c7ee-4bc9-474a-83c1-82f3c19908d1','admin','2012-12-30 17:53:10','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('50e02465-0864-4ead-9738-23db32347959','admin','2013-01-28 20:15:46','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('512e7171-2322-4d54-ab32-dfec1851d9d3','admin','2013-01-23 19:51:16','栏目静态化:动态 第4页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5158ba5f-2d92-4dbb-a41c-869c5c521ef9','admin','2013-01-04 21:37:15','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('51a6ba9f-1eb8-4115-88e2-5d943b6f933d','admin','2013-01-10 22:02:04','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5246383d-de76-4fdc-9ab0-c08d3590a29b','mail','2013-01-19 12:54:42','添加操作按钮 办 理 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('528bb158-b6dd-481e-8fc1-c995ae570800','admin','2013-01-15 20:15:25','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('531b9c33-4b4a-4a83-b04e-cfa2ba464b3f','admin','2013-01-16 22:03:33','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('53bf3571-019e-402d-9e83-4103ee08074d','admin','2013-01-04 20:24:44','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5419a42c-990d-4d61-ab3c-a097473baf41','admin','2013-01-30 21:49:57','添加操作按钮 编 辑 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('546bfa7e-f4d9-443c-b412-44020955943a','admin','2013-01-16 20:19:43','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('547abc60-910c-468a-895e-3814388da66e','admin','2013-01-30 22:08:25','修改会员权限(发表评论)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('549c619b-8456-4986-b8c7-37533a2a2748','admin','2013-02-01 20:53:24','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('54a6dd4e-9b28-44b4-b2bd-de83c1753650','admin','2013-01-18 20:57:31','修改菜单 个人信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('54b7ded6-4332-410e-995a-ba5617b9c883','admin','2013-01-16 20:13:19','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('54fdd5c7-2401-4468-883b-f0601b1f6fb9','admin','2013-01-16 22:05:10','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('55ccadb7-d77d-4435-bf93-fc8fcb4147c9','admin','2013-01-22 13:15:38','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('55ff2f76-81c6-45b2-9f7f-e6f282f31c0f','admin','2013-01-17 21:48:39','修改模板文件(templet\\freecms\\信件.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('56432a27-7bb2-42cc-954b-3b988b76770e','admin','2013-01-04 20:22:45','添加模板文件(templet\\freecms\\搜索页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('56931bda-219c-4301-a1b9-ee7f02ed7824','admin','2013-02-01 13:06:30','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('56d94d73-2ea1-4f07-9f6e-05545fc0d411','admin','2013-01-16 21:50:01','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('56e0cc81-299d-4dc6-95bb-a96f99c44390','admin','2012-12-25 20:05:05','删除模板文件(templet\\f392cd10-13b6-4208-a5a9-77c7fd30bcf5\\test.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('56f72120-d48a-49ac-af67-dd63aafe7809','admin','2013-02-01 16:59:37','会员组授权(新手上路 投稿;)','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5864dea8-7f7e-457e-a05f-acef8ed64cb4','admin','2013-01-10 20:32:42','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('58c4fba9-d578-4d98-864f-bc9390f0ea32','admin','2013-01-22 20:49:03','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('58d272fc-816b-41c3-b94e-388181b4635c','admin','2013-01-18 19:19:43','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('59d89f50-0043-45e8-9e50-33934d824680','admin','2013-01-17 19:55:07','添加单位 信件 成功<属性>1304e48c-773a-4afa-b4e5-e087648e4a17<属性>信件','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('59e74799-acd9-4c46-8b36-4b18b7574d93','admin','2012-12-25 20:06:34','创建模板文件夹(templet\\f392cd10-13b6-4208-a5a9-77c7fd30bcf5\\test)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5a0ddef7-79d5-499e-9793-54f3a5b3afdb','admin','2013-01-18 19:18:17','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5af480d8-d0ba-487a-a600-99f55b57649f','admin','2013-01-17 20:09:33','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5ba43c68-12f6-46e1-bff4-7bb689ceaae2','admin','2013-01-06 22:01:01','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5bb6fea7-e360-463d-9d91-05889964f8de','admin','2013-01-15 20:20:21','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5bd10a63-3d4c-4fc6-a734-8e6aefe132aa','admin','2013-01-16 21:55:58','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5bfacc0e-18a8-41ec-a9a8-3ff6cb9aa507','admin','2013-01-22 13:19:34','添加操作按钮 删 除 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5c569e25-e710-40b4-bb46-4a33c3934749','admin','2013-01-22 19:35:39','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5da7ab32-6977-4b9b-b7b4-f1195759ed91','admin','2013-01-16 19:00:07','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5df06668-98c9-471b-8813-2c007e095c43','admin','2013-01-15 20:16:00','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5e38e74f-9548-4312-85a3-02d42b9b0923','admin','2013-01-17 21:30:50','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5e9341f2-7e37-42a0-979e-c84796520acc','admin','2013-01-18 22:26:07','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5ea19c22-395f-423b-8fc6-8d90c7844e39','admin','2013-01-31 19:27:43','添加操作按钮 编 辑 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5f5cfe26-f8a6-4f93-8e74-909e1ac00417','admin','2012-12-21 20:17:09','添加角色菜单权限(站点信息员-站点设置)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5f713e1c-d4c6-4db1-9fda-7d98a7ad650c','admin','2013-01-10 22:04:09','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5f74e889-5eeb-4358-9226-1d287ff57399','admin','2013-01-22 13:25:39','修改菜单 互动信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5fea5fca-12ea-45b9-a2f3-b97b4d34f583','admin','2013-01-06 20:36:21','信息页静态化:FreeCMS 1.0 发布','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('600a75ee-c6d1-42e0-b0b1-c5fbed217e93','admin','2013-01-29 19:19:32','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('613acd77-172c-4b6f-9a6c-992f2ca4308d','admin','2013-02-01 20:14:24','修改操作按钮 启 用 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('614bc935-0d14-46b5-8283-66e4f889ebad','admin','2013-01-22 20:40:57','添加调查选项 大本营 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6191b119-bc0a-4024-bc75-e7d98b4cbac5','admin','2012-12-30 17:46:41','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('62c649bd-1ef2-4736-9066-35e430a811c4','admin','2013-02-01 16:36:15','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('62ff6ff3-2078-467f-8400-504b63afb261','admin','2013-01-16 22:02:02','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('63dce2e8-514b-4732-8eca-27aa2f9fadf7','admin','2013-01-28 20:15:36','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6404245f-fba0-4742-934e-3a1bff7a13de','admin','2013-01-24 22:50:41','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('640b4e40-aada-4e0e-8f07-c81a64915450','admin','2012-12-30 16:08:43','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6415514c-6737-4355-a7e5-c92ae1f68f9d','admin','2013-01-31 22:13:05','添加会员组 czxc','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('648df720-2e03-4490-a294-f7617a4e40a5','admin','2013-01-22 20:00:00','删除网上调查(fsd要)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6494d419-9980-4316-9db0-445c24f3841d','admin','2013-02-01 16:40:18','修改会员权限(comment)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('649de61a-6780-485f-8136-bb325238e02f','admin','2013-01-24 23:02:07','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('64b688fb-6f50-4bbb-9afb-6ba28438bc1a','admin','2012-12-20 20:49:16','删除操作按钮 保 存 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('64b73634-2655-4e4c-9b0e-af269c82607a','admin','2013-01-10 20:00:38','更新站点 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('65b11f03-ce30-4f92-8186-ea3e984fc2a6','admin','2013-01-16 20:23:45','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('65e7b37f-d4f8-4352-8530-63a1ccc81a80','admin','2013-01-19 15:45:04','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('65edb795-08e7-47b5-aa02-5748b48ff147','admin','2013-02-01 12:46:41','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6665b29a-9da8-4068-afc7-493a68006763','admin','2013-01-22 13:19:23','添加操作按钮 设置调查项目 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('674ef65d-38c8-43a8-9e82-ce413814c86e','admin','2013-01-30 22:08:06','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('69138391-585a-41a1-a3f3-a82c3da90fd0','admin','2013-01-16 19:34:45','信息页静态化:视频','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6965e600-b6d7-4961-a4e7-bb99267848be','admin','2013-01-17 19:48:53','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('69b8f24e-c216-4344-9e61-5b01bfeaae51','admin','2013-01-24 22:52:45','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('69d49bf4-d16b-46aa-97e7-fb4dd9618ed0','admin','2013-01-19 12:45:17','添加角色菜单权限(站点管理员-其他信件)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('69e7d108-d878-4e80-9548-746d4ed36dfd','admin','2013-01-24 23:05:54','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('69eff7c3-d221-475b-9bb4-2c088ae86703','admin','2013-01-18 19:17:44','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6a07a64d-5b36-4acc-a67b-56f4b20d793b','admin','2013-01-16 22:18:43','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6a897457-f430-469b-a757-edcaab29ef92','admin','2013-01-24 20:34:57','添加站点 t','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6a957daf-8da4-41a0-86f9-2c6ed4fd0504','admin','2013-01-23 18:50:54','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6b168e12-653d-4b2a-9dcb-b2d0100ea41e','admin','2012-12-30 17:53:06','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6ba545a6-e81c-4e89-9e28-724af16a02b9','admin','2013-01-17 19:57:23','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6bc883b1-bce7-4256-a337-b8e674302f12','admin','2013-01-23 19:49:29','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6d1a26f7-fca3-42fe-a3e0-0f79c4bedc49','admin','2013-01-04 20:26:16','修改模板文件(templet\\freecms\\搜索页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6d686cf3-9f13-401d-ba4b-7c54c8318e79','admin','2013-01-29 20:38:04','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6ec9fa10-cc9a-4e6b-ad1c-9d7a586b26b8','admin','2013-01-15 20:57:53','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6f6ebd68-183b-4b3e-8573-a6346e52e727','admin','2013-01-18 22:43:05','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6f9f93a0-5e06-4f9b-9704-a20fabf12070','admin','2013-01-16 22:22:29','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6fbdb35e-7531-4da9-924e-e090150c9e2c','admin','2013-01-22 19:50:32','添加网上调查(fsd)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('703f18ea-ed5b-408d-b5cf-07188ea616db','admin','2012-12-20 20:41:26','添加操作按钮 保 存 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('71285979-8b96-4e5d-b6b5-9aee9dd0726a','admin','2013-01-18 19:45:00','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('71a0da3f-a584-44c9-8bfe-477dcac31529','admin','2013-01-23 19:03:15','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('72147d60-38e9-485e-a5f1-99cd301ee8e3','admin','2013-01-22 20:53:46','修改调查选项 第二个选项 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('72b2cc64-fd45-469f-be29-1486158cbb31','admin','2013-01-24 22:34:58','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7313d40c-62e6-4df7-a799-5246ee25609c','admin','2013-01-16 21:55:58','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7336d9a5-9da5-43fb-9d91-9ce2b43ebdab','admin','2013-01-19 12:34:17','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('73f7a67d-2100-499b-b4bf-412274e2e035','admin','2013-01-16 20:27:58','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7449c1f9-ca3a-4538-bca0-71fd6ac93d08','freecms','2013-01-22 21:02:18','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('747c910c-3dc6-4d68-a2b9-7f4d2b0b8560','admin','2013-01-16 22:03:33','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7490f1c3-3741-44fb-badf-c1d2af82e81b','admin','2013-01-04 20:21:11','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('74d29d12-54e4-4143-b517-0126fe542e42','admin','2013-01-19 16:20:32','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('75071c2e-5511-4f7f-b5ff-33ade1abd292','admin','2012-12-30 17:38:04','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('758f0a5b-3d20-4ee9-8fe8-04218b02b5c6','admin','2013-01-29 20:41:14','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('76326032-cd89-4e6d-83c1-10975178204f','admin','2013-01-28 20:12:09','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('768a4de6-afe0-4cc4-9704-0b803ec814ea','admin','2013-01-16 21:55:00','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('768bfbfc-dbb9-4753-b9c7-aa5f9c1a5e85','admin','2013-01-04 21:36:46','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('76a99b49-5c2d-4531-b657-57d3d5658b98','admin','2013-01-16 22:00:27','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('773bcf11-9f6a-415b-a39c-c52e8a95c57f','admin','2013-01-24 20:51:37','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7875e0d7-beec-4c60-a851-f58d69edcc7c','admin','2013-01-06 20:24:12','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('789f686a-ebe5-4d4a-b301-c04c3957361b','admin','2013-01-19 16:21:05','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('78a82bcd-1b2f-489a-9a61-a10c11dfcea7','admin','2013-01-10 21:57:45','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7924d3ac-b169-44ae-a54d-fd623e72abbb','admin','2013-01-22 19:55:17','修改网上调查(fsd要)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7996829b-f315-4ba8-9987-9086ecaf798b','admin','2013-01-30 22:07:19','添加会员权限(发表评论)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('79a0f68f-4e57-4488-8d62-b5665036498f','admin','2013-01-31 19:26:41','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('79c4331e-291d-41d1-9394-e6e9ae6c4832','admin','2013-01-23 19:51:07','栏目静态化:动态 第2页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('79d6a96f-e450-4a21-be5f-79e955e50be3','admin','2013-01-17 20:48:22','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('79ee34c4-b7f4-42f4-8bf0-5554efdc283c','admin','2013-01-29 20:50:10','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7a11407d-16f9-47cc-9e01-48d4e45c663b','admin','2013-01-16 22:44:39','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7a41ca6b-bda4-4978-b2f9-6a15b851fc3b','admin','2013-01-19 16:21:25','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7af5bf8b-a3ab-4192-aed8-db499a52d971','admin','2013-01-23 19:51:15','栏目静态化:动态 第3页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7b2bec5e-7a64-4d83-a34a-22392a5ae963','admin','2013-01-31 19:28:05','添加操作按钮 删 除 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7bbecb3e-ba7e-4851-853a-24ae70276aed','admin','2013-01-16 22:13:04','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7d2d3d16-893b-4c5d-a710-7994a3e23a81','admin','2013-01-06 22:11:22','栏目静态化:要点 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7dd7ff3e-04a9-490c-8423-cf6026f53d2e','admin','2013-02-01 21:10:24','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7e11d393-3b47-4b55-97ef-c28c7ba57dd7','admin','2013-01-19 14:38:34','添加操作按钮 转 交 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7e219f0a-7d0c-4618-9723-930b1f28d4a0','admin','2013-01-23 19:46:19','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7fc56e20-56ee-47e7-8a1a-2a7258418014','admin','2013-01-16 22:04:05','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7fc80df4-1f27-43d3-923b-0a6e17614049','admin','2013-01-30 22:08:19','修改会员权限(发表评论)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7fe78866-bb08-4ecc-9a19-b528b876b8eb','admin','2013-01-19 12:55:23','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('80d00604-3c20-4318-8272-2d519e64d6eb','admin','2013-01-30 22:06:51','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8129c3d7-ee6d-49cf-bdcc-25296e58242c','admin','2013-01-22 13:18:55','添加操作按钮 编 辑 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8134b5cc-b6ec-4b6b-81ce-abb22b190b82','admin','2013-01-06 22:11:24','栏目静态化:常见问题解答 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('81641c71-e741-46e4-80e0-13acdc157cf3','admin','2013-01-29 20:38:42','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('81ed1c8c-10d8-4146-81fe-98cc773f6612','admin','2013-01-06 22:11:25','栏目静态化:获得支持 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('82785a30-25f1-4ef9-869d-7b35b432dc6a','admin','2012-12-30 17:40:54','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('82d6150d-72fd-46af-915e-7d49cd27c537','admin','2013-01-16 22:03:33','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('83046615-a91a-473d-8012-fa1ffcaeb11e','admin','2013-01-24 23:02:23','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('832a3fc6-a222-4d4c-a471-02a0c173a733','admin','2013-01-16 22:18:54','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('835916de-4b6b-4497-ac56-f17ade742c7a','admin','2013-01-16 22:05:01','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('83b51b4f-ab5c-4b8c-9ee6-3f26e99cd89e','admin','2013-02-01 20:14:17','添加操作按钮 启 用 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('840ee358-39d9-4788-a7ae-6df5bdbd923b','admin','2013-01-16 22:06:05','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('853851e3-978f-4980-a66b-8f987229ea8f','admin','2013-01-22 20:40:40','添加调查选项 这个好码 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8558fccb-b879-4fa7-88e7-04d9f2e3f729','admin','2013-01-22 19:50:19','dfsfsd 信件办结','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('85aed550-8dde-416e-b867-451a3b103305','admin','2013-01-24 20:51:22','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('85c46cb3-a6d8-49e6-b777-8b35669f4178','admin','2013-02-01 13:07:54','删除会员组(czxc名称)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('85f7a0ec-00ac-4bd6-bbbe-bac3e1209b7e','admin','2013-01-22 19:59:50','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8649ccac-cf95-4a7c-a1ec-f67a34e5d673','admin','2012-12-30 18:01:10','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('86cc7776-6188-458a-9d1b-38cea81e8559','admin','2013-02-01 19:18:55','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('86d35c52-eadb-4a2c-8f10-3d8aa681140f','admin','2012-12-25 20:08:44','重命名模板文件夹(templet\\f392cd10-13b6-4208-a5a9-77c7fd30bcf5\\test)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('86dde417-eba1-4084-a9db-722dbcd8afb2','admin','2013-01-16 22:12:13','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('87384b66-eb1c-4bd8-a6d8-931d01ddd0b7','admin','2012-12-30 17:47:05','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('87deced4-cef0-4684-8a13-ecf96d631887','admin','2013-02-01 21:12:46','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('87e1fbdc-0808-4e1e-aadb-765c1283b529','admin','2013-01-06 21:59:11','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('87e298fb-f663-4f4c-9f41-9646336d2d95','admin','2013-01-18 20:42:05','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('87e97702-1538-491a-810c-a7412cc8874d','mail','2013-01-19 12:43:18','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8839b965-58df-4e11-90b5-42d53bfef0b2','admin','2013-01-18 22:57:17','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8868050d-b07a-4e2a-b017-7f9808688897','admin','2013-01-22 19:49:58','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('886d1000-8a29-45ac-a2c9-361655f833c3','admin','2013-01-22 21:00:13','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('88afd805-b72a-4e3a-baa2-cbe0b2d5810c','admin','2013-01-18 19:58:22','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8b1ec43d-45ec-49a5-9700-25022bcebfac','admin','2013-01-19 12:46:48','添加角色菜单权限(管理员-部门信件)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8b254d68-18e0-437d-a495-a15e08a146bb','admin','2013-01-17 21:21:57','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8b94fa0b-569d-4181-b435-331d8dc98dac','admin','2012-12-21 20:27:35','删除角色(站点信息员)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8bce7ed7-0ed9-494a-91d8-e3fae422d444','admin','2013-01-10 21:57:42','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8bd387d4-03c0-4ecf-8a75-7807f58faacc','admin','2013-01-05 22:32:35','閫�鍑虹郴缁�','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8c8db960-8517-4a5e-9554-dcf5199ba69b','admin','2013-01-19 13:58:16','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8ca4ba0d-da9a-40a8-a3b4-7cc54597dece','admin','2013-01-16 20:20:31','添加信息(地)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8cc331f7-a4df-4012-9651-1379016fbacc','admin','2013-01-16 20:25:50','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8cd99503-0470-4dae-93b8-b4167d28077e','admin','2013-01-16 19:35:50','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8d5ae2c2-17c4-4d17-b03b-da7e00c8396f','admin','2012-12-30 16:12:17','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8d6f8086-177c-4e52-97f1-4fb9f7100f01','admin','2013-01-19 13:46:18','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8deb22ee-34d8-472a-8019-a53b5b765e18','admin','2013-01-23 19:56:18','栏目静态化:动态 第2页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8e59007e-8406-40c8-a685-eb333ce57157','admin','2013-01-19 16:25:44','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8eeb6f0e-f186-4548-bb67-0ba4a8be0cf6','admin','2013-01-21 14:06:58','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8f82096f-466e-4ecc-80e0-ecf68339b090','admin','2013-01-15 19:29:24','信息页静态化:s','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8f9a4635-9869-4b75-93b5-c454f2657649','admin','2013-01-06 20:35:06','信息页静态化:欢迎大家使用FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('904fb5a3-991a-42f7-87b1-3d64fc57cc9b','admin','2013-01-24 20:31:46','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('911d2a43-45e4-4d4f-8645-5a7fc8c67d71','admin','2012-12-30 17:53:30','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9124ab71-b54b-48c0-9509-c0858e22d48c','admin','2013-01-06 20:36:04','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('91d326c9-0819-4b9f-8095-bcd1ee13b996','freecms','2013-01-22 21:02:22','退出系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('926448d7-fe29-4ba2-bf40-933c620691c2','admin','2013-01-16 22:17:18','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('92a3f128-5dcf-4353-9807-65601b4c1626','admin','2013-01-24 20:34:44','更新站点 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9334f4f6-b2b3-475d-b150-f7f5aaf3cb30','admin','2013-01-06 21:55:39','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('93dc92ce-4026-4b1b-96ff-c943a3ad7c8b','admin','2013-01-16 22:11:29','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('93ea53a1-8fd9-45e6-a76b-510be98e73f2','admin','2013-01-16 22:05:10','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('941e7b30-c8dc-4441-8526-813cc9f61df9','admin','2012-12-30 17:49:48','更新信息(欢迎大家使用FreeCMS)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('942d7012-b394-4fba-9f7e-c032a10bce4a','admin','2013-01-19 13:41:56','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9477910c-4d90-480a-9520-721dd84c5d88','admin','2013-01-17 21:44:02','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('94f7a051-ac8d-42b4-9e53-272214a99517','admin','2013-01-18 20:54:37','添加菜单 部门信件 成功<属性>742470cc-eaf1-48c4-805c-44c9936a7622<属性>部门信件','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('951981c1-8bcf-470c-b373-904cf47e4086','admin','2013-01-24 20:32:36','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('954955f4-856c-4a17-915a-8563c3769748','admin','2013-02-01 12:47:35','更新会员组 czxc名称','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('95f4e4d0-9532-4e54-953b-9ac17a4167a2','admin','2013-01-30 22:08:50','删除会员权限(发表评论)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9727c12a-551c-453e-9e88-350060b7131e','admin','2013-02-01 12:54:35','删除会员组(dsad)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('974d52c3-6404-48e7-b719-3134d10236ac','admin','2013-01-23 20:05:19','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('97665810-d5aa-476f-a2e6-36d335bbc2a5','admin','2013-01-18 20:30:31','修改模板文件(templet\\examples\\用户\\提取可以接收信件的用户.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('97c1b5a0-72af-473c-a93b-f4731120e52e','admin','2013-01-17 20:03:56','添加用户(mail)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('97eb80e4-152f-4ce8-8475-301d4bd0d125','admin','2013-02-01 16:56:32','更新会员组 新手上路','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('984ee926-46e9-4b01-a56e-062ba0b58248','admin','2013-01-19 13:37:30','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('98e902b6-bccc-4281-934f-62f3cf2b06a8','admin','2013-01-16 21:56:48','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('98fccc8e-b237-4886-81b3-9429756f501a','admin','2013-01-19 14:38:09','添加操作按钮 转 交 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('99711401-91d0-42af-876f-6ee72bd16636','admin','2012-12-20 21:01:19','删除操作按钮 sa1 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('998857f1-4bcd-49de-bd09-d317f064efb6','admin','2012-12-25 19:27:12','添加模板(测试模板)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('99ea1c2a-320f-48c3-9402-cf6657a4b294','admin','2013-01-19 16:54:10','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9a42d3ba-5436-4902-b87e-656e7657c749','admin','2012-12-30 17:01:35','修改模板文件(templet\\freecms\\inc\\头部.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9ada4114-748e-4c21-8517-e7fa679a0c92','admin','2013-01-22 20:36:05','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9bd023ec-e6bc-4773-b6ab-1debd9acf2c9','admin','2012-12-25 19:39:27','删除模板(工)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9c382626-b763-446c-8a78-66edbafb930e','admin','2012-12-24 20:07:06','添加站点 一级站点','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9c51c7ea-e5d9-4719-9e0c-a73f7b10073c','admin','2013-01-16 22:02:01','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9cc82b2a-2d1e-4a0c-9611-3d7647f5db77','admin','2013-01-16 21:59:24','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9ccc25ac-b0d1-48fb-849f-074b18278505','admin','2013-01-16 22:22:28','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9db649da-f4f6-4297-98f5-4e6a6eda9011','admin','2013-01-18 20:29:55','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9eb5e757-c0a3-4cf7-874d-fb7b1b36e10e','admin','2013-01-06 22:11:24','栏目静态化:下载 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a095f882-db59-4f13-a887-c45736dcd931','admin','2012-12-21 19:58:13','添加单位 fds 成功<属性>2b5c7d7e-1d35-465c-b43b-57a209bd1914<属性>fds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a0bc4958-5999-40ba-921b-25b247f155d4','admin','2013-01-19 16:54:17','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a138c103-52bd-4860-849b-695c76228ec8','admin','2013-01-29 20:41:09','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a16f1ff5-9c6e-40f4-af98-f7f06f830527','admin','2012-12-30 17:40:14','更新栏目 动态','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a1b3ff9a-68bf-4afe-9947-c9ef0c1e98eb','admin','2013-01-16 21:53:17','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a25e7a61-097b-49b4-9842-59c7106adba6','admin','2013-01-18 20:49:08','修改模板文件(templet\\examples\\信件\\给个人写信.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a2863561-4075-48a1-b565-39c9fc8f43aa','admin','2013-01-16 22:15:50','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a2df775d-9541-4db1-a98b-ab04243234fd','admin','2013-01-30 21:50:22','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a3102b7c-b21f-4414-96e8-69cd308e473a','admin','2013-01-19 16:57:35','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a32280fd-4f5f-44a2-9efa-c6d9f68ab18d','admin','2013-01-14 20:38:55','添加操作按钮 保 存 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a37a6db9-a5c2-44d3-a3b9-88786710ea9b','admin','2013-01-17 21:19:48','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a5631b3d-d008-4810-bc72-84beed4e3f9c','admin','2013-01-22 19:33:37','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a5a67947-11a1-49f1-94cc-62d7c6ed644d','admin','2013-01-18 19:58:03','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a601f4d9-5c96-4e74-8868-15c714d7a6c6','admin','2013-01-19 15:17:44','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a674be21-e5aa-4b23-9939-3d6eb959cdfb','mail','2013-01-19 12:40:49','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a68994c6-3c65-4852-89d1-2bdb1d4763b2','admin','2013-01-24 22:15:32','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a76b8d86-c17b-4924-b19b-4e48f731d5d6','admin','2013-01-19 12:43:08','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a783390d-8f03-4887-a5db-47064d15d7e0','admin','2013-01-24 20:32:41','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a79bb39e-3538-4052-a74b-32e5f70eef53','admin','2012-12-30 17:47:00','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a7d9b09c-5f90-440a-88a7-af97fce391c6','admin','2013-01-19 16:56:59','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a7df3fcd-2615-409b-b727-7faab20343ea','admin','2013-01-16 22:22:28','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a884d7bc-56a3-4471-92a6-026652172607','admin','2013-01-22 20:53:09','删除调查选项 这个好码1 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a8e163da-92c5-4104-a198-0cac15293808','admin','2013-01-19 16:48:17','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a8fd2dd6-d189-44b7-bc40-d9c2c568bf97','admin','2012-12-25 19:39:06','删除模板(测试模板)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a949df2e-64be-407c-9b42-e11f5a8655b8','admin','2013-01-16 18:46:37','信息页静态化:s','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a94a9344-ca18-4d85-8465-9b624513c119','admin','2013-01-15 20:15:37','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a95d46a7-9516-41eb-a6e4-79f23488c4d5','admin','2012-12-25 20:11:12','删除模板文件夹(templet\\f392cd10-13b6-4208-a5a9-77c7fd30bcf5\\test1)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a99b923d-7dbe-4203-b63e-d451b9d9852b','admin','2012-12-24 20:06:27','编辑用户(freecms)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a99c2759-8159-4d27-8a12-127370575e74','admin','2013-01-24 22:59:15','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a9cf0219-777f-4ebd-8541-cc6c0f645c0d','admin','2013-01-19 16:22:12','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('aa2d1788-005a-4064-90c3-febe852c013c','admin','2013-01-22 20:49:16','修改调查选项 这个好码 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('aa64d14e-d517-40c7-990b-5353ff3e6895','admin','2013-01-15 19:47:53','信息页静态化:s','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('aa7a14d3-38ad-4dd8-8583-44fb16882a18','admin','2013-01-17 18:54:04','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('aad9042f-6e9a-4704-aa3d-9df521c1aac9','admin','2013-01-22 20:38:34','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('aae5a839-261e-4b25-bd1f-df882711f5e2','admin','2012-12-30 17:03:36','修改模板文件(templet\\freecms\\inc\\头部.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ab08ffb3-324a-48ac-bc23-ca33de2432f3','admin','2013-01-16 21:53:00','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ab2b3aaf-9f78-42e0-a05f-be3fa66d56f2','admin','2013-01-23 19:38:05','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ab92d26e-a521-450a-aee9-1bc7479ca6ab','admin','2013-01-06 22:11:23','栏目静态化:源代码 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('abe461a7-465a-4470-ba73-c1c7454b83b0','admin','2013-01-22 20:38:52','添加操作按钮 dda 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ac596491-b252-4c2f-b3ce-968005696038','admin','2013-01-31 22:15:31','添加会员组 xzc','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('acce6123-b10a-4713-bcc9-c61760485ab5','admin','2013-01-04 20:28:22','修改模板文件(templet\\freecms\\搜索页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('acfcbd3f-8ef7-4f34-b1f2-6df0e77c898f','admin','2012-12-20 20:53:31','删除操作按钮 a 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ad3a437d-cc7c-4418-8797-626e36075114','admin','2013-01-22 20:50:26','修改调查选项 这个好码1 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ad9e117e-25a6-4b84-8135-151a3e535563','admin','2013-01-23 19:05:16','添加模板文件(templet\\examples\\网上调查\\questionPage.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('adf1495d-26e4-4dca-bd87-10ec1a736c91','admin','2013-01-17 21:41:41','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ae7f0792-2f97-4a17-8ae2-d5d6a5a6bbc6','admin','2013-01-10 20:15:27','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ae95ae1c-fb2d-4e9c-99db-f1e2257ad05a','admin','2013-01-31 19:27:33','添加操作按钮 添 加 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('aec163d1-f067-4545-bc98-a2e904432f84','admin','2013-01-14 20:13:16','添加菜单 系统配置 成功<属性>ea3034c4-5a98-4a8a-a175-7c43e42aa939<属性>系统配置','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('aed40a9a-3efe-416c-812e-f641845eb308','admin','2013-01-17 21:20:55','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('afccb631-64e3-4f79-a4be-83ec713c23a7','admin','2013-01-31 22:05:52','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('afd423ff-1331-4c54-a583-0b13d34febb8','admin','2013-02-01 19:19:31','会员组授权(新手上路 发表评论;)','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b04f24f1-b1c4-4684-89be-24d43f75a331','admin','2013-01-15 20:25:03','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b0600ffd-4c6f-4a01-846c-f10d26401d5a','admin','2012-12-25 19:39:50','删除模板(要)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b0b97a7c-0ba3-4513-b4f1-482e38946b8d','admin','2013-01-17 20:11:30','编辑用户(mail)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b0c0f5f0-102f-4bb5-8ac5-82100e3fd3f4','admin','2013-01-19 13:52:45','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b155f50f-d7c4-40c0-855b-54bc02e730ea','admin','2013-01-15 20:38:55','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b1a05a6a-34b4-4aa7-bee4-6b4f66d04414','admin','2013-01-23 19:55:18','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b27ef2bd-9a45-4897-b1a1-c3f0ab6d186c','admin','2013-01-16 21:56:53','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b36d4ded-aabe-4060-9e57-a7b64f7ce32c','admin','2013-01-16 22:11:30','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b3fbe3db-1bc3-4b9e-98c3-6880837b31a8','admin','2013-01-21 14:12:37','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b404c126-da9d-48ff-aacd-dd52e2173183','admin','2013-01-16 22:13:04','更新信息(sign)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b4565707-a98c-4465-a8ab-5ce9f69afa87','admin','2013-01-06 22:11:26','栏目静态化:参与 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b45f77c4-f481-4cbc-b4c1-037693b7d3eb','admin','2013-01-16 22:04:14','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b49025cc-7e75-4eb7-8d21-6ba16f78bfb1','admin','2013-01-23 19:02:09','修改模板文件(templet\\freecms\\question.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b4c2e822-5634-4082-9f66-3056166e07ee','admin','2013-01-06 22:11:25','栏目静态化:维基 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b54b90e0-4518-4cfe-ae05-b82ebf6e621e','admin','2013-01-22 20:52:59','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b57e3ed9-3821-4aed-ba87-a328fd17b16d','admin','2013-01-19 16:17:15','添加模板文件(templet\\examples\\信件\\使用查询码查询信件.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b5ffbcf0-0f33-4b4c-a23d-5ba308fe8e5f','admin','2013-02-01 16:40:07','添加会员权限(fd)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b63766b6-88c5-4830-84b8-4832afbc3b26','admin','2013-01-18 20:30:09','修改模板文件(templet\\examples\\信件\\给部门写信.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b6510761-7ab6-42ca-8fdb-1afa78713eeb','admin','2013-01-06 20:43:36','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b6766b3a-65f0-4129-b979-e689fc5c9251','admin','2013-01-10 21:53:48','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b681fc3f-6204-4814-848a-875e05461ab5','admin','2013-01-19 16:58:16','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b72fee79-b85a-4fc0-801b-e9a48b86c90e','admin','2012-12-30 16:12:49','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b7448c18-f239-46cd-98b3-944a803907f0','admin','2012-12-30 16:12:54','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b795ee8c-18f4-4219-bbfb-6771b15fd735','admin','2013-01-19 14:00:27','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b7a4f683-b7a9-4a31-ae1f-1db5535f34d1','admin','2012-12-26 19:51:38','添加链接(测试链接)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b83d8340-5192-4aec-9ccc-1d2d51636343','admin','2012-12-20 21:01:09','修改操作按钮 sa1 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b85f8421-981b-49d5-ad37-7426872623be','admin','2013-01-31 22:11:39','添加会员组 sd','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b87ac2e8-72db-45e1-9e82-ad3191e856e1','admin','2013-01-15 19:44:18','信息页静态化:s','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b8aad8e7-cae0-4803-a68e-9dc1bffd3ee6','admin','2013-01-18 20:50:02','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b905d752-9317-4d4e-b907-67b0aeb119af','admin','2013-01-18 20:55:05','修改菜单 其他信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b96bd30b-63f3-4e20-9af8-47bf3187db17','admin','2013-01-16 20:20:05','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b9ce6582-dde6-4e4b-b937-489f2ac9f187','admin','2012-12-25 19:59:10','添加模板文件(templet\\f392cd10-13b6-4208-a5a9-77c7fd30bcf5\\test.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ba531abb-5cf1-4bfd-8058-ef076b3c4224','admin','2013-01-24 20:43:53','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('bb613643-618e-4bca-a773-1f057d514c21','admin','2013-02-01 12:49:34','更新会员组 czxc名称','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('bb79f538-05da-4618-83c2-b2786dfe292a','admin','2013-01-19 16:57:29','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('bc04aceb-2387-4993-b09b-8f8bb73a3093','admin','2013-01-19 15:19:44','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('bc8d7fc4-1cd9-47d0-ac03-cba072f86704','admin','2013-01-04 21:40:49','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('bc9ba6d4-c247-486e-ab36-c3a32f9f82e7','admin','2013-01-16 19:34:00','信息页静态化:视频','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('bdeb8131-7155-4a67-9848-dbb7d27239c5','admin','2013-01-17 21:20:58','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('be7a5026-e7ad-48d4-984e-6b1ba39e9003','admin','2013-01-16 22:13:14','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('bfbb2c84-60cb-46ba-a4eb-a255bae5180d','admin','2013-02-01 20:14:40','添加操作按钮 禁 用 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c0535d5a-de02-4774-acdd-8d28d178fbe7','admin','2013-01-16 20:13:50','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c085b906-143c-476f-987e-05680859351c','admin','2013-01-04 20:25:37','修改模板文件(templet\\freecms\\搜索页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c12a02f1-062e-43b4-8b72-fe5d05209aa1','admin','2013-01-06 21:52:11','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c1568049-7539-4a0a-ae13-53e6e23d76a2','admin','2013-01-22 19:18:07','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c1b88d2c-ddeb-4719-98c4-0687e8048461','admin','2013-02-01 13:12:56','删除会员组(新手上路)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c1ba5bd5-ba50-474d-a46f-78a5698faec5','admin','2013-01-16 22:13:55','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c275637d-da0f-4fd8-9a71-3508716fcdcc','admin','2013-01-17 21:56:15','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c2c52998-d467-40bb-b02f-0f566a1c1b47','admin','2013-01-31 22:10:51','添加会员组 dsdas','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c31fc268-951e-4681-a3eb-a83284d03eaa','admin','2012-12-21 19:58:18','删除单位 fds 成功<属性>2b5c7d7e-1d35-465c-b43b-57a209bd1914','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c3575998-68e3-4bee-ad32-51457dec099b','admin','2013-01-17 20:00:22','添加单位 fds 成功<属性>f5b2d3de-96df-4ce2-a856-8715310c0765<属性>fds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c3c56467-e108-4492-94ca-6c0b97c862a3','admin','2013-01-24 20:44:25','站点设置 t','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c45d65f5-440d-4d87-a1cf-8e27d295649f','admin','2013-01-19 14:32:37','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c4e655cf-ef47-487f-bc19-96bd87ff8947','admin','2013-01-06 22:11:23','栏目静态化:Bug报告 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c4e97fc7-71e5-4204-a8f2-06a5c76b444f','admin','2013-01-15 19:47:53','更新信息(s)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c5433d42-e3f0-4da4-ae06-07d39ab1213c','admin','2013-01-17 21:42:59','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c56a4236-1ee8-48fd-b10c-d253332eb8cb','admin','2013-01-23 19:49:47','栏目静态化:动态 第3页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c5db63c4-e592-4be0-9f64-3b1efcf0f147','admin','2013-01-16 22:13:50','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c5e5dcae-9edd-49f2-9879-2b44751e1920','admin','2013-01-15 20:58:00','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c67f0a01-09bd-47b7-8d3e-31af8319b89a','admin','2013-01-19 12:45:16','添加角色菜单权限(站点管理员-部门信件)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c80ad2f6-7b29-40e9-82f5-d6bfebfedb87','admin','2013-01-16 21:55:07','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c81065bd-32b1-4894-a803-483e0958621f','admin','2013-02-01 16:00:52','添加会员组 fsd','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c820f5a9-a168-4874-9bf4-68c2b8da9d26','admin','2013-01-18 22:26:56','修改菜单 部门信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c8561ff4-e089-451e-8688-57c21b47f0f2','admin','2013-01-17 21:45:21','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c8630e75-db4a-4d14-8d28-1e506e745e97','admin','2013-01-22 20:40:08','删除网上调查(网上调查)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c9253751-c850-462c-9348-efecca8f4b56','admin','2013-01-16 21:58:06','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c9a7d964-6bc3-4cb9-9085-c8a7ebde6b6e','admin','2013-01-29 20:50:04','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c9dc08ed-85cc-4398-b6ca-bf96da851455','admin','2013-01-23 19:34:55','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('cb283115-590b-458d-b04e-d18f988722ff','admin','2013-01-16 21:59:52','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('cb76313b-c574-4cb5-b333-0c6164642922','admin','2013-01-17 21:30:46','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('cb893a12-ae70-4f9b-8f52-74b93d3ad4c9','admin','2013-01-04 20:24:31','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('cc908fbc-b03c-4593-8930-5dff64713f78','admin','2013-01-16 19:45:22','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ccaa6eb4-1347-4cc8-b09d-8f1f3fbcc49b','admin','2013-01-16 18:44:32','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ccb57eb8-433b-4ca0-8b9b-d7d0125f91d2','admin','2013-01-22 20:58:27','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ccbb3b50-792c-48ed-bfda-3322f9cce3c5','admin','2013-02-01 12:44:58','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('cd18a1ff-94ef-48db-9352-93934e851933','admin','2013-01-22 13:18:26','修改菜单 互动信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('cd8a7bd6-3c44-4610-8012-05fda3e8196b','admin','2013-01-22 20:33:44','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('cde9cd6a-42f3-483b-a248-3b8546ed4673','admin','2013-01-31 20:36:08','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ce200215-295b-429a-8ee4-514a7b145a98','admin','2013-01-17 21:49:53','创建模板文件夹(templet\\examples\\工具类)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d07f9206-4e18-48fa-81d8-49d4e782f168','admin','2013-01-24 22:41:40','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d10484d8-1c09-4c60-b86e-2906aded2dee','admin','2013-01-10 20:32:48','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d163389e-5a43-4153-a31f-ffd243b374eb','admin','2012-12-30 17:05:35','修改模板文件(templet\\freecms\\inc\\头部.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d1887548-fd68-4e08-90e9-584c38c6a512','admin','2013-01-18 19:45:16','退出系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d1b89d2a-9ef5-4f6e-aa22-b8ec19562bcb','admin','2013-01-24 19:19:05','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d1d1e8bb-837d-4855-aefb-64cee058ca74','admin','2013-01-06 21:55:36','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d37e5cc5-54a5-4016-a00e-bc6228b5a437','admin','2013-02-01 12:54:35','删除会员组(xzc)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d3d7836c-0de9-4d21-92c3-1bb7fe59f5e6','admin','2013-02-01 20:13:54','添加操作按钮 编 辑 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d44c126e-a305-4fe7-bfe8-865ae9566a5c','admin','2013-01-06 22:02:08','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d48b97f8-f013-4f58-b539-ee0c1bb84208','admin','2013-01-17 21:19:41','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d4a87f05-f157-4e5d-96db-3966f2c722f9','admin','2013-01-18 19:18:11','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d4a92433-a061-4242-a0b7-80595315a0aa','admin','2013-01-19 16:52:39','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d4d861d1-46ba-4b8a-9768-ee79f5d5244f','admin','2013-01-16 22:00:27','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d57caec5-1375-4288-994d-ad6a6c672617','admin','2013-01-28 20:25:06','更新站点 一级站点','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d5ae4d37-eec8-4e05-80f1-063a8f0e647b','admin','2013-01-18 20:30:17','修改模板文件(templet\\examples\\单位\\提取可以接收信件的单位.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d5f86c30-ac1f-44c3-84c8-ce88ecc94ba9','admin','2013-01-17 21:22:01','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d72fe3f3-6c34-48f8-9582-22e1b5459b14','admin','2013-01-19 12:46:47','添加角色菜单权限(管理员-互动信件)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d7695fde-ea7a-4b23-a3ec-c784334bc686','admin','2013-01-16 19:34:45','更新信息(视频)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d7cab2f7-3a44-40ea-b2cd-2faad1bc052a','admin','2013-01-04 21:40:52','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d8464197-c23e-4110-bbe0-44234f4e8992','admin','2013-01-16 21:55:07','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d8677457-83db-4464-8bbe-b7459668ded2','admin','2013-01-22 20:40:20','添加网上调查(网上调查)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d88bad9a-1f3f-427b-84ca-52dede3576e4','admin','2013-01-18 22:44:10','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d8b12583-1280-4c5e-9ddf-a5d3d3e3f812','admin','2013-01-19 12:28:14','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d9072eef-2aa8-44ff-a45f-d78811218770','admin','2012-12-30 17:07:37','修改模板文件(templet\\freecms\\inc\\头部.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d922090e-2edf-4116-b255-a068bba05467','admin','2013-01-16 21:55:54','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d95c7c4c-f52a-4dce-a441-58c4385b0b22','admin','2013-01-18 20:30:38','修改模板文件(templet\\examples\\系统配置\\获取互动信件类型.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d9b4ac11-c3bb-41fb-a260-4f7329e64940','admin','2013-01-19 14:40:03','添加操作按钮 办 理 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d9c7ee0a-545f-4933-adab-0f3c1fdf6d83','admin','2013-01-17 19:55:21','修改单位 信件 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d9d5589d-0b9d-4778-a1bd-0487240299a4','admin','2013-01-24 19:19:32','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('db28ebe7-05b6-406a-8f8b-8480776d41e9','admin','2013-02-01 20:13:27','添加菜单 会员管理 成功<属性>df4647eb-8758-451c-bdcd-54c2d180c474<属性>会员管理','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('dbafe3c7-f356-4424-9c5c-3bde696441b8','admin','2013-01-19 13:09:54','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('dbd3f188-e1d3-4ea1-b5f9-431d716134a5','admin','2013-01-15 22:36:52','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('dc25f09d-5627-4c31-8f6b-35df9c108ac8','admin','2012-12-26 19:04:04','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('dc35b60c-ab60-48c7-b0b3-f9a05b4b8e78','admin','2013-01-28 20:29:48','改变栏目 一级栏目 的所属栏目为 要点','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('dc446180-23e5-44a1-b604-004789bed937','admin','2013-01-16 22:28:21','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('dcae9d09-2a1f-4801-a92a-10953e04ac26','admin','2012-12-30 17:50:01','信息页静态化:FreeCMS 1.0 发布','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('dd0a8d76-0f67-4a0e-9976-09ee780af1c8','admin','2013-01-17 21:16:45','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ddbb82e6-db23-40ee-9072-aec985017191','admin','2013-01-30 21:50:07','添加操作按钮 删 除 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ddffab2c-2d03-4ec9-9d6b-cecfbae8fb8d','admin','2013-01-23 19:55:36','栏目静态化:动态 第2页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('de0bc613-3883-4ca1-a00d-ba6a970b8652','admin','2013-01-16 22:04:14','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('de3ec963-eff1-48f0-ae50-d6b6d1a5f4f0','mail','2013-01-19 12:49:29','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('de72123f-27d5-4e6b-bf62-872cf664478f','admin','2013-01-23 18:59:23','添加模板文件(templet\\freecms\\question.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('de7e93dd-c872-433b-9739-c9fed36799c3','admin','2013-01-16 22:05:55','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e0656f35-c4f2-4b07-a381-effe8896669d','admin','2013-02-01 13:07:38','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e1288f56-2990-4456-8842-753a623d727c','admin','2013-01-19 16:20:11','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e179b792-5a7c-4141-bcd6-a0aead4d5165','admin','2013-01-06 22:11:26','栏目静态化:其它 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e1be04ca-cf35-4ebb-8629-8f5c7be72713','admin','2013-01-06 22:11:23','栏目静态化:解决方案 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e1d51d68-af23-4b2f-bff7-7c507e1860de','admin','2013-01-06 22:11:25','栏目静态化:加入FreeTeam 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e1de48e3-d136-4c9a-8257-f0e0e45a52c8','admin','2013-01-16 22:02:01','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e2831826-9317-415d-b999-fb00f4a87112','admin','2013-01-10 21:53:44','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e3019ae6-2a97-4710-ab58-5104fc81b665','admin','2013-01-15 22:29:58','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e48e9e29-fd5a-46fd-b52f-4d2f14272029','admin','2013-01-18 22:41:19','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e4970552-900a-42d3-8b22-8bf8be7b81c9','admin','2013-01-23 18:52:06','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e4c5f6ab-0179-45ea-beab-5dab14c29619','admin','2013-01-10 22:02:08','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e4df9e9e-0292-4065-bea4-cbd1731e286f','admin','2013-01-17 20:08:01','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e4fb84c1-b85e-44da-b7e6-0e1f71050969','admin','2013-01-23 19:56:18','栏目静态化:动态 第4页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e5f9c568-2cb0-47b6-a99c-315964c99a2d','admin','2013-01-17 21:47:50','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e5fbf5c7-ca46-447b-b82b-0530b3adcc4e','admin','2013-01-31 22:12:16','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e603e65a-105c-4af3-9c37-744096ce47d4','admin','2013-01-18 20:22:03','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e68e661a-fcba-4864-ad15-10d046426b9f','admin','2012-12-24 20:09:58','改变站点 一级站点 的所属站点为 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e7042a57-c282-47e4-9d48-74bb5bb825b0','admin','2013-01-17 21:46:09','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e7aff6d7-da4a-436c-b14e-e2bbd0e08127','admin','2013-01-17 21:47:11','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e8663014-682a-46d4-b4aa-6e3f2690b2ad','admin','2013-01-17 19:27:48','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e8793869-f0af-4bb5-b267-52fb6c40d614','admin','2013-01-19 16:48:23','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e89860fd-94e3-4c08-9b9e-9ef7a311fffa','admin','2013-01-15 19:44:17','更新信息(s)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e96c334f-0e46-4a0a-8d7a-982074fed900','admin','2013-01-19 14:40:18','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e9855394-5ebc-4ba2-a32a-bd670a8097f4','admin','2013-01-14 20:14:08','修改菜单 系统配置 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ea1509a6-4f37-4a90-b1db-cac87923bd35','admin','2013-01-19 12:45:04','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ea7ab1bf-c587-4eef-97a8-509e104f00b2','admin','2013-01-22 13:18:04','添加菜单 网上调查 成功<属性>2b89c1fd-9e85-40d0-9ad8-9d401526d8fe<属性>网上调查','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ea9a6c13-c1cd-4799-a5f7-db273e9dfaf2','admin','2013-02-01 16:54:59','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('eacf4f1d-b679-460b-98ee-3bd8e7e40bf8','admin','2013-01-16 22:00:53','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('eb120297-2551-4232-b606-c973acf552b5','admin','2012-12-30 18:01:07','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('eb22c9ec-2cbb-4cb5-89a6-ef7d8d358202','admin','2013-01-24 22:37:16','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ebf64f1e-3aee-4b67-8405-b21a7bead875','admin','2013-01-18 20:45:01','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ecab4886-9d69-481b-a0ac-769292b14409','admin','2012-12-26 19:04:15','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ecaf2c45-52d0-4980-a7e5-b0781debb6dc','admin','2013-01-17 21:55:40','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ed8d422c-7e90-4962-bbec-6a8f6774d6eb','admin','2013-01-23 19:43:24','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('edcd5180-bed0-44f2-824e-b0d43b0fa44d','admin','2013-01-22 19:54:59','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ee107b19-6f8c-4d77-9812-f712dc781328','admin','2013-01-22 20:49:25','修改调查选项 这个好码1 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ee183247-b879-446c-9730-645db1b280c1','admin','2013-01-17 21:40:21','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ee7d1c23-e068-4f1a-a159-759441aa659f','admin','2013-01-16 20:28:24','添加信息(ds)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('eeabc1dd-6965-4e2d-a27f-5a0b72a54506','admin','2013-01-21 14:10:52','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ef24f495-0484-40ee-8a20-144e294d45a3','admin','2013-01-15 19:44:31','更新信息(s)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ef7ff410-a455-4510-9e84-41426eabafaa','admin','2013-01-15 19:44:32','信息页静态化:s','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f00d6fce-757f-4351-afcb-f6af6e8b96b6','admin','2013-01-04 21:37:07','修改链接(FreeCMS)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f02b6566-8bcd-432c-a267-b2bf017fc6f8','admin','2013-01-16 21:55:07','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f0948b8d-d715-4490-969b-5ccec46ae698','admin','2012-12-30 18:02:39','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f1339f3a-7f25-4918-85c5-50e2b4550c36','admin','2013-01-22 20:53:32','添加调查选项 第一个选项 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f148decd-3c40-4396-8535-70aecfef5364','admin','2012-12-30 17:51:45','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f17fadae-fcc6-4393-af5c-d91b49328ad1','admin','2013-01-19 16:50:21','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f1f5ff50-afc6-4bfe-bcee-a6d135932938','admin','2013-01-28 21:41:55','添加网上调查(测试网上调查)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f2f7f6b1-5ffe-49a6-ac84-9c244b3ad049','admin','2013-01-16 22:15:50','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f35358a5-fabc-4647-a093-2f75063ed238','admin','2013-01-22 19:50:09','fsd 信件转交给 fds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f3f41d36-d176-4bca-be5d-586cc4b42ac8','admin','2013-01-16 22:18:54','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f4b3a967-f460-4cf1-a595-3fb5e0537501','admin','2013-01-16 20:28:25','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f52884ef-e265-4da7-9698-fdd93cd2c78b','admin','2013-01-19 12:40:44','退出系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f5e04dc2-e3e9-44e6-961f-3a540a5c2e5e','admin','2013-01-30 21:49:28','添加菜单 会员权限 成功<属性>0af2a5d9-26e6-4b82-a07c-062a35b3a7e5<属性>会员权限','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f6404216-27af-4210-8144-7324b9ad8df7','admin','2013-01-19 13:48:07','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f656fe43-895f-4c5d-99ca-9d56db50f88a','admin','2013-01-17 21:31:19','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f6e87cf2-0246-47b0-adca-33f73b510941','admin','2013-01-16 22:13:55','信息页静态化:ds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f727dc61-5ebe-4b47-a86f-bb10a2949bac','admin','2013-01-22 20:53:43','修改调查选项 第一个选项 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f7714b0d-218b-4493-97a9-15c42abced50','admin','2012-12-21 19:54:55','添加单位 sdfd 成功<属性>07f9e6f6-f181-4733-99dc-1c925ec4e204<属性>sdfd','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f798dd69-c4d1-4bf3-8b63-bc35b645afa2','admin','2013-01-06 22:11:23','栏目静态化:许可证 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f874e578-5f7d-4529-9df1-e6730d639bcb','admin','2013-01-21 14:09:26','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f8876f5d-1812-41d3-ba6a-1f7b9ee2a51c','admin','2012-12-21 20:17:06','删除角色菜单权限(站点信息员-站点管理)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f8938292-4bb0-4cbc-9aff-e3f1fd066ea4','admin','2013-01-17 21:21:40','修改模板文件(templet\\freecms\\信件.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f8a61262-4d62-475c-a0a1-399ca86de74e','admin','2013-01-15 20:16:00','更新信息(sign)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f8e82c78-1e81-41ef-a4b6-373980557a27','admin','2013-01-22 20:53:19','删除调查选项 大本营1 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f9254a78-afee-4964-b49d-c4ebd9a08ccf','admin','2013-01-17 21:56:20','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fa293c04-1f99-41af-ad16-8652fabd1fbc','admin','2013-01-31 19:27:55','添加操作按钮 授 权 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fb07cc64-2d46-4359-8864-b68e03635f63','admin','2013-01-19 12:45:17','添加角色菜单权限(站点管理员-个人信件)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fb37e01a-b89a-449b-9450-36f8c11cf508','admin','2013-01-28 21:47:35','添加调查选项 选项一 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fc3a83f5-416a-41e3-8837-39fb3ebd8feb','admin','2013-01-06 21:59:05','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fc3b8965-38d9-4fbf-beac-d348966d1f85','admin','2013-01-24 23:07:18','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fc5f39cf-c6db-4f21-b440-bde769a0f7c4','admin','2013-02-01 12:54:00','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fc667d82-b2a9-4fd1-bdd5-35cb7d3d6000','admin','2013-01-06 22:02:55','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fc75a447-9a69-4175-b9e7-0e95d210a484','admin','2012-12-20 20:07:20','添加菜单 下级菜单 成功<属性>fb0c9160-d35a-499d-8caa-8798256bc562<属性>下级菜单','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fd6bb7ad-4444-4803-a62a-2f57a0923b0a','admin','2013-01-16 22:00:53','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fd8234fe-0d7d-4db2-98e6-8cded47b04be','admin','2013-01-17 19:54:38','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fd8bb7a4-cf27-4405-93a4-d15426682006','admin','2013-01-31 22:17:56','添加会员组 dsad','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fd923c73-a2c7-4ac2-8562-c9c4c77e6324','admin','2013-01-19 16:50:40','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fe7c2361-2035-47be-8923-eaa91c3a3e54','admin','2013-01-06 22:00:03','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fea36fb0-9976-4ed0-90d8-8ee60bb972d9','admin','2013-02-01 13:06:07','登录系统','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('feb13d4b-7796-4268-9ce8-668b18c03931','admin','2013-01-17 21:16:53','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fec6c3ed-2667-4b36-b1da-0dab7e3865ce','admin','2012-12-20 21:01:15','修改操作按钮 sa1 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ff05005a-de88-4e67-a863-9c137438ef46','admin','2013-01-19 12:46:49','添加角色菜单权限(管理员-个人信件)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ff22fcab-4b5f-4c53-88fc-ac9bf704a954','admin','2013-01-16 22:11:29','信息页静态化:地','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ff5f0da2-8a54-46bd-b4ae-bacd60dabaaa','admin','2013-02-01 12:47:22','更新会员组 czxc名称','127.0.0.1');

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

insert  into `freecms_question`(`id`,`name`,`selecttype`,`isok`,`siteid`,`adduser`,`addtime`) values ('03d86aaa-0b64-44a4-a1ff-e154591a8379','网上调查','0','1','7a4d22d6-762b-46e5-895b-d62da52bf9cb','02debc9f-53cd-4bc9-887b-49ffc4e925f2','2013-01-22 20:40:20');
insert  into `freecms_question`(`id`,`name`,`selecttype`,`isok`,`siteid`,`adduser`,`addtime`) values ('2210e309-c4da-4522-87e0-07b40bb04d05','测试网上调查1','1','0','7a4d22d6-762b-46e5-895b-d62da52bf9cb','02debc9f-53cd-4bc9-887b-49ffc4e925f2','2013-01-28 21:41:55');

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

insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('0ca42f48-c62b-4d3b-8dab-1343519051b8','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','47b80631-bb6e-4abd-8e47-5b99bce8b3bd');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('11351937-f2e3-4f10-9b9b-2cdc1babbbd7','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','5f3a8e01-4216-4982-b07b-ad367fe9ef96');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('1e9c224b-a4fe-465e-972f-724c5651807f','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','425d0211-0196-4456-a24b-3e8d614dec8b');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('210ba1a3-7a2e-4f86-b419-ec20c97d0a54','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','0bec6b84-19be-4d99-bc44-ca1d8472148f');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('213b1ac5-116d-4166-9c32-9facd4b1a98b','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','cb42d736-3386-42b8-a9f7-62840c4ecefa');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('2297cae4-a395-4cab-9af1-1f78d459a523','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','742470cc-eaf1-48c4-805c-44c9936a7622');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('263bc6bd-f274-4f1b-9191-b3b8d0c95152','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','67705234-603a-47c7-8f0d-8cdd349fd7c6');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('2b334331-7a66-4b5c-bd12-ac98109eb8e1','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','67025758-eb65-40b1-a59c-edee1b3ae938');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('2ff19fe8-b5c7-42a3-ad35-02f5caf187e2','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','5257f8fd-9da2-4e83-8538-b6ffca22e45a');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('393cbffc-2d21-4203-8f27-ac8a40411932','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','66ecf6f7-1911-4e7e-8089-3a01f44a6d12');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('438df26e-94ee-454d-acc0-fd56cddb0bf9','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','cb42d736-3386-42b8-a9f7-62840c4ecefa');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('4cd0268a-2afd-4138-8415-78e36463b92b','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('4d8f5c3f-2171-4ba8-8183-478edd4749c0','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('4dd72e33-2afd-40c5-8c5c-2b6cebb8d067','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','003c47c5-7041-4cfa-8631-82c00ab3fb35');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('5b4fa9b1-3dac-4547-8169-76f450e9e85a','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','5a47681c-63c3-47b1-8e1f-34d4dbba7d85');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('5b580be5-4552-495c-b503-49f326e55b68','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','08cfd343-2803-403e-b952-f7d41199d8e1');
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
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('cdfa9c7a-46da-45c3-bbaf-50315b9a59fd','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','5a47681c-63c3-47b1-8e1f-34d4dbba7d85');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('cedd82fc-9a02-460a-904d-03683c53fed5','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('d012680a-88b1-40b0-99a4-aa51dc11d7c8','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','4331df96-2b8d-4dcf-9bdb-1015dfd0a759');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('d16e529d-1691-4ed6-a8c7-d24a513cef70','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','15dfc8ac-bfda-40cc-abb1-f563c1a1d1d2');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('d3bde903-f60a-43f4-96dc-b2be8d37d0f4','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','e3066945-edb5-43ca-b29a-a0f96f98a50e');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('dd298cc2-70ef-4b4b-9306-44dd16595050','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','8afb6f01-ae46-447c-acfa-1a6e0964bbba');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('df926af7-bc89-4424-bf20-0f5a8d55846a','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','5f3a8e01-4216-4982-b07b-ad367fe9ef96');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('e21dbb10-38b6-4f1b-87f9-c7e4605ceb44','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','e01bb9aa-b122-41ac-b28c-e97993c2d250');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('e28496d1-77ca-4f87-8573-b94c7e8c2284','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','67025758-eb65-40b1-a59c-edee1b3ae938');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('e3c1df82-85f2-4f5a-8469-bd994a3ab1bf','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','c0ac116b-2b2a-4a09-ba25-0c2fffc12b4d');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('e49be6ae-7121-4a6e-9eb0-d639feb87bc5','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','6c561fe7-2013-4ce5-bf9a-42874b07a99e');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('ecad88b4-6c2e-4343-b53b-0f7f253b6406','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','6f32a2b6-a552-4a91-a10c-2962af63eca7');
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

insert  into `freecms_role_user`(`id`,`roles`,`users`) values ('71d1c790-38a9-411b-8ad9-fea59e3f8d3e','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','44291cbf-696d-4c2e-b9d5-4238d986d479');
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
insert  into `freecms_site`(`id`,`name`,`siteDomain`,`sourcePath`,`copyright`,`recordCode`,`parId`,`state`,`url`,`indexTemplet`,`logo`,`orderNum`,`clickNum`) values ('80f429ad-ec91-4eca-87c2-82d6cba631de','一级站点','','one','','','','1','','',NULL,NULL,NULL);

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

insert  into `freecms_templet`(`id`,`name`,`state`,`orderNum`,`useSites`,`useSiteNames`,`adduser`) values ('0def5cc4-a300-478a-b47d-80ff5f5e5af4','工','3',NULL,'','','02debc9f-53cd-4bc9-887b-49ffc4e925f2');
insert  into `freecms_templet`(`id`,`name`,`state`,`orderNum`,`useSites`,`useSiteNames`,`adduser`) values ('b694dd64-e89e-4cb5-8da1-6a51bf97cfa1','要','3',NULL,'','','02debc9f-53cd-4bc9-887b-49ffc4e925f2');
insert  into `freecms_templet`(`id`,`name`,`state`,`orderNum`,`useSites`,`useSiteNames`,`adduser`) values ('examples','模板示例库','1',NULL,NULL,NULL,NULL);
insert  into `freecms_templet`(`id`,`name`,`state`,`orderNum`,`useSites`,`useSiteNames`,`adduser`) values ('f392cd10-13b6-4208-a5a9-77c7fd30bcf5','测试模板','1',NULL,'','','02debc9f-53cd-4bc9-887b-49ffc4e925f2');
insert  into `freecms_templet`(`id`,`name`,`state`,`orderNum`,`useSites`,`useSiteNames`,`adduser`) values ('f5b31ed3-b9e5-4951-80dd-0ddbcc3ca2b7','测试模板','3',1,'7a4d22d6-762b-46e5-895b-d62da52bf9cb;80f429ad-ec91-4eca-87c2-82d6cba631de;','FreeCMS;一级站点;','02debc9f-53cd-4bc9-887b-49ffc4e925f2');
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

insert  into `freecms_unit`(`id`,`name`,`parid`,`isOk`,`ordernum`,`ismail`) values ('1304e48c-773a-4afa-b4e5-e087648e4a17','信件','','1',0,'1');
insert  into `freecms_unit`(`id`,`name`,`parid`,`isOk`,`ordernum`,`ismail`) values ('f5b2d3de-96df-4ce2-a856-8715310c0765','fds','','1',0,'1');
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

insert  into `freecms_users`(`id`,`loginName`,`roleNames`,`name`,`pwd`,`sex`,`birthday`,`tel`,`mobilephone`,`email`,`isOk`,`lastLoginTime`,`lastestLoginTime`,`loginFailNum`,`loginNum`,`addTime`,`unitNames`,`unitIds`,`ismail`) values ('02debc9f-53cd-4bc9-887b-49ffc4e925f2','admin','管理员;','管理员','523af537946b79c4f8369ed39ba78605','1',NULL,'','','freeteam@foxmail.com','1','2013-02-01 21:12:46','2013-02-01 21:13:28',0,0,NULL,NULL,NULL,NULL);
insert  into `freecms_users`(`id`,`loginName`,`roleNames`,`name`,`pwd`,`sex`,`birthday`,`tel`,`mobilephone`,`email`,`isOk`,`lastLoginTime`,`lastestLoginTime`,`loginFailNum`,`loginNum`,`addTime`,`unitNames`,`unitIds`,`ismail`) values ('44291cbf-696d-4c2e-b9d5-4238d986d479','mail','管理员;','信件user','b83a886a5c437ccd9ac15473fd6f1788','1','2013-01-17 00:00:00','','','','1','2013-01-19 12:47:04','2013-01-19 12:49:29',0,0,'2013-01-17 20:03:55','','','1');
insert  into `freecms_users`(`id`,`loginName`,`roleNames`,`name`,`pwd`,`sex`,`birthday`,`tel`,`mobilephone`,`email`,`isOk`,`lastLoginTime`,`lastestLoginTime`,`loginFailNum`,`loginNum`,`addTime`,`unitNames`,`unitIds`,`ismail`) values ('95f488a0-cade-41dc-bffc-d302455c4e11','ddd','','dd','1aabac6d068eef6a7bad3fdf50a05cc8','1','2013-01-17 20:11:39','','','','1','2010-01-01 00:00:00','2010-01-01 00:00:00',0,0,'2013-01-17 20:11:39','','','1');
insert  into `freecms_users`(`id`,`loginName`,`roleNames`,`name`,`pwd`,`sex`,`birthday`,`tel`,`mobilephone`,`email`,`isOk`,`lastLoginTime`,`lastestLoginTime`,`loginFailNum`,`loginNum`,`addTime`,`unitNames`,`unitIds`,`ismail`) values ('fdc995ef-e96f-4c00-9746-4b5a9b365caa','freecms','站点管理员;','freecms','523af537946b79c4f8369ed39ba78605','1','2012-11-06 00:00:00','','','','1','2013-01-16 19:02:41','2013-01-22 21:02:18',0,0,'2012-11-28 20:25:41','freeteam;','freeteam;',NULL);

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
