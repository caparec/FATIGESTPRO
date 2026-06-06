# SQL Manager 2005 for MySQL 3.7.7.1
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : fatigest2023


SET FOREIGN_KEY_CHECKS=0;

DROP DATABASE IF EXISTS `fatigest2023`;

CREATE DATABASE `fatigest2023`
    CHARACTER SET 'latin1'
    COLLATE 'latin1_swedish_ci';

USE `fatigest2023`;

#
# Structure for the `m_a_avcl` table : 
#

DROP TABLE IF EXISTS `m_a_avcl`;

CREATE TABLE `m_a_avcl` (
  `a_avcl_num` int(11) NOT NULL,
  `a_avcl_cod` varchar(50) default NULL,
  `a_avcl_ref` varchar(50) default NULL,
  `a_avcl_lib` varchar(2000) default NULL,
  `a_avcl_nuse` varchar(50) default NULL,
  `a_avcl_dep` varchar(50) default NULL,
  `a_avcl_pri` decimal(19,4) default '0.0000',
  `a_avcl_priT` decimal(19,4) default '0.0000',
  `a_avcl_rem` decimal(19,4) default '0.0000',
  `a_avcl_qua` decimal(19,4) default '0.0000',
  `a_avcl_dd1` varchar(50) default NULL,
  `a_avcl_dd2` varchar(50) default NULL,
  `a_avcl_dd3` varchar(50) default NULL,
  `a_avcl_dd4` varchar(50) default NULL,
  `a_avcl_toht` decimal(19,4) default '0.0000',
  `a_avcl_tott` decimal(19,4) default '0.0000',
  `a_avcl_tva` varchar(50) default NULL,
  `a_avcl_nupi` varchar(50) NOT NULL default '',
  `a_avcl_dat` datetime default NULL,
  `a_avcl_cli` varchar(50) default NULL,
  `a_avcl_lcli` varchar(50) default NULL,
  `a_avcl_adr` varchar(100) default NULL,
  `a_avcl_vil` varchar(50) default NULL,
  `a_avcl_tohtg` decimal(19,4) default '0.0000',
  `a_avcl_ttcg` decimal(19,4) default '0.0000',
  `a_avcl_tvag` decimal(19,4) default '0.0000',
  `a_avcl_remg` decimal(19,4) default '0.0000',
  `a_avcl_ref1` varchar(50) default NULL,
  `a_avcl_ref2` varchar(50) default NULL,
  `a_avcl_ref3` varchar(50) default NULL,
  `a_avcl_ref4` varchar(50) default NULL,
  `a_avcl_cpt` bit(1) default '\0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_a_avfo` table : 
#

DROP TABLE IF EXISTS `m_a_avfo`;

CREATE TABLE `m_a_avfo` (
  `a_avfo_num` int(11) NOT NULL,
  `a_avfo_cod` varchar(50) default NULL,
  `a_avfo_ref` varchar(50) default NULL,
  `a_avfo_lib` varchar(2000) default NULL,
  `a_avfo_nuse` varchar(50) default NULL,
  `a_avfo_dep` varchar(50) default NULL,
  `a_avfo_pri` decimal(19,4) default '0.0000',
  `a_avfo_priT` decimal(19,4) default '0.0000',
  `a_avfo_rem` decimal(19,4) default '0.0000',
  `a_avfo_qua` decimal(19,4) default '0.0000',
  `a_avfo_dd1` varchar(50) default NULL,
  `a_avfo_dd2` varchar(50) default NULL,
  `a_avfo_dd3` varchar(50) default NULL,
  `a_avfo_dd4` varchar(50) default NULL,
  `a_avfo_toht` decimal(19,4) default '0.0000',
  `a_avfo_tott` decimal(19,4) default '0.0000',
  `a_avfo_tva` varchar(50) default NULL,
  `a_avfo_nupi` varchar(50) NOT NULL default '',
  `a_avfo_dat` datetime default NULL,
  `a_avfo_fou` varchar(50) default NULL,
  `a_avfo_lfou` varchar(50) default NULL,
  `a_avfo_adr` varchar(100) default NULL,
  `a_avfo_vil` varchar(50) default NULL,
  `a_avfo_tohtg` decimal(19,4) default '0.0000',
  `a_avfo_ttcg` decimal(19,4) default '0.0000',
  `a_avfo_tvag` decimal(19,4) default '0.0000',
  `a_avfo_remg` decimal(19,4) default '0.0000',
  `a_avfo_ref1` varchar(50) default NULL,
  `a_avfo_ref2` varchar(50) default NULL,
  `a_avfo_ref3` varchar(50) default NULL,
  `a_avfo_ref4` varchar(50) default NULL,
  `a_avfo_cpt` bit(1) default '\0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_a_decl` table : 
#

DROP TABLE IF EXISTS `m_a_decl`;

CREATE TABLE `m_a_decl` (
  `a_decl_num` int(11) NOT NULL,
  `a_decl_cod` varchar(50) default NULL,
  `a_decl_ref` varchar(50) default NULL,
  `a_decl_lib` varchar(2000) default NULL,
  `a_decl_nuse` varchar(50) default NULL,
  `a_decl_dep` varchar(50) default NULL,
  `a_decl_pri` decimal(19,4) default '0.0000',
  `a_decl_priT` decimal(19,4) default '0.0000',
  `a_decl_rem` decimal(19,4) default '0.0000',
  `a_decl_qua` decimal(19,4) default '0.0000',
  `a_decl_dd1` varchar(50) default NULL,
  `a_decl_dd2` varchar(50) default NULL,
  `a_decl_dd3` varchar(50) default NULL,
  `a_decl_dd4` varchar(50) default NULL,
  `a_decl_toht` decimal(19,4) default '0.0000',
  `a_decl_tott` decimal(19,4) default '0.0000',
  `a_decl_tva` varchar(50) default NULL,
  `a_decl_nupi` varchar(50) NOT NULL default '',
  `a_decl_dat` datetime default NULL,
  `a_decl_cli` varchar(50) default NULL,
  `a_decl_lcli` varchar(50) default NULL,
  `a_decl_adr` varchar(100) default NULL,
  `a_decl_vil` varchar(50) default NULL,
  `a_decl_tohtg` decimal(19,4) default '0.0000',
  `a_decl_ttcg` decimal(19,4) default '0.0000',
  `a_decl_tvag` decimal(19,4) default '0.0000',
  `a_decl_remg` decimal(19,4) default '0.0000',
  `a_decl_ref1` varchar(50) default NULL,
  `a_decl_ref2` varchar(50) default NULL,
  `a_decl_ref3` varchar(50) default NULL,
  `a_decl_ref4` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_a_defo` table : 
#

DROP TABLE IF EXISTS `m_a_defo`;

CREATE TABLE `m_a_defo` (
  `a_defo_num` int(11) NOT NULL,
  `a_defo_cod` varchar(50) default NULL,
  `a_defo_ref` varchar(50) default NULL,
  `a_defo_lib` varchar(2000) default NULL,
  `a_defo_nuse` varchar(50) default NULL,
  `a_defo_dep` varchar(50) default NULL,
  `a_defo_pri` decimal(19,4) default '0.0000',
  `a_defo_priT` decimal(19,4) default '0.0000',
  `a_defo_rem` decimal(19,4) default '0.0000',
  `a_defo_qua` decimal(19,4) default '0.0000',
  `a_defo_dd1` varchar(50) default NULL,
  `a_defo_dd2` varchar(50) default NULL,
  `a_defo_dd3` varchar(50) default NULL,
  `a_defo_dd4` varchar(50) default NULL,
  `a_defo_toht` decimal(19,4) default '0.0000',
  `a_defo_tott` decimal(19,4) default '0.0000',
  `a_defo_tva` varchar(50) default NULL,
  `a_defo_nupi` varchar(50) NOT NULL default '',
  `a_defo_dat` datetime default NULL,
  `a_defo_fou` varchar(50) default NULL,
  `a_defo_lfou` varchar(50) default NULL,
  `a_defo_adr` varchar(100) default NULL,
  `a_defo_vil` varchar(50) default NULL,
  `a_defo_tohtg` decimal(19,4) default '0.0000',
  `a_defo_ttcg` decimal(19,4) default '0.0000',
  `a_defo_tvag` decimal(19,4) default '0.0000',
  `a_defo_remg` decimal(19,4) default '0.0000',
  `a_defo_ref1` varchar(50) default NULL,
  `a_defo_ref2` varchar(50) default NULL,
  `a_defo_ref3` varchar(50) default NULL,
  `a_defo_ref4` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_a_facl` table : 
#

DROP TABLE IF EXISTS `m_a_facl`;

CREATE TABLE `m_a_facl` (
  `a_facl_num` int(11) NOT NULL,
  `a_facl_cod` varchar(50) default NULL,
  `a_facl_ref` varchar(50) default NULL,
  `a_facl_lib` varchar(2000) default NULL,
  `a_facl_nuse` varchar(50) default NULL,
  `a_facl_dep` varchar(50) default NULL,
  `a_facl_pri` decimal(19,4) default '0.0000',
  `a_facl_priT` decimal(19,4) default '0.0000',
  `a_facl_rem` decimal(19,4) default '0.0000',
  `a_facl_qua` decimal(19,4) default '0.0000',
  `a_facl_dd1` varchar(50) default NULL,
  `a_facl_dd2` varchar(50) default NULL,
  `a_facl_dd3` varchar(50) default NULL,
  `a_facl_dd4` varchar(50) default NULL,
  `a_facl_toht` decimal(19,4) default '0.0000',
  `a_facl_tott` decimal(19,4) default '0.0000',
  `a_facl_tva` varchar(50) default NULL,
  `a_facl_nupi` varchar(50) NOT NULL default '',
  `a_facl_dat` datetime default NULL,
  `a_facl_daec` datetime default NULL,
  `a_facl_cli` varchar(50) default NULL,
  `a_facl_lcli` varchar(50) default NULL,
  `a_facl_adr` varchar(100) default NULL,
  `a_facl_vil` varchar(50) default NULL,
  `a_facl_tohtg` decimal(19,4) default '0.0000',
  `a_facl_ttcg` decimal(19,4) default '0.0000',
  `a_facl_tvag` decimal(19,4) default '0.0000',
  `a_facl_remg` decimal(19,4) default '0.0000',
  `a_facl_ref1` varchar(50) default NULL,
  `a_facl_ref2` varchar(50) default NULL,
  `a_facl_ref3` varchar(50) default NULL,
  `a_facl_ref4` varchar(50) default NULL,
  `a_facl_cpt` bit(1) default '\0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_a_fafo` table : 
#

DROP TABLE IF EXISTS `m_a_fafo`;

CREATE TABLE `m_a_fafo` (
  `a_fafo_num` int(11) NOT NULL,
  `a_fafo_cod` varchar(50) default NULL,
  `a_fafo_ref` varchar(50) default NULL,
  `a_fafo_lib` varchar(2000) default NULL,
  `a_fafo_nuse` varchar(50) default NULL,
  `a_fafo_dep` varchar(50) default NULL,
  `a_fafo_pri` decimal(19,4) default '0.0000',
  `a_fafo_priT` decimal(19,4) default '0.0000',
  `a_fafo_rem` decimal(19,4) default '0.0000',
  `a_fafo_qua` decimal(19,4) default '0.0000',
  `a_fafo_dd1` varchar(50) default NULL,
  `a_fafo_dd2` varchar(50) default NULL,
  `a_fafo_dd3` varchar(50) default NULL,
  `a_fafo_dd4` varchar(50) default NULL,
  `a_fafo_toht` decimal(19,4) default '0.0000',
  `a_fafo_tott` decimal(19,4) default '0.0000',
  `a_fafo_tva` varchar(50) default NULL,
  `a_fafo_nupi` varchar(50) NOT NULL default '',
  `a_fafo_dat` datetime default NULL,
  `a_fafo_daec` datetime default NULL,
  `a_fafo_fou` varchar(50) default NULL,
  `a_fafo_lfou` varchar(50) default NULL,
  `a_fafo_adr` varchar(100) default NULL,
  `a_fafo_vil` varchar(50) default NULL,
  `a_fafo_tohtg` decimal(19,4) default '0.0000',
  `a_fafo_ttcg` decimal(19,4) default '0.0000',
  `a_fafo_tvag` decimal(19,4) default '0.0000',
  `a_fafo_remg` decimal(19,4) default '0.0000',
  `a_fafo_ref1` varchar(50) default NULL,
  `a_fafo_ref2` varchar(50) default NULL,
  `a_fafo_ref3` varchar(50) default NULL,
  `a_fafo_ref4` varchar(50) default NULL,
  `a_fafo_cpt` bit(1) default '\0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_avcl` table : 
#

DROP TABLE IF EXISTS `m_avcl`;

CREATE TABLE `m_avcl` (
  `avcl_nupi` varchar(50) NOT NULL default '',
  `avcl_dat` datetime default NULL,
  `avcl_cli` varchar(50) default NULL,
  `avcl_lcli` varchar(50) default NULL,
  `avcl_adr` varchar(100) default NULL,
  `avcl_vil` varchar(50) default NULL,
  `avcl_toht` decimal(19,4) default '0.0000',
  `avcl_tva` decimal(19,4) default '0.0000',
  `avcl_ttc` decimal(19,4) default '0.0000',
  `avcl_rem` decimal(19,4) default '0.0000',
  `avcl_ref1` varchar(50) default NULL,
  `avcl_ref2` varchar(50) default NULL,
  `avcl_ref3` varchar(50) default NULL,
  `avcl_ref4` varchar(50) default NULL,
  `avcl_cpt` bit(1) default '\0',
  PRIMARY KEY  (`avcl_nupi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_avcl_facl` table : 
#

DROP TABLE IF EXISTS `m_avcl_facl`;

CREATE TABLE `m_avcl_facl` (
  `avcl_nupi` varchar(50) default NULL,
  `facl_nupi` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `m_avfo` table : 
#

DROP TABLE IF EXISTS `m_avfo`;

CREATE TABLE `m_avfo` (
  `avfo_nupi` varchar(50) NOT NULL default '',
  `avfo_dat` datetime default NULL,
  `avfo_fou` varchar(50) default NULL,
  `avfo_lfou` varchar(50) default NULL,
  `avfo_adr` varchar(100) default NULL,
  `avfo_vil` varchar(50) default NULL,
  `avfo_toht` decimal(19,4) default '0.0000',
  `avfo_tva` decimal(19,4) default '0.0000',
  `avfo_ttc` decimal(19,4) default '0.0000',
  `avfo_rem` decimal(19,4) default '0.0000',
  `avfo_ref1` varchar(50) default NULL,
  `avfo_ref2` varchar(50) default NULL,
  `avfo_ref3` varchar(50) default NULL,
  `avfo_ref4` varchar(50) default NULL,
  `avfo_cpt` bit(1) default '\0',
  PRIMARY KEY  (`avfo_nupi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_avfo_fafo` table : 
#

DROP TABLE IF EXISTS `m_avfo_fafo`;

CREATE TABLE `m_avfo_fafo` (
  `avfo_nupi` varchar(50) default NULL,
  `fafo_nupi` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `m_decl` table : 
#

DROP TABLE IF EXISTS `m_decl`;

CREATE TABLE `m_decl` (
  `decl_nupi` varchar(50) NOT NULL default '',
  `decl_dat` datetime default NULL,
  `decl_cli` varchar(50) default NULL,
  `decl_lcli` varchar(50) default NULL,
  `decl_adr` varchar(100) default NULL,
  `decl_vil` varchar(50) default NULL,
  `decl_toht` decimal(19,4) default '0.0000',
  `decl_tva` decimal(19,4) default '0.0000',
  `decl_ttc` decimal(19,4) default '0.0000',
  `decl_rem` decimal(19,4) default '0.0000',
  `decl_ref1` varchar(50) default NULL,
  `decl_ref2` varchar(50) default NULL,
  `decl_ref3` varchar(50) default NULL,
  `decl_ref4` varchar(50) default NULL,
  PRIMARY KEY  (`decl_nupi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_defo` table : 
#

DROP TABLE IF EXISTS `m_defo`;

CREATE TABLE `m_defo` (
  `defo_nupi` varchar(50) NOT NULL default '',
  `defo_dat` datetime default NULL,
  `defo_fou` varchar(50) default NULL,
  `defo_lfou` varchar(50) default NULL,
  `defo_adr` varchar(100) default NULL,
  `defo_vil` varchar(50) default NULL,
  `defo_toht` decimal(19,4) default '0.0000',
  `defo_tva` decimal(19,4) default '0.0000',
  `defo_ttc` decimal(19,4) default '0.0000',
  `defo_rem` decimal(19,4) default '0.0000',
  `defo_ref1` varchar(50) default NULL,
  `defo_ref2` varchar(50) default NULL,
  `defo_ref3` varchar(50) default NULL,
  `defo_ref4` varchar(50) default NULL,
  PRIMARY KEY  (`defo_nupi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_facl` table : 
#

DROP TABLE IF EXISTS `m_facl`;

CREATE TABLE `m_facl` (
  `facl_nupi` varchar(50) NOT NULL default '',
  `facl_dat` datetime default NULL,
  `facl_cli` varchar(50) default NULL,
  `facl_lcli` varchar(50) default NULL,
  `facl_adr` varchar(100) default NULL,
  `facl_vil` varchar(50) default NULL,
  `facl_toht` decimal(19,4) default '0.0000',
  `facl_tva` decimal(19,4) default '0.0000',
  `facl_ttc` decimal(19,4) default '0.0000',
  `facl_rem` decimal(19,4) default '0.0000',
  `facl_ref1` varchar(50) default NULL,
  `facl_ref2` varchar(50) default NULL,
  `facl_ref3` varchar(50) default NULL,
  `facl_ref4` varchar(50) default NULL,
  `facl_daec` datetime default NULL,
  `facl_cpt` bit(1) default '\0',
  PRIMARY KEY  (`facl_nupi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_facl_decl` table : 
#

DROP TABLE IF EXISTS `m_facl_decl`;

CREATE TABLE `m_facl_decl` (
  `facl_nupi` varchar(50) default NULL,
  `decl_nupi` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `m_fafo` table : 
#

DROP TABLE IF EXISTS `m_fafo`;

CREATE TABLE `m_fafo` (
  `fafo_nupi` varchar(50) NOT NULL default '',
  `fafo_dat` datetime default NULL,
  `fafo_fou` varchar(50) default NULL,
  `fafo_lfou` varchar(50) default NULL,
  `fafo_adr` varchar(100) default NULL,
  `fafo_vil` varchar(50) default NULL,
  `fafo_toht` decimal(19,4) default '0.0000',
  `fafo_tva` decimal(19,4) default '0.0000',
  `fafo_ttc` decimal(19,4) default '0.0000',
  `fafo_rem` decimal(19,4) default '0.0000',
  `fafo_ref1` varchar(50) default NULL,
  `fafo_ref2` varchar(50) default NULL,
  `fafo_ref3` varchar(50) default NULL,
  `fafo_ref4` varchar(50) default NULL,
  `fafo_daec` datetime default NULL,
  `fafo_cpt` bit(1) default '\0',
  PRIMARY KEY  (`fafo_nupi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_fafo_defo` table : 
#

DROP TABLE IF EXISTS `m_fafo_defo`;

CREATE TABLE `m_fafo_defo` (
  `fafo_nupi` varchar(50) default NULL,
  `defo_nupi` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `m_fme` table : 
#

DROP TABLE IF EXISTS `m_fme`;

CREATE TABLE `m_fme` (
  `fme_dat` datetime default NULL,
  `fme_lib` varchar(50) default NULL,
  `fme_nupi` varchar(50) default NULL,
  `fme_ltie` varchar(50) default NULL,
  `fme_ttc` decimal(19,4) default '0.0000',
  `fme_eta` varchar(50) default NULL,
  `fme_ref1` varchar(50) default NULL,
  `fme_ref2` varchar(50) default NULL,
  `fme_ref3` varchar(50) default NULL,
  `fme_ref4` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `m_nupe` table : 
#

DROP TABLE IF EXISTS `m_nupe`;

CREATE TABLE `m_nupe` (
  `nupe_cod` varchar(50) default NULL,
  `nupe_lib` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_pimo` table : 
#

DROP TABLE IF EXISTS `m_pimo`;

CREATE TABLE `m_pimo` (
  `pimo_cod` int(11) default NULL,
  `pimo_decl` varchar(20) default NULL,
  `pimo_facl` varchar(20) default NULL,
  `pimo_avcl` varchar(20) default NULL,
  `pimo_recl` varchar(20) default NULL,
  `pimo_defo` varchar(20) default NULL,
  `pimo_fafo` varchar(20) default NULL,
  `pimo_avfo` varchar(20) default NULL,
  `pimo_refo` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `m_pimo1` table : 
#

DROP TABLE IF EXISTS `m_pimo1`;

CREATE TABLE `m_pimo1` (
  `pimo_pi` varchar(50) default NULL,
  `pimo_cod` varchar(50) default NULL,
  `pimo_lib` varchar(50) default NULL,
  `pimo_auto` bit(1) NOT NULL default '\0',
  `pimo_ena` bit(1) NOT NULL default '\0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_recl` table : 
#

DROP TABLE IF EXISTS `m_recl`;

CREATE TABLE `m_recl` (
  `recl_nupi` varchar(50) default NULL,
  `recl_dat` datetime default NULL,
  `recl_daec` datetime default NULL,
  `recl_cai` varchar(50) default NULL,
  `recl_lcai` varchar(50) default NULL,
  `recl_per` varchar(50) default NULL,
  `recl_lper` varchar(50) default NULL,
  `recl_more` varchar(50) default NULL,
  `recl_lmore` varchar(50) default NULL,
  `recl_lib` varchar(100) default NULL,
  `recl_cli` varchar(50) default NULL,
  `recl_lcli` varchar(50) default NULL,
  `recl_coge` varchar(50) default NULL,
  `recl_moreg` decimal(19,4) default '0.0000',
  `recl_cojo` varchar(50) default NULL,
  `recl_lcojo` varchar(50) default NULL,
  `recl_copa` varchar(50) default NULL,
  `recl_cpt` bit(1) default '\0',
  `recl_sen` bit(1) default '\0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `m_recl_facl` table : 
#

DROP TABLE IF EXISTS `m_recl_facl`;

CREATE TABLE `m_recl_facl` (
  `recl_nupi` varchar(50) default NULL,
  `recl_dat` datetime default NULL,
  `recl_daec` datetime default NULL,
  `recl_cai` varchar(50) default NULL,
  `recl_lcai` varchar(50) default NULL,
  `recl_per` varchar(50) default NULL,
  `recl_lper` varchar(50) default NULL,
  `recl_more` varchar(50) default NULL,
  `recl_lmore` varchar(50) default NULL,
  `recl_lib` varchar(100) default NULL,
  `recl_cli` varchar(50) default NULL,
  `recl_lcli` varchar(50) default NULL,
  `recl_coge` varchar(50) default NULL,
  `recl_moreg` decimal(19,4) default '0.0000',
  `recl_moareg` decimal(19,4) default '0.0000',
  `recl_cojo` varchar(50) default NULL,
  `recl_lcojo` varchar(50) default NULL,
  `recl_copa` varchar(50) default NULL,
  `recl_cpt` bit(1) default '\0',
  `recl_sen` bit(1) default '\0',
  `facl_nupi` varchar(50) default NULL,
  `facl_dat` datetime default NULL,
  `facl_cli` varchar(50) default NULL,
  `facl_lcli` varchar(50) default NULL,
  `facl_adr` varchar(100) default NULL,
  `facl_vil` varchar(50) default NULL,
  `facl_toht` decimal(19,4) default '0.0000',
  `facl_tva` decimal(19,4) default '0.0000',
  `facl_ttc` decimal(19,4) default '0.0000',
  `facl_rem` decimal(19,4) default '0.0000',
  `facl_ref1` varchar(50) default NULL,
  `facl_ref2` varchar(50) default NULL,
  `facl_ref3` varchar(50) default NULL,
  `facl_ref4` varchar(50) default NULL,
  `facl_daec` datetime default NULL,
  `facl_cpt` bit(1) default '\0',
  `recl_num` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`recl_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `m_refo` table : 
#

DROP TABLE IF EXISTS `m_refo`;

CREATE TABLE `m_refo` (
  `refo_nupi` varchar(50) default NULL,
  `refo_dat` datetime default NULL,
  `refo_daec` datetime default NULL,
  `refo_cai` varchar(50) default NULL,
  `refo_lcai` varchar(50) default NULL,
  `refo_per` varchar(50) default NULL,
  `refo_lper` varchar(50) default NULL,
  `refo_more` varchar(50) default NULL,
  `refo_lmore` varchar(50) default NULL,
  `refo_lib` varchar(100) default NULL,
  `refo_fou` varchar(50) default NULL,
  `refo_lfou` varchar(50) default NULL,
  `refo_coge` varchar(50) default NULL,
  `refo_moreg` decimal(19,4) default '0.0000',
  `refo_cojo` varchar(50) default NULL,
  `refo_lcojo` varchar(50) default NULL,
  `refo_copa` varchar(50) default NULL,
  `refo_cpt` bit(1) default '\0',
  `refo_sen` bit(1) default '\0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `m_refo_fafo` table : 
#

DROP TABLE IF EXISTS `m_refo_fafo`;

CREATE TABLE `m_refo_fafo` (
  `refo_nupi` varchar(50) default NULL,
  `refo_dat` datetime default NULL,
  `refo_daec` datetime default NULL,
  `refo_cai` varchar(50) default NULL,
  `refo_lcai` varchar(50) default NULL,
  `refo_per` varchar(50) default NULL,
  `refo_lper` varchar(50) default NULL,
  `refo_more` varchar(50) default NULL,
  `refo_lmore` varchar(50) default NULL,
  `refo_lib` varchar(100) default NULL,
  `refo_fou` varchar(50) default NULL,
  `refo_lfou` varchar(50) default NULL,
  `refo_coge` varchar(50) default NULL,
  `refo_moreg` decimal(19,4) default '0.0000',
  `refo_moareg` decimal(19,4) default '0.0000',
  `refo_cojo` varchar(50) default NULL,
  `refo_lcojo` varchar(50) default NULL,
  `refo_copa` varchar(50) default NULL,
  `refo_cpt` bit(1) default '\0',
  `refo_sen` bit(1) default '\0',
  `fafo_nupi` varchar(50) default NULL,
  `fafo_dat` datetime default NULL,
  `fafo_fou` varchar(50) default NULL,
  `fafo_lfou` varchar(50) default NULL,
  `fafo_adr` varchar(100) default NULL,
  `fafo_vil` varchar(50) default NULL,
  `fafo_toht` decimal(19,4) default '0.0000',
  `fafo_tva` decimal(19,4) default '0.0000',
  `fafo_ttc` decimal(19,4) default '0.0000',
  `fafo_rem` decimal(19,4) default '0.0000',
  `fafo_ref1` varchar(50) default NULL,
  `fafo_ref2` varchar(50) default NULL,
  `fafo_ref3` varchar(50) default NULL,
  `fafo_ref4` varchar(50) default NULL,
  `fafo_daec` datetime default NULL,
  `fafo_cpt` bit(1) default '\0',
  `refo_num` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`refo_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 6144 kB';

#
# Structure for the `p_art` table : 
#

DROP TABLE IF EXISTS `p_art`;

CREATE TABLE `p_art` (
  `art_cod` varchar(50) NOT NULL,
  `art_lib` varchar(2000) default NULL,
  `art_faar` varchar(50) default NULL,
  `art_lfaar` varchar(50) default NULL,
  `art_sofa` varchar(50) default NULL,
  `art_lsofa` varchar(50) default NULL,
  `art_mar` varchar(50) default NULL,
  `art_lmar` varchar(50) default NULL,
  `art_unme` varchar(20) default NULL,
  `art_lunme` varchar(50) default NULL,
  `art_prac` decimal(19,4) default '0.0000',
  `art_pracT` decimal(19,4) default '0.0000',
  `art_prve` decimal(19,4) default '0.0000',
  `art_prveT` decimal(19,4) default '0.0000',
  `art_tva` varchar(50) default NULL,
  `art_reac` decimal(19,4) default '0.0000',
  `art_reve` decimal(19,4) default '0.0000',
  `art_pam` decimal(19,4) default '0.0000',
  `art_blo` bit(1) NOT NULL default '\0',
  `art_sto` bit(1) NOT NULL default '\0',
  `art_stmi` decimal(19,4) default '0.0000',
  `art_stma` decimal(19,4) default '0.0000',
  PRIMARY KEY  (`art_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_cai` table : 
#

DROP TABLE IF EXISTS `p_cai`;

CREATE TABLE `p_cai` (
  `cai_cod` varchar(50) default NULL,
  `cai_lib` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `p_cli` table : 
#

DROP TABLE IF EXISTS `p_cli`;

CREATE TABLE `p_cli` (
  `cli_cod` varchar(50) NOT NULL default '',
  `cli_raso` varchar(50) default NULL,
  `cli_fam` varchar(50) default NULL,
  `cli_lfam` varchar(50) default NULL,
  `cli_foju` varchar(50) default NULL,
  `cli_lfoju` varchar(50) default NULL,
  `cli_blo` bit(1) NOT NULL default '\0',
  `cli_coco` varchar(50) default NULL,
  `cli_obs` varchar(100) default NULL,
  `cli_adr` varchar(100) default NULL,
  `cli_vil` varchar(50) default NULL,
  `cli_crac` decimal(19,4) default '0.0000',
  `cli_rem` decimal(19,4) default '0.0000',
  PRIMARY KEY  (`cli_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_cojo` table : 
#

DROP TABLE IF EXISTS `p_cojo`;

CREATE TABLE `p_cojo` (
  `cojo_cod` varchar(50) default NULL,
  `cojo_lib` varchar(50) default NULL,
  `cojo_coge` varchar(50) default NULL,
  `cojo_age` varchar(50) default NULL,
  `cojo_adr` varchar(100) default NULL,
  `cojo_tel` varchar(50) default NULL,
  `cojo_fax` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `p_con_cli` table : 
#

DROP TABLE IF EXISTS `p_con_cli`;

CREATE TABLE `p_con_cli` (
  `con_cod` int(11) NOT NULL auto_increment,
  `con_nom` varchar(50) default NULL,
  `con_tel` varchar(50) default NULL,
  `con_fax` varchar(50) default NULL,
  `con_ema` varchar(50) default NULL,
  `con_ser` varchar(50) default NULL,
  `con_cli` varchar(50) default NULL,
  PRIMARY KEY  (`con_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_con_fou` table : 
#

DROP TABLE IF EXISTS `p_con_fou`;

CREATE TABLE `p_con_fou` (
  `con_cod` int(11) NOT NULL auto_increment,
  `con_nom` varchar(50) default NULL,
  `con_tel` varchar(50) default NULL,
  `con_fax` varchar(50) default NULL,
  `con_ema` varchar(50) default NULL,
  `con_ser` varchar(50) default NULL,
  `con_fou` varchar(50) default NULL,
  PRIMARY KEY  (`con_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_dep` table : 
#

DROP TABLE IF EXISTS `p_dep`;

CREATE TABLE `p_dep` (
  `dep_cod` varchar(50) NOT NULL default '',
  `dep_adr` varchar(100) default NULL,
  `dep_tel` varchar(50) default NULL,
  `dep_fax` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_dro` table : 
#

DROP TABLE IF EXISTS `p_dro`;

CREATE TABLE `p_dro` (
  `dro_cod` int(11) NOT NULL,
  `dro_nom` varchar(50) NOT NULL default '',
  `dro_add` bit(1) NOT NULL default '\0',
  `dro_edit` bit(1) NOT NULL default '\0',
  `dro_del` bit(1) NOT NULL default '\0',
  `dro_vue` bit(1) NOT NULL default '\0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_faar` table : 
#

DROP TABLE IF EXISTS `p_faar`;

CREATE TABLE `p_faar` (
  `faar_cod` varchar(50) NOT NULL,
  `faar_lib` varchar(50) default NULL,
  PRIMARY KEY  (`faar_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_fam` table : 
#

DROP TABLE IF EXISTS `p_fam`;

CREATE TABLE `p_fam` (
  `fam_cod` varchar(50) NOT NULL default '',
  `fam_lib` varchar(50) default NULL,
  PRIMARY KEY  (`fam_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_foju` table : 
#

DROP TABLE IF EXISTS `p_foju`;

CREATE TABLE `p_foju` (
  `foju_cod` varchar(50) NOT NULL,
  `foju_lib` varchar(50) default NULL,
  PRIMARY KEY  (`foju_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_fou` table : 
#

DROP TABLE IF EXISTS `p_fou`;

CREATE TABLE `p_fou` (
  `fou_cod` varchar(50) NOT NULL default '',
  `fou_raso` varchar(50) default NULL,
  `fou_fam` varchar(50) default NULL,
  `fou_lfam` varchar(50) default NULL,
  `fou_foju` varchar(50) default NULL,
  `fou_lfoju` varchar(50) default NULL,
  `fou_blo` bit(1) NOT NULL default '\0',
  `fou_coco` varchar(50) default NULL,
  `fou_obs` varchar(100) default NULL,
  `fou_adr` varchar(100) default NULL,
  `fou_vil` varchar(50) default NULL,
  `fou_rem` decimal(19,4) default '0.0000',
  PRIMARY KEY  (`fou_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_mar` table : 
#

DROP TABLE IF EXISTS `p_mar`;

CREATE TABLE `p_mar` (
  `mar_cod` varchar(50) NOT NULL default '',
  `mar_lib` varchar(50) default NULL,
  PRIMARY KEY  (`mar_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_more` table : 
#

DROP TABLE IF EXISTS `p_more`;

CREATE TABLE `p_more` (
  `more_cod` varchar(50) NOT NULL,
  `more_lib` varchar(50) default NULL,
  PRIMARY KEY  (`more_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_nuse` table : 
#

DROP TABLE IF EXISTS `p_nuse`;

CREATE TABLE `p_nuse` (
  `nuse_cod` varchar(50) default NULL,
  `nuse_lib` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `p_pafi` table : 
#

DROP TABLE IF EXISTS `p_pafi`;

CREATE TABLE `p_pafi` (
  `pafi_cod` varchar(20) default NULL,
  `pafi_lib` varchar(50) default NULL,
  `pafi_che` varchar(50) default NULL,
  `pafi_def` bit(1) default '\0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `p_per` table : 
#

DROP TABLE IF EXISTS `p_per`;

CREATE TABLE `p_per` (
  `per_cod` varchar(50) default NULL,
  `per_lib` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `p_soc` table : 
#

DROP TABLE IF EXISTS `p_soc`;

CREATE TABLE `p_soc` (
  `soc_cod` varchar(50) NOT NULL default '',
  `soc_raso` varchar(50) default NULL,
  `soc_foju` varchar(50) default NULL,
  `soc_lfoju` varchar(50) default NULL,
  `soc_adr` varchar(100) default NULL,
  `soc_tel` varchar(50) default NULL,
  `soc_fax` varchar(50) default NULL,
  `soc_ema` varchar(50) default NULL,
  `soc_sit` varchar(50) default NULL,
  `soc_cap` decimal(19,4) default '0.0000',
  `soc_nrc` varchar(50) default NULL,
  `soc_if` varchar(50) default NULL,
  `soc_pat` varchar(50) default NULL,
  PRIMARY KEY  (`soc_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_sofa` table : 
#

DROP TABLE IF EXISTS `p_sofa`;

CREATE TABLE `p_sofa` (
  `sofa_cod` varchar(50) NOT NULL default '',
  `sofa_lib` varchar(50) default NULL,
  PRIMARY KEY  (`sofa_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_tier_art` table : 
#

DROP TABLE IF EXISTS `p_tier_art`;

CREATE TABLE `p_tier_art` (
  `tier_art_cod` varchar(2000) default NULL,
  `tier_art_ref` varchar(50) default NULL,
  `tier_art_tier` varchar(50) default NULL,
  `tier_art_ltier` varchar(50) default NULL,
  `tier_art_typ` varchar(50) default NULL,
  `tier_art_pri` decimal(19,4) default '0.0000',
  `tier_art_priT` decimal(19,4) default '0.0000',
  `tier_art_rem` decimal(19,4) default '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `p_tier_rem` table : 
#

DROP TABLE IF EXISTS `p_tier_rem`;

CREATE TABLE `p_tier_rem` (
  `tier_rem_cod` varchar(50) default NULL,
  `tier_rem_lib` varchar(50) default NULL,
  `tier_rem_tau` decimal(19,4) default '0.0000',
  `tier_rem_typ` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `p_tva` table : 
#

DROP TABLE IF EXISTS `p_tva`;

CREATE TABLE `p_tva` (
  `tva_cod` varchar(50) default NULL,
  `tva_lib` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `p_unme` table : 
#

DROP TABLE IF EXISTS `p_unme`;

CREATE TABLE `p_unme` (
  `unme_cod` varchar(50) default NULL,
  `unme_lib` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for the `p_usr` table : 
#

DROP TABLE IF EXISTS `p_usr`;

CREATE TABLE `p_usr` (
  `usr_cod` int(11) NOT NULL auto_increment,
  `usr_nom` varchar(50) NOT NULL default '',
  `usr_pws` varchar(50) default NULL,
  `usr_gro` varchar(50) default NULL,
  PRIMARY KEY  (`usr_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `tykyfact` table : 
#

DROP TABLE IF EXISTS `tykyfact`;

CREATE TABLE `tykyfact` (
  `TYKYCOD` int(11) NOT NULL,
  `TYKYFACT` varchar(50) default NULL,
  PRIMARY KEY  (`TYKYCOD`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Structure for the `version` table : 
#

DROP TABLE IF EXISTS `version`;

CREATE TABLE `version` (
  `version_cod` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Definition for the `art_ref0` view : 
#

DROP VIEW IF EXISTS `art_ref0`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `art_ref0` AS 
  select 
    `p_art`.`art_cod` AS `art_cod`,
    _latin1'' AS `art_ref`,
    `p_art`.`art_lib` AS `art_lib`,
    `p_art`.`art_faar` AS `art_faar`,
    `p_art`.`art_lfaar` AS `art_lfaar`,
    `p_art`.`art_sofa` AS `art_sofa`,
    `p_art`.`art_lsofa` AS `art_lsofa`,
    `p_art`.`art_mar` AS `art_mar`,
    `p_art`.`art_lmar` AS `art_lmar`,
    `p_art`.`art_unme` AS `art_unme`,
    `p_art`.`art_lunme` AS `art_lunme`,
    `p_art`.`art_tva` AS `art_tva`,
    `p_art`.`art_reac` AS `art_reac`,
    `p_art`.`art_blo` AS `art_blo`,
    `p_art`.`art_prac` AS `art_prac`,
    `p_art`.`art_pracT` AS `art_pracT`,
    `p_art`.`art_prve` AS `art_prve`,
    `p_art`.`art_prveT` AS `art_prveT`,
    _latin1'' AS `tie`,
    _latin1'' AS `ltie`,
    _latin1'art' AS `typ` 
  from 
    `p_art` 
  where 
    (`p_art`.`art_blo` = 0);

#
# Definition for the `art_ref1` view : 
#

DROP VIEW IF EXISTS `art_ref1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `art_ref1` AS 
  select 
    `p_tier_art`.`tier_art_cod` AS `rart_cod`,
    `p_tier_art`.`tier_art_ref` AS `rart_ref`,
    `p_art`.`art_lib` AS `art_lib`,
    `p_art`.`art_faar` AS `art_faar`,
    `p_art`.`art_lfaar` AS `art_lfaar`,
    `p_art`.`art_sofa` AS `art_sofa`,
    `p_art`.`art_lsofa` AS `art_lsofa`,
    `p_art`.`art_mar` AS `art_mar`,
    `p_art`.`art_lmar` AS `art_lmar`,
    `p_art`.`art_unme` AS `art_unme`,
    `p_art`.`art_lunme` AS `art_lunme`,
    `p_art`.`art_tva` AS `art_tva`,
    `p_tier_art`.`tier_art_rem` AS `rart_rem`,
    `p_art`.`art_blo` AS `art_blo`,
    `p_tier_art`.`tier_art_pri` AS `rart_pri`,
    `p_tier_art`.`tier_art_priT` AS `rart_priT`,
    _latin1'ref' AS `typ`,
    `p_tier_art`.`tier_art_tier` AS `rart_tier`,
    `p_tier_art`.`tier_art_ltier` AS `rart_ltier` 
  from 
    (`p_tier_art` join `p_art` on((`p_tier_art`.`tier_art_cod` = `p_art`.`art_cod`))) 
  where 
    ((`p_tier_art`.`tier_art_typ` = _latin1'fou') and (`p_art`.`art_blo` = 0));

#
# Definition for the `art_ref2` view : 
#

DROP VIEW IF EXISTS `art_ref2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `art_ref2` AS 
  select 
    `p_tier_art`.`tier_art_cod` AS `rart_cod`,
    `p_tier_art`.`tier_art_ref` AS `rart_ref`,
    `p_art`.`art_lib` AS `art_lib`,
    `p_art`.`art_faar` AS `art_faar`,
    `p_art`.`art_lfaar` AS `art_lfaar`,
    `p_art`.`art_sofa` AS `art_sofa`,
    `p_art`.`art_lsofa` AS `art_lsofa`,
    `p_art`.`art_mar` AS `art_mar`,
    `p_art`.`art_lmar` AS `art_lmar`,
    `p_art`.`art_unme` AS `art_unme`,
    `p_art`.`art_lunme` AS `art_lunme`,
    `p_art`.`art_tva` AS `art_tva`,
    `p_tier_art`.`tier_art_rem` AS `rart_rem`,
    `p_art`.`art_blo` AS `art_blo`,
    `p_tier_art`.`tier_art_pri` AS `rart_pri`,
    `p_tier_art`.`tier_art_priT` AS `rart_priT`,
    _latin1'ref' AS `typ`,
    `p_tier_art`.`tier_art_tier` AS `rart_tier`,
    `p_tier_art`.`tier_art_ltier` AS `rart_ltier` 
  from 
    (`p_tier_art` join `p_art` on((`p_tier_art`.`tier_art_cod` = `p_art`.`art_cod`))) 
  where 
    ((`p_tier_art`.`tier_art_typ` = _latin1'cli') and (`p_art`.`art_blo` = 0));

#
# Definition for the `art_refcli` view : 
#

DROP VIEW IF EXISTS `art_refcli`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `art_refcli` AS 
  select 
    `art_ref0`.`art_cod` AS `art_cod`,
    `art_ref0`.`art_ref` AS `art_ref`,
    `art_ref0`.`art_lib` AS `art_lib`,
    `art_ref0`.`art_faar` AS `art_faar`,
    `art_ref0`.`art_lfaar` AS `art_lfaar`,
    `art_ref0`.`art_sofa` AS `art_sofa`,
    `art_ref0`.`art_lsofa` AS `art_lsofa`,
    `art_ref0`.`art_mar` AS `art_mar`,
    `art_ref0`.`art_lmar` AS `art_lmar`,
    `art_ref0`.`art_unme` AS `art_unme`,
    `art_ref0`.`art_lunme` AS `art_lunme`,
    `art_ref0`.`art_tva` AS `art_tva`,
    `art_ref0`.`art_reac` AS `art_rem`,
    `art_ref0`.`art_blo` AS `art_blo`,
    `art_ref0`.`art_prve` AS `art_prve`,
    `art_ref0`.`art_prveT` AS `art_prveT`,
    `art_ref0`.`typ` AS `typ`,
    `art_ref0`.`tie` AS `tie`,
    `art_ref0`.`ltie` AS `ltie` 
  from 
    `art_ref0` union 
  select 
    `art_ref2`.`rart_cod` AS `rart_cod`,
    `art_ref2`.`rart_ref` AS `rart_ref`,
    `art_ref2`.`art_lib` AS `art_lib`,
    `art_ref2`.`art_faar` AS `art_faar`,
    `art_ref2`.`art_lfaar` AS `art_lfaar`,
    `art_ref2`.`art_sofa` AS `art_sofa`,
    `art_ref2`.`art_lsofa` AS `art_lsofa`,
    `art_ref2`.`art_mar` AS `art_mar`,
    `art_ref2`.`art_lmar` AS `art_lmar`,
    `art_ref2`.`art_unme` AS `art_unme`,
    `art_ref2`.`art_lunme` AS `art_lunme`,
    `art_ref2`.`art_tva` AS `art_tva`,
    `art_ref2`.`rart_rem` AS `rart_rem`,
    `art_ref2`.`art_blo` AS `art_blo`,
    `art_ref2`.`rart_pri` AS `rart_pri`,
    `art_ref2`.`rart_priT` AS `rart_priT`,
    `art_ref2`.`typ` AS `typ`,
    `art_ref2`.`rart_tier` AS `rart_tier`,
    `art_ref2`.`rart_ltier` AS `rart_ltier` 
  from 
    `art_ref2`;

#
# Definition for the `art_reffou` view : 
#

DROP VIEW IF EXISTS `art_reffou`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `art_reffou` AS 
  select 
    `art_ref0`.`art_cod` AS `art_cod`,
    `art_ref0`.`art_ref` AS `art_ref`,
    `art_ref0`.`art_lib` AS `art_lib`,
    `art_ref0`.`art_faar` AS `art_faar`,
    `art_ref0`.`art_lfaar` AS `art_lfaar`,
    `art_ref0`.`art_sofa` AS `art_sofa`,
    `art_ref0`.`art_lsofa` AS `art_lsofa`,
    `art_ref0`.`art_mar` AS `art_mar`,
    `art_ref0`.`art_lmar` AS `art_lmar`,
    `art_ref0`.`art_unme` AS `art_unme`,
    `art_ref0`.`art_lunme` AS `art_lunme`,
    `art_ref0`.`art_tva` AS `art_tva`,
    `art_ref0`.`art_reac` AS `art_rem`,
    `art_ref0`.`art_blo` AS `art_blo`,
    `art_ref0`.`art_prac` AS `art_prac`,
    `art_ref0`.`art_pracT` AS `art_pracT`,
    `art_ref0`.`typ` AS `typ`,
    `art_ref0`.`tie` AS `tie`,
    `art_ref0`.`ltie` AS `ltie` 
  from 
    `art_ref0` union 
  select 
    `art_ref1`.`rart_cod` AS `rart_cod`,
    `art_ref1`.`rart_ref` AS `rart_ref`,
    `art_ref1`.`art_lib` AS `art_lib`,
    `art_ref1`.`art_faar` AS `art_faar`,
    `art_ref1`.`art_lfaar` AS `art_lfaar`,
    `art_ref1`.`art_sofa` AS `art_sofa`,
    `art_ref1`.`art_lsofa` AS `art_lsofa`,
    `art_ref1`.`art_mar` AS `art_mar`,
    `art_ref1`.`art_lmar` AS `art_lmar`,
    `art_ref1`.`art_unme` AS `art_unme`,
    `art_ref1`.`art_lunme` AS `art_lunme`,
    `art_ref1`.`art_tva` AS `art_tva`,
    `art_ref1`.`rart_rem` AS `rart_rem`,
    `art_ref1`.`art_blo` AS `art_blo`,
    `art_ref1`.`rart_pri` AS `rart_pri`,
    `art_ref1`.`rart_priT` AS `rart_priT`,
    `art_ref1`.`typ` AS `typ`,
    `art_ref1`.`rart_tier` AS `rart_tier`,
    `art_ref1`.`rart_ltier` AS `rart_ltier` 
  from 
    `art_ref1`;

#
# Definition for the `avcl_print` view : 
#

DROP VIEW IF EXISTS `avcl_print`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `avcl_print` AS 
  select 
    `m_a_avcl`.`a_avcl_num` AS `a_avcl_num`,
    `m_a_avcl`.`a_avcl_cod` AS `a_avcl_cod`,
    `m_a_avcl`.`a_avcl_ref` AS `a_avcl_ref`,
    `m_a_avcl`.`a_avcl_lib` AS `a_avcl_lib`,
    `m_a_avcl`.`a_avcl_nuse` AS `a_avcl_nuse`,
    `m_a_avcl`.`a_avcl_dep` AS `a_avcl_dep`,
    `m_a_avcl`.`a_avcl_pri` AS `a_avcl_pri`,
    `m_a_avcl`.`a_avcl_priT` AS `a_avcl_priT`,
    `m_a_avcl`.`a_avcl_rem` AS `a_avcl_rem`,
    `m_a_avcl`.`a_avcl_qua` AS `a_avcl_qua`,
    `m_a_avcl`.`a_avcl_dd1` AS `a_avcl_dd1`,
    `m_a_avcl`.`a_avcl_dd2` AS `a_avcl_dd2`,
    `m_a_avcl`.`a_avcl_dd3` AS `a_avcl_dd3`,
    `m_a_avcl`.`a_avcl_dd4` AS `a_avcl_dd4`,
    `m_a_avcl`.`a_avcl_toht` AS `a_avcl_toht`,
    `m_a_avcl`.`a_avcl_tott` AS `a_avcl_tott`,
    `m_a_avcl`.`a_avcl_tva` AS `a_avcl_tva`,
    `m_a_avcl`.`a_avcl_nupi` AS `a_avcl_nupi`,
    `m_a_avcl`.`a_avcl_dat` AS `a_avcl_dat`,
    `m_a_avcl`.`a_avcl_cli` AS `a_avcl_cli`,
    `m_a_avcl`.`a_avcl_lcli` AS `a_avcl_lcli`,
    `m_a_avcl`.`a_avcl_adr` AS `a_avcl_adr`,
    `m_a_avcl`.`a_avcl_vil` AS `a_avcl_vil`,
    `m_a_avcl`.`a_avcl_tohtg` AS `a_avcl_tohtg`,
    `m_a_avcl`.`a_avcl_ttcg` AS `a_avcl_ttcg`,
    `m_a_avcl`.`a_avcl_tvag` AS `a_avcl_tvag`,
    `m_a_avcl`.`a_avcl_remg` AS `a_avcl_remg`,
    `m_a_avcl`.`a_avcl_ref1` AS `a_avcl_ref1`,
    `m_a_avcl`.`a_avcl_ref2` AS `a_avcl_ref2`,
    `m_a_avcl`.`a_avcl_ref3` AS `a_avcl_ref3`,
    `m_a_avcl`.`a_avcl_ref4` AS `a_avcl_ref4` 
  from 
    `m_a_avcl`;

#
# Definition for the `avfo_print` view : 
#

DROP VIEW IF EXISTS `avfo_print`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `avfo_print` AS 
  select 
    `m_a_avfo`.`a_avfo_num` AS `a_avfo_num`,
    `m_a_avfo`.`a_avfo_cod` AS `a_avfo_cod`,
    `m_a_avfo`.`a_avfo_ref` AS `a_avfo_ref`,
    `m_a_avfo`.`a_avfo_lib` AS `a_avfo_lib`,
    `m_a_avfo`.`a_avfo_nuse` AS `a_avfo_nuse`,
    `m_a_avfo`.`a_avfo_dep` AS `a_avfo_dep`,
    `m_a_avfo`.`a_avfo_pri` AS `a_avfo_pri`,
    `m_a_avfo`.`a_avfo_priT` AS `a_avfo_priT`,
    `m_a_avfo`.`a_avfo_rem` AS `a_avfo_rem`,
    `m_a_avfo`.`a_avfo_qua` AS `a_avfo_qua`,
    `m_a_avfo`.`a_avfo_dd1` AS `a_avfo_dd1`,
    `m_a_avfo`.`a_avfo_dd2` AS `a_avfo_dd2`,
    `m_a_avfo`.`a_avfo_dd3` AS `a_avfo_dd3`,
    `m_a_avfo`.`a_avfo_dd4` AS `a_avfo_dd4`,
    `m_a_avfo`.`a_avfo_toht` AS `a_avfo_toht`,
    `m_a_avfo`.`a_avfo_tott` AS `a_avfo_tott`,
    `m_a_avfo`.`a_avfo_tva` AS `a_avfo_tva`,
    `m_a_avfo`.`a_avfo_nupi` AS `a_avfo_nupi`,
    `m_a_avfo`.`a_avfo_dat` AS `a_avfo_dat`,
    `m_a_avfo`.`a_avfo_fou` AS `a_avfo_fou`,
    `m_a_avfo`.`a_avfo_lfou` AS `a_avfo_lfou`,
    `m_a_avfo`.`a_avfo_adr` AS `a_avfo_adr`,
    `m_a_avfo`.`a_avfo_vil` AS `a_avfo_vil`,
    `m_a_avfo`.`a_avfo_tohtg` AS `a_avfo_tohtg`,
    `m_a_avfo`.`a_avfo_ttcg` AS `a_avfo_ttcg`,
    `m_a_avfo`.`a_avfo_tvag` AS `a_avfo_tvag`,
    `m_a_avfo`.`a_avfo_remg` AS `a_avfo_remg`,
    `m_a_avfo`.`a_avfo_ref1` AS `a_avfo_ref1`,
    `m_a_avfo`.`a_avfo_ref2` AS `a_avfo_ref2`,
    `m_a_avfo`.`a_avfo_ref3` AS `a_avfo_ref3`,
    `m_a_avfo`.`a_avfo_ref4` AS `a_avfo_ref4` 
  from 
    `m_a_avfo`;

#
# Definition for the `decl_print` view : 
#

DROP VIEW IF EXISTS `decl_print`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `decl_print` AS 
  select 
    `m_a_decl`.`a_decl_num` AS `a_decl_num`,
    `m_a_decl`.`a_decl_cod` AS `a_decl_cod`,
    `m_a_decl`.`a_decl_lib` AS `a_decl_lib`,
    `m_a_decl`.`a_decl_ref` AS `a_decl_ref`,
    `m_a_decl`.`a_decl_dep` AS `a_decl_dep`,
    `m_a_decl`.`a_decl_nuse` AS `a_decl_nuse`,
    `m_a_decl`.`a_decl_pri` AS `a_decl_pri`,
    `m_a_decl`.`a_decl_priT` AS `a_decl_priT`,
    `m_a_decl`.`a_decl_qua` AS `a_decl_qua`,
    `m_a_decl`.`a_decl_dd1` AS `a_decl_dd1`,
    `m_a_decl`.`a_decl_dd2` AS `a_decl_dd2`,
    `m_a_decl`.`a_decl_dd3` AS `a_decl_dd3`,
    `m_a_decl`.`a_decl_dd4` AS `a_decl_dd4`,
    `m_a_decl`.`a_decl_rem` AS `a_decl_rem`,
    `m_a_decl`.`a_decl_toht` AS `a_decl_toht`,
    `m_a_decl`.`a_decl_tva` AS `a_decl_tva`,
    `m_a_decl`.`a_decl_tott` AS `a_decl_tott`,
    `m_a_decl`.`a_decl_nupi` AS `a_decl_nupi`,
    `m_a_decl`.`a_decl_dat` AS `a_decl_dat`,
    `m_a_decl`.`a_decl_cli` AS `a_decl_cli`,
    `m_a_decl`.`a_decl_lcli` AS `a_decl_lcli`,
    `m_a_decl`.`a_decl_adr` AS `a_decl_adr`,
    `m_a_decl`.`a_decl_vil` AS `a_decl_vil`,
    `m_a_decl`.`a_decl_tohtg` AS `a_decl_tohtg`,
    `m_a_decl`.`a_decl_tvag` AS `a_decl_tvag`,
    `m_a_decl`.`a_decl_ttcg` AS `a_decl_ttcg`,
    `m_a_decl`.`a_decl_remg` AS `a_decl_remg`,
    `m_a_decl`.`a_decl_ref1` AS `a_decl_ref1`,
    `m_a_decl`.`a_decl_ref2` AS `a_decl_ref2`,
    `m_a_decl`.`a_decl_ref3` AS `a_decl_ref3`,
    `m_a_decl`.`a_decl_ref4` AS `a_decl_ref4` 
  from 
    `m_a_decl`;

#
# Definition for the `defo_print` view : 
#

DROP VIEW IF EXISTS `defo_print`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `defo_print` AS 
  select 
    `m_a_defo`.`a_defo_num` AS `a_defo_num`,
    `m_a_defo`.`a_defo_cod` AS `a_defo_cod`,
    `m_a_defo`.`a_defo_lib` AS `a_defo_lib`,
    `m_a_defo`.`a_defo_ref` AS `a_defo_ref`,
    `m_a_defo`.`a_defo_dep` AS `a_defo_dep`,
    `m_a_defo`.`a_defo_nuse` AS `a_defo_nuse`,
    `m_a_defo`.`a_defo_pri` AS `a_defo_pri`,
    `m_a_defo`.`a_defo_priT` AS `a_defo_priT`,
    `m_a_defo`.`a_defo_qua` AS `a_defo_qua`,
    `m_a_defo`.`a_defo_dd1` AS `a_defo_dd1`,
    `m_a_defo`.`a_defo_dd2` AS `a_defo_dd2`,
    `m_a_defo`.`a_defo_dd3` AS `a_defo_dd3`,
    `m_a_defo`.`a_defo_dd4` AS `a_defo_dd4`,
    `m_a_defo`.`a_defo_rem` AS `a_defo_rem`,
    `m_a_defo`.`a_defo_toht` AS `a_defo_toht`,
    `m_a_defo`.`a_defo_tva` AS `a_defo_tva`,
    `m_a_defo`.`a_defo_tott` AS `a_defo_tott`,
    `m_a_defo`.`a_defo_nupi` AS `a_defo_nupi`,
    `m_a_defo`.`a_defo_dat` AS `a_defo_dat`,
    `m_a_defo`.`a_defo_fou` AS `a_defo_fou`,
    `m_a_defo`.`a_defo_lfou` AS `a_defo_lfou`,
    `m_a_defo`.`a_defo_adr` AS `a_defo_adr`,
    `m_a_defo`.`a_defo_vil` AS `a_defo_vil`,
    `m_a_defo`.`a_defo_tohtg` AS `a_defo_tohtg`,
    `m_a_defo`.`a_defo_tvag` AS `a_defo_tvag`,
    `m_a_defo`.`a_defo_ttcg` AS `a_defo_ttcg`,
    `m_a_defo`.`a_defo_remg` AS `a_defo_remg`,
    `m_a_defo`.`a_defo_ref1` AS `a_defo_ref1`,
    `m_a_defo`.`a_defo_ref2` AS `a_defo_ref2`,
    `m_a_defo`.`a_defo_ref3` AS `a_defo_ref3`,
    `m_a_defo`.`a_defo_ref4` AS `a_defo_ref4` 
  from 
    `m_a_defo`;

#
# Definition for the `e_baagc00` view : 
#

DROP VIEW IF EXISTS `e_baagc00`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_baagc00` AS 
  select 
    `m_recl_facl`.`facl_nupi` AS `facl_nupi`,
    `m_recl_facl`.`recl_moareg` AS `recl_moareg` 
  from 
    `m_recl_facl` 
  where 
    (((`m_recl_facl`.`recl_copa` like _latin1'5141%') or (`m_recl_facl`.`recl_copa` like _latin1'5161%')) and (`m_recl_facl`.`recl_sen` = 1)) union 
  select 
    `m_recl_facl`.`facl_nupi` AS `facl_nupi`,
    -(`m_recl_facl`.`recl_moareg`) AS `recl_moareg` 
  from 
    `m_recl_facl` 
  where 
    (((`m_recl_facl`.`recl_copa` like _latin1'5141%') or (`m_recl_facl`.`recl_copa` like _latin1'5161%')) and (`m_recl_facl`.`recl_sen` = 0));

#
# Definition for the `e_baagc01` view : 
#

DROP VIEW IF EXISTS `e_baagc01`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_baagc01` AS 
  select 
    `e_baagc00`.`facl_nupi` AS `facl_nupi`,
    sum(`e_baagc00`.`recl_moareg`) AS `recl_moareg` 
  from 
    `e_baagc00` 
  group by 
    `e_baagc00`.`facl_nupi`;

#
# Definition for the `e_baagc02` view : 
#

DROP VIEW IF EXISTS `e_baagc02`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_baagc02` AS 
  select 
    `m_facl`.`facl_nupi` AS `facl_nupi`,
    `m_facl`.`facl_dat` AS `facl_dat`,
    `m_facl`.`facl_cli` AS `facl_cli`,
    `m_facl`.`facl_lcli` AS `facl_lcli`,
    (`m_facl`.`facl_ttc` - if(isnull(`e_baagc01`.`recl_moareg`),0,`e_baagc01`.`recl_moareg`)) AS `facl_ttc`,
    `m_facl`.`facl_daec` AS `facl_daec` 
  from 
    (`m_facl` left join `e_baagc01` on((`m_facl`.`facl_nupi` = `e_baagc01`.`facl_nupi`))) 
  where 
    ((`m_facl`.`facl_ttc` - if(isnull(`e_baagc01`.`recl_moareg`),0,`e_baagc01`.`recl_moareg`)) > 0);

#
# Definition for the `e_baagc1` view : 
#

DROP VIEW IF EXISTS `e_baagc1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_baagc1` AS 
  select 
    `e_baagc02`.`facl_cli` AS `facl_cli`,
    `e_baagc02`.`facl_lcli` AS `facl_lcli`,
    `e_baagc02`.`facl_daec` AS `facl_daec`,
    if(((to_days(_latin1'2017-01-04') - to_days(`e_baagc02`.`facl_daec`)) <= 0),`e_baagc02`.`facl_ttc`,0) AS `facl_dif_0`,
    if((((to_days(_latin1'2017-01-04') - to_days(`e_baagc02`.`facl_daec`)) <= 30) and ((to_days(_latin1'2017-01-04') - to_days(`e_baagc02`.`facl_daec`)) > 0)),`e_baagc02`.`facl_ttc`,0) AS `facl_dif_30`,
    if((((to_days(_latin1'2017-01-04') - to_days(`e_baagc02`.`facl_daec`)) <= 60) and ((to_days(_latin1'2017-01-04') - to_days(`e_baagc02`.`facl_daec`)) > 30)),`e_baagc02`.`facl_ttc`,0) AS `facl_dif_60`,
    if((((to_days(_latin1'2017-01-04') - to_days(`e_baagc02`.`facl_daec`)) <= 90) and ((to_days(_latin1'2017-01-04') - to_days(`e_baagc02`.`facl_daec`)) > 60)),`e_baagc02`.`facl_ttc`,0) AS `facl_dif_90` 
  from 
    `e_baagc02` 
  where 
    ((1 = 1) and (`e_baagc02`.`facl_daec` >= _latin1'2017-01-01') and (`e_baagc02`.`facl_daec` <= _latin1'2017-12-31'));

#
# Definition for the `e_baagc2` view : 
#

DROP VIEW IF EXISTS `e_baagc2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_baagc2` AS 
  select 
    `e_baagc1`.`facl_cli` AS `facl_cli`,
    `e_baagc1`.`facl_lcli` AS `facl_lcli`,
    (((sum(`e_baagc1`.`facl_dif_0`) + sum(`e_baagc1`.`facl_dif_30`)) + sum(`e_baagc1`.`facl_dif_60`)) + sum(`e_baagc1`.`facl_dif_90`)) AS `facl_ttc`,
    sum(`e_baagc1`.`facl_dif_0`) AS `facl_dif_0`,
    sum(`e_baagc1`.`facl_dif_30`) AS `facl_dif_30`,
    sum(`e_baagc1`.`facl_dif_60`) AS `facl_dif_60`,
    sum(`e_baagc1`.`facl_dif_90`) AS `facl_dif_90` 
  from 
    `e_baagc1` 
  group by 
    `e_baagc1`.`facl_cli`,`e_baagc1`.`facl_lcli`;

#
# Definition for the `e_baagf00` view : 
#

DROP VIEW IF EXISTS `e_baagf00`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_baagf00` AS 
  select 
    `m_refo_fafo`.`fafo_nupi` AS `fafo_nupi`,
    `m_refo_fafo`.`refo_moareg` AS `refo_moareg` 
  from 
    `m_refo_fafo` 
  where 
    (((`m_refo_fafo`.`refo_copa` like _latin1'5141%') or (`m_refo_fafo`.`refo_copa` like _latin1'5161%')) and (`m_refo_fafo`.`refo_sen` = 1)) union 
  select 
    `m_refo_fafo`.`fafo_nupi` AS `fafo_nupi`,
    -(`m_refo_fafo`.`refo_moareg`) AS `refo_moareg` 
  from 
    `m_refo_fafo` 
  where 
    (((`m_refo_fafo`.`refo_copa` like _latin1'5141%') or (`m_refo_fafo`.`refo_copa` like _latin1'5161%')) and (`m_refo_fafo`.`refo_sen` = 0));

#
# Definition for the `e_baagf01` view : 
#

DROP VIEW IF EXISTS `e_baagf01`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_baagf01` AS 
  select 
    `e_baagf00`.`fafo_nupi` AS `fafo_nupi`,
    sum(`e_baagf00`.`refo_moareg`) AS `refo_moareg` 
  from 
    `e_baagf00` 
  group by 
    `e_baagf00`.`fafo_nupi`;

#
# Definition for the `e_baagf02` view : 
#

DROP VIEW IF EXISTS `e_baagf02`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_baagf02` AS 
  select 
    `m_fafo`.`fafo_nupi` AS `fafo_nupi`,
    `m_fafo`.`fafo_dat` AS `fafo_dat`,
    `m_fafo`.`fafo_fou` AS `fafo_fou`,
    `m_fafo`.`fafo_lfou` AS `fafo_lfou`,
    (`m_fafo`.`fafo_ttc` - if(isnull(`e_baagf01`.`refo_moareg`),0,`e_baagf01`.`refo_moareg`)) AS `fafo_ttc`,
    `m_fafo`.`fafo_daec` AS `fafo_daec` 
  from 
    (`m_fafo` left join `e_baagf01` on((`m_fafo`.`fafo_nupi` = `e_baagf01`.`fafo_nupi`))) 
  where 
    ((`m_fafo`.`fafo_ttc` - if(isnull(`e_baagf01`.`refo_moareg`),0,`e_baagf01`.`refo_moareg`)) > 0);

#
# Definition for the `e_baagf1` view : 
#

DROP VIEW IF EXISTS `e_baagf1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_baagf1` AS 
  select 
    `e_baagf02`.`fafo_fou` AS `fafo_fou`,
    `e_baagf02`.`fafo_lfou` AS `fafo_lfou`,
    `e_baagf02`.`fafo_daec` AS `fafo_daec`,
    if(((to_days(_latin1'2010-07-20') - to_days(`e_baagf02`.`fafo_daec`)) <= 0),`e_baagf02`.`fafo_ttc`,0) AS `fafo_dif_0`,
    if((((to_days(_latin1'2010-07-20') - to_days(`e_baagf02`.`fafo_daec`)) <= 30) and ((to_days(_latin1'2010-07-20') - to_days(`e_baagf02`.`fafo_daec`)) > 0)),`e_baagf02`.`fafo_ttc`,0) AS `fafo_dif_30`,
    if((((to_days(_latin1'2010-07-20') - to_days(`e_baagf02`.`fafo_daec`)) <= 60) and ((to_days(_latin1'2010-07-20') - to_days(`e_baagf02`.`fafo_daec`)) > 45)),`e_baagf02`.`fafo_ttc`,0) AS `fafo_dif_60`,
    if((((to_days(_latin1'2010-07-20') - to_days(`e_baagf02`.`fafo_daec`)) <= 90) and ((to_days(_latin1'2010-07-20') - to_days(`e_baagf02`.`fafo_daec`)) > 60)),`e_baagf02`.`fafo_ttc`,0) AS `fafo_dif_90` 
  from 
    `e_baagf02` 
  where 
    ((1 = 1) and (`e_baagf02`.`fafo_daec` > _latin1'2010-01-01') and (`e_baagf02`.`fafo_daec` < _latin1'2010-12-31') and (`e_baagf02`.`fafo_fou` >= _latin1'C951091') and (`e_baagf02`.`fafo_fou` <= _latin1'C951091'));

#
# Definition for the `e_baagf2` view : 
#

DROP VIEW IF EXISTS `e_baagf2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_baagf2` AS 
  select 
    `e_baagf1`.`fafo_fou` AS `fafo_fou`,
    `e_baagf1`.`fafo_lfou` AS `fafo_lfou`,
    (((sum(`e_baagf1`.`fafo_dif_0`) + sum(`e_baagf1`.`fafo_dif_30`)) + sum(`e_baagf1`.`fafo_dif_60`)) + sum(`e_baagf1`.`fafo_dif_90`)) AS `fafo_ttc`,
    sum(`e_baagf1`.`fafo_dif_0`) AS `fafo_dif_0`,
    sum(`e_baagf1`.`fafo_dif_30`) AS `fafo_dif_30`,
    sum(`e_baagf1`.`fafo_dif_60`) AS `fafo_dif_60`,
    sum(`e_baagf1`.`fafo_dif_90`) AS `fafo_dif_90` 
  from 
    `e_baagf1` 
  group by 
    `e_baagf1`.`fafo_fou`,`e_baagf1`.`fafo_lfou`;

#
# Definition for the `e_fimo` view : 
#

DROP VIEW IF EXISTS `e_fimo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_fimo` AS 
  select 
    `m_a_decl`.`a_decl_nupi` AS `nupi`,
    _utf8'Client' AS `tier`,
    _utf8'de' AS `cotyp`,
    _utf8'Document Divers' AS `typ`,
    `m_a_decl`.`a_decl_dat` AS `dat`,
    `m_a_decl`.`a_decl_cli` AS `cli`,
    `m_a_decl`.`a_decl_lcli` AS `lcli`,
    `m_a_decl`.`a_decl_cod` AS `cod`,
    `m_a_decl`.`a_decl_lib` AS `lib`,
    `m_a_decl`.`a_decl_nuse` AS `nuse`,
    `m_a_decl`.`a_decl_dep` AS `dep`,
    `m_a_decl`.`a_decl_pri` AS `pri`,
    `m_a_decl`.`a_decl_priT` AS `priT`,
    `m_a_decl`.`a_decl_rem` AS `rem`,
    `m_a_decl`.`a_decl_qua` AS `qua`,
    `m_a_decl`.`a_decl_dd1` AS `dd1`,
    `m_a_decl`.`a_decl_dd2` AS `dd2`,
    `m_a_decl`.`a_decl_dd3` AS `dd3`,
    `m_a_decl`.`a_decl_dd4` AS `dd4`,
    `m_a_decl`.`a_decl_toht` AS `toht`,
    `m_a_decl`.`a_decl_tott` AS `tott`,
    `m_a_decl`.`a_decl_ref1` AS `ref1`,
    `m_a_decl`.`a_decl_ref2` AS `ref2`,
    `m_a_decl`.`a_decl_ref3` AS `ref3`,
    `m_a_decl`.`a_decl_ref4` AS `ref4`,
    _utf8'00000000000000000000000000000000000000000000000000' AS `gro`,
    _utf8'00000000000000000000000000000000000000000000000000' AS `lgro` 
  from 
    `m_a_decl` union 
  select 
    `m_a_facl`.`a_facl_nupi` AS `nupi`,
    _utf8'Client' AS `tier`,
    _utf8'fa' AS `cotyp`,
    _utf8'Facture' AS `typ`,
    `m_a_facl`.`a_facl_dat` AS `dat`,
    `m_a_facl`.`a_facl_cli` AS `cli`,
    `m_a_facl`.`a_facl_lcli` AS `lcli`,
    `m_a_facl`.`a_facl_cod` AS `cod`,
    `m_a_facl`.`a_facl_lib` AS `lib`,
    `m_a_facl`.`a_facl_nuse` AS `nuse`,
    `m_a_facl`.`a_facl_dep` AS `dep`,
    `m_a_facl`.`a_facl_pri` AS `pri`,
    `m_a_facl`.`a_facl_priT` AS `priT`,
    `m_a_facl`.`a_facl_rem` AS `rem`,
    `m_a_facl`.`a_facl_qua` AS `qua`,
    `m_a_facl`.`a_facl_dd1` AS `dd1`,
    `m_a_facl`.`a_facl_dd2` AS `dd2`,
    `m_a_facl`.`a_facl_dd3` AS `dd3`,
    `m_a_facl`.`a_facl_dd4` AS `dd4`,
    `m_a_facl`.`a_facl_toht` AS `toht`,
    `m_a_facl`.`a_facl_tott` AS `tott`,
    `m_a_facl`.`a_facl_ref1` AS `ref1`,
    `m_a_facl`.`a_facl_ref2` AS `ref2`,
    `m_a_facl`.`a_facl_ref3` AS `ref3`,
    `m_a_facl`.`a_facl_ref4` AS `ref4`,
    _utf8'00000000000000000000000000000000000000000000000000' AS `gro`,
    _utf8'00000000000000000000000000000000000000000000000000' AS `lgro` 
  from 
    `m_a_facl` union 
  select 
    `m_a_avcl`.`a_avcl_nupi` AS `nupi`,
    _utf8'Client' AS `tier`,
    _utf8'av' AS `cotyp`,
    _utf8'Avoir' AS `typ`,
    `m_a_avcl`.`a_avcl_dat` AS `dat`,
    `m_a_avcl`.`a_avcl_cli` AS `cli`,
    `m_a_avcl`.`a_avcl_lcli` AS `lcli`,
    `m_a_avcl`.`a_avcl_cod` AS `cod`,
    `m_a_avcl`.`a_avcl_lib` AS `lib`,
    `m_a_avcl`.`a_avcl_nuse` AS `nuse`,
    `m_a_avcl`.`a_avcl_dep` AS `dep`,
    `m_a_avcl`.`a_avcl_pri` AS `pri`,
    `m_a_avcl`.`a_avcl_priT` AS `priT`,
    `m_a_avcl`.`a_avcl_rem` AS `rem`,
    `m_a_avcl`.`a_avcl_qua` AS `qua`,
    `m_a_avcl`.`a_avcl_dd1` AS `dd1`,
    `m_a_avcl`.`a_avcl_dd2` AS `dd2`,
    `m_a_avcl`.`a_avcl_dd3` AS `dd3`,
    `m_a_avcl`.`a_avcl_dd4` AS `dd4`,
    `m_a_avcl`.`a_avcl_toht` AS `toht`,
    `m_a_avcl`.`a_avcl_tott` AS `tott`,
    `m_a_avcl`.`a_avcl_ref1` AS `ref1`,
    `m_a_avcl`.`a_avcl_ref2` AS `ref2`,
    `m_a_avcl`.`a_avcl_ref3` AS `ref3`,
    `m_a_avcl`.`a_avcl_ref4` AS `ref4`,
    _utf8'00000000000000000000000000000000000000000000000000' AS `gro`,
    _utf8'00000000000000000000000000000000000000000000000000' AS `lgro` 
  from 
    `m_a_avcl` union 
  select 
    `m_a_defo`.`a_defo_nupi` AS `nupi`,
    _utf8'Fournisseur' AS `tier`,
    _utf8'de' AS `cotyp`,
    _utf8'Document Divers' AS `typ`,
    `m_a_defo`.`a_defo_dat` AS `dat`,
    `m_a_defo`.`a_defo_fou` AS `fou`,
    `m_a_defo`.`a_defo_lfou` AS `lfou`,
    `m_a_defo`.`a_defo_cod` AS `cod`,
    `m_a_defo`.`a_defo_lib` AS `lib`,
    `m_a_defo`.`a_defo_nuse` AS `nuse`,
    `m_a_defo`.`a_defo_dep` AS `dep`,
    `m_a_defo`.`a_defo_pri` AS `pri`,
    `m_a_defo`.`a_defo_priT` AS `priT`,
    `m_a_defo`.`a_defo_rem` AS `rem`,
    `m_a_defo`.`a_defo_qua` AS `qua`,
    `m_a_defo`.`a_defo_dd1` AS `dd1`,
    `m_a_defo`.`a_defo_dd2` AS `dd2`,
    `m_a_defo`.`a_defo_dd3` AS `dd3`,
    `m_a_defo`.`a_defo_dd4` AS `dd4`,
    `m_a_defo`.`a_defo_toht` AS `toht`,
    `m_a_defo`.`a_defo_tott` AS `tott`,
    `m_a_defo`.`a_defo_ref1` AS `ref1`,
    `m_a_defo`.`a_defo_ref2` AS `ref2`,
    `m_a_defo`.`a_defo_ref3` AS `ref3`,
    `m_a_defo`.`a_defo_ref4` AS `ref4`,
    _utf8'00000000000000000000000000000000000000000000000000' AS `gro`,
    _utf8'00000000000000000000000000000000000000000000000000' AS `lgro` 
  from 
    `m_a_defo` union 
  select 
    `m_a_fafo`.`a_fafo_nupi` AS `nupi`,
    _utf8'Fournisseur' AS `tier`,
    _utf8'fa' AS `cotyp`,
    _utf8'Facture' AS `typ`,
    `m_a_fafo`.`a_fafo_dat` AS `dat`,
    `m_a_fafo`.`a_fafo_fou` AS `fou`,
    `m_a_fafo`.`a_fafo_lfou` AS `lfou`,
    `m_a_fafo`.`a_fafo_cod` AS `cod`,
    `m_a_fafo`.`a_fafo_lib` AS `lib`,
    `m_a_fafo`.`a_fafo_nuse` AS `nuse`,
    `m_a_fafo`.`a_fafo_dep` AS `dep`,
    `m_a_fafo`.`a_fafo_pri` AS `pri`,
    `m_a_fafo`.`a_fafo_priT` AS `priT`,
    `m_a_fafo`.`a_fafo_rem` AS `rem`,
    `m_a_fafo`.`a_fafo_qua` AS `qua`,
    `m_a_fafo`.`a_fafo_dd1` AS `dd1`,
    `m_a_fafo`.`a_fafo_dd2` AS `dd2`,
    `m_a_fafo`.`a_fafo_dd3` AS `dd3`,
    `m_a_fafo`.`a_fafo_dd4` AS `dd4`,
    `m_a_fafo`.`a_fafo_toht` AS `toht`,
    `m_a_fafo`.`a_fafo_tott` AS `tott`,
    `m_a_fafo`.`a_fafo_ref1` AS `ref1`,
    `m_a_fafo`.`a_fafo_ref2` AS `ref2`,
    `m_a_fafo`.`a_fafo_ref3` AS `ref3`,
    `m_a_fafo`.`a_fafo_ref4` AS `ref4`,
    _utf8'00000000000000000000000000000000000000000000000000' AS `gro`,
    _utf8'00000000000000000000000000000000000000000000000000' AS `lgro` 
  from 
    `m_a_fafo` union 
  select 
    `m_a_avfo`.`a_avfo_nupi` AS `nupi`,
    _utf8'Fournisseur' AS `tier`,
    _utf8'av' AS `cotyp`,
    _utf8'Avoir' AS `typ`,
    `m_a_avfo`.`a_avfo_dat` AS `dat`,
    `m_a_avfo`.`a_avfo_fou` AS `fou`,
    `m_a_avfo`.`a_avfo_lfou` AS `lfou`,
    `m_a_avfo`.`a_avfo_cod` AS `cod`,
    `m_a_avfo`.`a_avfo_lib` AS `lib`,
    `m_a_avfo`.`a_avfo_nuse` AS `nuse`,
    `m_a_avfo`.`a_avfo_dep` AS `dep`,
    `m_a_avfo`.`a_avfo_pri` AS `pri`,
    `m_a_avfo`.`a_avfo_priT` AS `priT`,
    `m_a_avfo`.`a_avfo_rem` AS `rem`,
    `m_a_avfo`.`a_avfo_qua` AS `qua`,
    `m_a_avfo`.`a_avfo_dd1` AS `dd1`,
    `m_a_avfo`.`a_avfo_dd2` AS `dd2`,
    `m_a_avfo`.`a_avfo_dd3` AS `dd3`,
    `m_a_avfo`.`a_avfo_dd4` AS `dd4`,
    `m_a_avfo`.`a_avfo_toht` AS `toht`,
    `m_a_avfo`.`a_avfo_tott` AS `tott`,
    `m_a_avfo`.`a_avfo_ref1` AS `ref1`,
    `m_a_avfo`.`a_avfo_ref2` AS `ref2`,
    `m_a_avfo`.`a_avfo_ref3` AS `ref3`,
    `m_a_avfo`.`a_avfo_ref4` AS `ref4`,
    _utf8'00000000000000000000000000000000000000000000000000' AS `gro`,
    _utf8'00000000000000000000000000000000000000000000000000' AS `lgro` 
  from 
    `m_a_avfo`;

#
# Definition for the `e_joac` view : 
#

DROP VIEW IF EXISTS `e_joac`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_joac` AS 
  select 
    `m_fafo`.`fafo_dat` AS `dat`,
    `m_fafo`.`fafo_nupi` AS `nupi`,
    _utf8'Facture' AS `des`,
    `m_fafo`.`fafo_fou` AS `fou`,
    `m_fafo`.`fafo_lfou` AS `lfou`,
    `m_fafo`.`fafo_toht` AS `toht`,
    `m_fafo`.`fafo_tva` AS `tva`,
    `m_fafo`.`fafo_ttc` AS `ttc` 
  from 
    `m_fafo` union 
  select 
    `m_avfo`.`avfo_dat` AS `dat`,
    `m_avfo`.`avfo_nupi` AS `nupi`,
    _utf8'Avoir' AS `des`,
    `m_avfo`.`avfo_fou` AS `fou`,
    `m_avfo`.`avfo_lfou` AS `lfou`,
    -(`m_avfo`.`avfo_toht`) AS `toht`,
    -(`m_avfo`.`avfo_tva`) AS `tva`,
    -(`m_avfo`.`avfo_ttc`) AS `ttc` 
  from 
    `m_avfo`;

#
# Definition for the `e_jove` view : 
#

DROP VIEW IF EXISTS `e_jove`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_jove` AS 
  select 
    `m_facl`.`facl_dat` AS `dat`,
    `m_facl`.`facl_nupi` AS `nupi`,
    _utf8'Facture' AS `des`,
    `m_facl`.`facl_cli` AS `cli`,
    `m_facl`.`facl_lcli` AS `lcli`,
    `m_facl`.`facl_toht` AS `toht`,
    `m_facl`.`facl_tva` AS `tva`,
    `m_facl`.`facl_ttc` AS `ttc` 
  from 
    `m_facl` union 
  select 
    `m_avcl`.`avcl_dat` AS `dat`,
    `m_avcl`.`avcl_nupi` AS `nupi`,
    _utf8'Avoir' AS `des`,
    `m_avcl`.`avcl_cli` AS `cli`,
    `m_avcl`.`avcl_lcli` AS `lcli`,
    -(`m_avcl`.`avcl_toht`) AS `toht`,
    -(`m_avcl`.`avcl_tva`) AS `tva`,
    -(`m_avcl`.`avcl_ttc`) AS `ttc` 
  from 
    `m_avcl`;

#
# Definition for the `e_list_fabl` view : 
#

DROP VIEW IF EXISTS `e_list_fabl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_list_fabl` AS 
  select 
    `m_facl`.`facl_nupi` AS `facl_nupi`,
    `m_facl`.`facl_dat` AS `facl_dat`,
    `m_facl`.`facl_cli` AS `facl_cli`,
    `m_facl`.`facl_lcli` AS `facl_lcli`,
    `m_facl`.`facl_adr` AS `facl_adr`,
    `m_facl`.`facl_vil` AS `facl_vil`,
    `m_facl`.`facl_rem` AS `facl_rem`,
    `m_facl`.`facl_toht` AS `facl_toht`,
    `m_facl`.`facl_tva` AS `facl_tva`,
    `m_facl`.`facl_ttc` AS `facl_ttc`,
    `m_facl`.`facl_ref1` AS `facl_ref1`,
    `m_facl`.`facl_ref2` AS `facl_ref2`,
    `m_facl`.`facl_ref3` AS `facl_ref3`,
    `m_facl`.`facl_ref4` AS `facl_ref4`,
    _latin1'1' AS `facl_sen` 
  from 
    `m_facl` union 
  select 
    `m_avcl`.`avcl_nupi` AS `avcl_nupi`,
    `m_avcl`.`avcl_dat` AS `avcl_dat`,
    `m_avcl`.`avcl_cli` AS `avcl_cli`,
    `m_avcl`.`avcl_lcli` AS `avcl_lcli`,
    `m_avcl`.`avcl_adr` AS `avcl_adr`,
    `m_avcl`.`avcl_vil` AS `avcl_vil`,
    `m_avcl`.`avcl_rem` AS `avcl_rem`,
    `m_avcl`.`avcl_toht` AS `avcl_toht`,
    `m_avcl`.`avcl_tva` AS `avcl_tva`,
    `m_avcl`.`avcl_ttc` AS `avcl_ttc`,
    `m_avcl`.`avcl_ref1` AS `avcl_ref1`,
    `m_avcl`.`avcl_ref2` AS `avcl_ref2`,
    `m_avcl`.`avcl_ref3` AS `avcl_ref3`,
    `m_avcl`.`avcl_ref4` AS `avcl_ref4`,
    _latin1'0' AS `avcl_sen` 
  from 
    `m_avcl`;

#
# Definition for the `e_list_fabr` view : 
#

DROP VIEW IF EXISTS `e_list_fabr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_list_fabr` AS 
  select 
    `m_fafo`.`fafo_nupi` AS `fafo_nupi`,
    `m_fafo`.`fafo_dat` AS `fafo_dat`,
    `m_fafo`.`fafo_fou` AS `fafo_fou`,
    `m_fafo`.`fafo_lfou` AS `fafo_lfou`,
    `m_fafo`.`fafo_adr` AS `fafo_adr`,
    `m_fafo`.`fafo_vil` AS `fafo_vil`,
    `m_fafo`.`fafo_rem` AS `fafo_rem`,
    `m_fafo`.`fafo_toht` AS `fafo_toht`,
    `m_fafo`.`fafo_tva` AS `fafo_tva`,
    `m_fafo`.`fafo_ttc` AS `fafo_ttc`,
    `m_fafo`.`fafo_ref1` AS `fafo_ref1`,
    `m_fafo`.`fafo_ref2` AS `fafo_ref2`,
    `m_fafo`.`fafo_ref3` AS `fafo_ref3`,
    `m_fafo`.`fafo_ref4` AS `fafo_ref4`,
    _latin1'1' AS `fafo_sen` 
  from 
    `m_fafo` union 
  select 
    `m_avfo`.`avfo_nupi` AS `avfo_nupi`,
    `m_avfo`.`avfo_dat` AS `avfo_dat`,
    `m_avfo`.`avfo_fou` AS `avfo_fou`,
    `m_avfo`.`avfo_lfou` AS `avfo_lfou`,
    `m_avfo`.`avfo_adr` AS `avfo_adr`,
    `m_avfo`.`avfo_vil` AS `avfo_vil`,
    `m_avfo`.`avfo_rem` AS `avfo_rem`,
    `m_avfo`.`avfo_toht` AS `avfo_toht`,
    `m_avfo`.`avfo_tva` AS `avfo_tva`,
    `m_avfo`.`avfo_ttc` AS `avfo_ttc`,
    `m_avfo`.`avfo_ref1` AS `avfo_ref1`,
    `m_avfo`.`avfo_ref2` AS `avfo_ref2`,
    `m_avfo`.`avfo_ref3` AS `avfo_ref3`,
    `m_avfo`.`avfo_ref4` AS `avfo_ref4`,
    _latin1'0' AS `avfo_sen` 
  from 
    `m_avfo`;

#
# Definition for the `e_moregc` view : 
#

DROP VIEW IF EXISTS `e_moregc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_moregc` AS 
  select 
    `e_list_fabl`.`facl_nupi` AS `facl_nupi`,
    `e_list_fabl`.`facl_dat` AS `facl_dat`,
    `e_list_fabl`.`facl_cli` AS `facl_cli`,
    `e_list_fabl`.`facl_lcli` AS `facl_lcli`,
    `e_list_fabl`.`facl_adr` AS `facl_adr`,
    `e_list_fabl`.`facl_vil` AS `facl_vil`,
    `e_list_fabl`.`facl_rem` AS `facl_rem`,
    `e_list_fabl`.`facl_toht` AS `facl_toht`,
    `e_list_fabl`.`facl_tva` AS `facl_tva`,
    `e_list_fabl`.`facl_ttc` AS `facl_ttc`,
    `e_list_fabl`.`facl_ref1` AS `facl_ref1`,
    `e_list_fabl`.`facl_ref2` AS `facl_ref2`,
    `e_list_fabl`.`facl_ref3` AS `facl_ref3`,
    `e_list_fabl`.`facl_ref4` AS `facl_ref4`,
    `e_list_fabl`.`facl_sen` AS `facl_sen`,
    `m_recl_facl`.`recl_nupi` AS `recl_nupi`,
    `m_recl_facl`.`recl_dat` AS `recl_dat`,
    `m_recl_facl`.`recl_daec` AS `recl_daec`,
    `m_recl_facl`.`recl_cai` AS `recl_cai`,
    `m_recl_facl`.`recl_lcai` AS `recl_lcai`,
    `m_recl_facl`.`recl_per` AS `recl_per`,
    `m_recl_facl`.`recl_lper` AS `recl_lper`,
    `m_recl_facl`.`recl_more` AS `recl_more`,
    `m_recl_facl`.`recl_lmore` AS `recl_lmore`,
    `m_recl_facl`.`recl_lib` AS `recl_lib`,
    `m_recl_facl`.`recl_cli` AS `recl_cli`,
    `m_recl_facl`.`recl_lcli` AS `recl_lcli`,
    `m_recl_facl`.`recl_coge` AS `recl_coge`,
    `m_recl_facl`.`recl_moreg` AS `recl_moreg`,
    `m_recl_facl`.`recl_moareg` AS `recl_moareg`,
    `m_recl_facl`.`recl_cojo` AS `recl_cojo`,
    `m_recl_facl`.`recl_lcojo` AS `recl_lcojo`,
    `m_recl_facl`.`recl_copa` AS `recl_copa`,
    `m_recl_facl`.`recl_cpt` AS `recl_cpt`,
    `m_recl_facl`.`recl_sen` AS `recl_sen` 
  from 
    (`e_list_fabl` left join `m_recl_facl` on((`e_list_fabl`.`facl_nupi` = `m_recl_facl`.`facl_nupi`))) 
  where 
    ((`e_list_fabl`.`facl_sen` = _latin1'1') and (`m_recl_facl`.`recl_sen` = 1)) union 
  select 
    `e_list_fabl`.`facl_nupi` AS `facl_nupi`,
    `e_list_fabl`.`facl_dat` AS `facl_dat`,
    `e_list_fabl`.`facl_cli` AS `facl_cli`,
    `e_list_fabl`.`facl_lcli` AS `facl_lcli`,
    `e_list_fabl`.`facl_adr` AS `facl_adr`,
    `e_list_fabl`.`facl_vil` AS `facl_vil`,
    `e_list_fabl`.`facl_rem` AS `facl_rem`,
    `e_list_fabl`.`facl_toht` AS `facl_toht`,
    `e_list_fabl`.`facl_tva` AS `facl_tva`,
    `e_list_fabl`.`facl_ttc` AS `facl_ttc`,
    `e_list_fabl`.`facl_ref1` AS `facl_ref1`,
    `e_list_fabl`.`facl_ref2` AS `facl_ref2`,
    `e_list_fabl`.`facl_ref3` AS `facl_ref3`,
    `e_list_fabl`.`facl_ref4` AS `facl_ref4`,
    `e_list_fabl`.`facl_sen` AS `facl_sen`,
    `m_recl_facl`.`recl_nupi` AS `recl_nupi`,
    `m_recl_facl`.`recl_dat` AS `recl_dat`,
    `m_recl_facl`.`recl_daec` AS `recl_daec`,
    `m_recl_facl`.`recl_cai` AS `recl_cai`,
    `m_recl_facl`.`recl_lcai` AS `recl_lcai`,
    `m_recl_facl`.`recl_per` AS `recl_per`,
    `m_recl_facl`.`recl_lper` AS `recl_lper`,
    `m_recl_facl`.`recl_more` AS `recl_more`,
    `m_recl_facl`.`recl_lmore` AS `recl_lmore`,
    `m_recl_facl`.`recl_lib` AS `recl_lib`,
    `m_recl_facl`.`recl_cli` AS `recl_cli`,
    `m_recl_facl`.`recl_lcli` AS `recl_lcli`,
    `m_recl_facl`.`recl_coge` AS `recl_coge`,
    -(`m_recl_facl`.`recl_moreg`) AS `recl_moreg`,
    -(`m_recl_facl`.`recl_moareg`) AS `recl_moareg`,
    `m_recl_facl`.`recl_cojo` AS `recl_cojo`,
    `m_recl_facl`.`recl_lcojo` AS `recl_lcojo`,
    `m_recl_facl`.`recl_copa` AS `recl_copa`,
    `m_recl_facl`.`recl_cpt` AS `recl_cpt`,
    `m_recl_facl`.`recl_sen` AS `recl_sen` 
  from 
    (`e_list_fabl` left join `m_recl_facl` on((`e_list_fabl`.`facl_nupi` = `m_recl_facl`.`facl_nupi`))) 
  where 
    ((`e_list_fabl`.`facl_sen` = _latin1'1') and (`m_recl_facl`.`recl_sen` = 0)) union 
  select 
    `e_list_fabl`.`facl_nupi` AS `facl_nupi`,
    `e_list_fabl`.`facl_dat` AS `facl_dat`,
    `e_list_fabl`.`facl_cli` AS `facl_cli`,
    `e_list_fabl`.`facl_lcli` AS `facl_lcli`,
    `e_list_fabl`.`facl_adr` AS `facl_adr`,
    `e_list_fabl`.`facl_vil` AS `facl_vil`,
    `e_list_fabl`.`facl_rem` AS `facl_rem`,
    -(`e_list_fabl`.`facl_toht`) AS `facl_toht`,
    -(`e_list_fabl`.`facl_tva`) AS `facl_tva`,
    -(`e_list_fabl`.`facl_ttc`) AS `facl_ttc`,
    `e_list_fabl`.`facl_ref1` AS `facl_ref1`,
    `e_list_fabl`.`facl_ref2` AS `facl_ref2`,
    `e_list_fabl`.`facl_ref3` AS `facl_ref3`,
    `e_list_fabl`.`facl_ref4` AS `facl_ref4`,
    `e_list_fabl`.`facl_sen` AS `facl_sen`,
    `m_recl_facl`.`recl_nupi` AS `recl_nupi`,
    `m_recl_facl`.`recl_dat` AS `recl_dat`,
    `m_recl_facl`.`recl_daec` AS `recl_daec`,
    `m_recl_facl`.`recl_cai` AS `recl_cai`,
    `m_recl_facl`.`recl_lcai` AS `recl_lcai`,
    `m_recl_facl`.`recl_per` AS `recl_per`,
    `m_recl_facl`.`recl_lper` AS `recl_lper`,
    `m_recl_facl`.`recl_more` AS `recl_more`,
    `m_recl_facl`.`recl_lmore` AS `recl_lmore`,
    `m_recl_facl`.`recl_lib` AS `recl_lib`,
    `m_recl_facl`.`recl_cli` AS `recl_cli`,
    `m_recl_facl`.`recl_lcli` AS `recl_lcli`,
    `m_recl_facl`.`recl_coge` AS `recl_coge`,
    `m_recl_facl`.`recl_moreg` AS `recl_moreg`,
    `m_recl_facl`.`recl_moareg` AS `recl_moareg`,
    `m_recl_facl`.`recl_cojo` AS `recl_cojo`,
    `m_recl_facl`.`recl_lcojo` AS `recl_lcojo`,
    `m_recl_facl`.`recl_copa` AS `recl_copa`,
    `m_recl_facl`.`recl_cpt` AS `recl_cpt`,
    `m_recl_facl`.`recl_sen` AS `recl_sen` 
  from 
    (`e_list_fabl` left join `m_recl_facl` on((`e_list_fabl`.`facl_nupi` = `m_recl_facl`.`facl_nupi`))) 
  where 
    ((`e_list_fabl`.`facl_sen` = _latin1'0') and (`m_recl_facl`.`recl_sen` = 1)) union 
  select 
    `e_list_fabl`.`facl_nupi` AS `facl_nupi`,
    `e_list_fabl`.`facl_dat` AS `facl_dat`,
    `e_list_fabl`.`facl_cli` AS `facl_cli`,
    `e_list_fabl`.`facl_lcli` AS `facl_lcli`,
    `e_list_fabl`.`facl_adr` AS `facl_adr`,
    `e_list_fabl`.`facl_vil` AS `facl_vil`,
    `e_list_fabl`.`facl_rem` AS `facl_rem`,
    -(`e_list_fabl`.`facl_toht`) AS `facl_toht`,
    -(`e_list_fabl`.`facl_tva`) AS `facl_tva`,
    -(`e_list_fabl`.`facl_ttc`) AS `facl_ttc`,
    `e_list_fabl`.`facl_ref1` AS `facl_ref1`,
    `e_list_fabl`.`facl_ref2` AS `facl_ref2`,
    `e_list_fabl`.`facl_ref3` AS `facl_ref3`,
    `e_list_fabl`.`facl_ref4` AS `facl_ref4`,
    `e_list_fabl`.`facl_sen` AS `facl_sen`,
    `m_recl_facl`.`recl_nupi` AS `recl_nupi`,
    `m_recl_facl`.`recl_dat` AS `recl_dat`,
    `m_recl_facl`.`recl_daec` AS `recl_daec`,
    `m_recl_facl`.`recl_cai` AS `recl_cai`,
    `m_recl_facl`.`recl_lcai` AS `recl_lcai`,
    `m_recl_facl`.`recl_per` AS `recl_per`,
    `m_recl_facl`.`recl_lper` AS `recl_lper`,
    `m_recl_facl`.`recl_more` AS `recl_more`,
    `m_recl_facl`.`recl_lmore` AS `recl_lmore`,
    `m_recl_facl`.`recl_lib` AS `recl_lib`,
    `m_recl_facl`.`recl_cli` AS `recl_cli`,
    `m_recl_facl`.`recl_lcli` AS `recl_lcli`,
    `m_recl_facl`.`recl_coge` AS `recl_coge`,
    -(`m_recl_facl`.`recl_moreg`) AS `recl_moreg`,
    -(`m_recl_facl`.`recl_moareg`) AS `recl_moareg`,
    `m_recl_facl`.`recl_cojo` AS `recl_cojo`,
    `m_recl_facl`.`recl_lcojo` AS `recl_lcojo`,
    `m_recl_facl`.`recl_copa` AS `recl_copa`,
    `m_recl_facl`.`recl_cpt` AS `recl_cpt`,
    `m_recl_facl`.`recl_sen` AS `recl_sen` 
  from 
    (`e_list_fabl` left join `m_recl_facl` on((`e_list_fabl`.`facl_nupi` = `m_recl_facl`.`facl_nupi`))) 
  where 
    ((`e_list_fabl`.`facl_sen` = _latin1'0') and (`m_recl_facl`.`recl_sen` = 0));

#
# Definition for the `e_moregcr1` view : 
#

DROP VIEW IF EXISTS `e_moregcr1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_moregcr1` AS 
  select 
    `e_list_fabl`.`facl_nupi` AS `facl_nupi`,
    `e_list_fabl`.`facl_dat` AS `facl_dat`,
    `e_list_fabl`.`facl_ttc` AS `facl_ttc`,
    `m_recl_facl`.`recl_cli` AS `recl_cli`,
    `m_recl_facl`.`recl_lcli` AS `recl_lcli`,
    `m_recl_facl`.`recl_moareg` AS `recl_moareg`,
    if(((`m_recl_facl`.`recl_copa` like _latin1'5141%') or (`m_recl_facl`.`recl_copa` like _latin1'5541%') or (`m_recl_facl`.`recl_copa` like _latin1'5161%')),`m_recl_facl`.`recl_moareg`,0) AS `moen` 
  from 
    (`e_list_fabl` left join `m_recl_facl` on((`e_list_fabl`.`facl_nupi` = `m_recl_facl`.`facl_nupi`))) 
  where 
    ((`e_list_fabl`.`facl_sen` = _latin1'1') and (`m_recl_facl`.`recl_sen` = 1)) union 
  select 
    `e_list_fabl`.`facl_nupi` AS `facl_nupi`,
    `e_list_fabl`.`facl_dat` AS `facl_dat`,
    `e_list_fabl`.`facl_ttc` AS `facl_ttc`,
    `m_recl_facl`.`recl_cli` AS `recl_cli`,
    `m_recl_facl`.`recl_lcli` AS `recl_lcli`,
    -(`m_recl_facl`.`recl_moareg`) AS `recl_moareg`,
    -(if(((`m_recl_facl`.`recl_copa` like _latin1'5141%') or (`m_recl_facl`.`recl_copa` like _latin1'5541%') or (`m_recl_facl`.`recl_copa` like _latin1'5161%')),`m_recl_facl`.`recl_moareg`,0)) AS `moen` 
  from 
    (`e_list_fabl` left join `m_recl_facl` on((`e_list_fabl`.`facl_nupi` = `m_recl_facl`.`facl_nupi`))) 
  where 
    ((`e_list_fabl`.`facl_sen` = _latin1'1') and (`m_recl_facl`.`recl_sen` = 0)) union 
  select 
    `e_list_fabl`.`facl_nupi` AS `facl_nupi`,
    `e_list_fabl`.`facl_dat` AS `facl_dat`,
    -(`e_list_fabl`.`facl_ttc`) AS `facl_ttc`,
    `m_recl_facl`.`recl_cli` AS `recl_cli`,
    `m_recl_facl`.`recl_lcli` AS `recl_lcli`,
    `m_recl_facl`.`recl_moareg` AS `recl_moareg`,
    if(((`m_recl_facl`.`recl_copa` like _latin1'5141%') or (`m_recl_facl`.`recl_copa` like _latin1'5541%') or (`m_recl_facl`.`recl_copa` like _latin1'5161%')),`m_recl_facl`.`recl_moareg`,0) AS `moen` 
  from 
    (`e_list_fabl` left join `m_recl_facl` on((`e_list_fabl`.`facl_nupi` = `m_recl_facl`.`facl_nupi`))) 
  where 
    ((`e_list_fabl`.`facl_sen` = _latin1'0') and (`m_recl_facl`.`recl_sen` = 1)) union 
  select 
    `e_list_fabl`.`facl_nupi` AS `facl_nupi`,
    `e_list_fabl`.`facl_dat` AS `facl_dat`,
    -(`e_list_fabl`.`facl_ttc`) AS `facl_ttc`,
    `m_recl_facl`.`recl_cli` AS `recl_cli`,
    `m_recl_facl`.`recl_lcli` AS `recl_lcli`,
    -(`m_recl_facl`.`recl_moareg`) AS `recl_moareg`,
    -(if(((`m_recl_facl`.`recl_copa` like _latin1'5141%') or (`m_recl_facl`.`recl_copa` like _latin1'5541%') or (`m_recl_facl`.`recl_copa` like _latin1'5161%')),`m_recl_facl`.`recl_moareg`,0)) AS `moen` 
  from 
    (`e_list_fabl` left join `m_recl_facl` on((`e_list_fabl`.`facl_nupi` = `m_recl_facl`.`facl_nupi`))) 
  where 
    ((`e_list_fabl`.`facl_sen` = _latin1'0') and (`m_recl_facl`.`recl_sen` = 0));

#
# Definition for the `e_moregcr2` view : 
#

DROP VIEW IF EXISTS `e_moregcr2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_moregcr2` AS 
  select 
    `e_moregcr1`.`recl_cli` AS `recl_cli`,
    `e_moregcr1`.`recl_lcli` AS `recl_lcli`,
    sum(`e_moregcr1`.`recl_moareg`) AS `recl_moareg`,
    sum(`e_moregcr1`.`moen`) AS `moen`,
    `e_moregcr1`.`facl_nupi` AS `facl_nupi`,
    `e_moregcr1`.`facl_dat` AS `facl_dat`,
    `e_moregcr1`.`facl_ttc` AS `facl_ttc` 
  from 
    `e_moregcr1` 
  group by 
    `e_moregcr1`.`recl_cli`,`e_moregcr1`.`recl_lcli`,`e_moregcr1`.`facl_nupi`,`e_moregcr1`.`facl_dat`,`e_moregcr1`.`facl_ttc`;

#
# Definition for the `e_moregf` view : 
#

DROP VIEW IF EXISTS `e_moregf`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_moregf` AS 
  select 
    `e_list_fabr`.`fafo_nupi` AS `fafo_nupi`,
    `e_list_fabr`.`fafo_dat` AS `fafo_dat`,
    `e_list_fabr`.`fafo_fou` AS `fafo_fou`,
    `e_list_fabr`.`fafo_lfou` AS `fafo_lfou`,
    `e_list_fabr`.`fafo_adr` AS `fafo_adr`,
    `e_list_fabr`.`fafo_vil` AS `fafo_vil`,
    `e_list_fabr`.`fafo_rem` AS `fafo_rem`,
    `e_list_fabr`.`fafo_toht` AS `fafo_toht`,
    `e_list_fabr`.`fafo_tva` AS `fafo_tva`,
    `e_list_fabr`.`fafo_ttc` AS `fafo_ttc`,
    `e_list_fabr`.`fafo_ref1` AS `fafo_ref1`,
    `e_list_fabr`.`fafo_ref2` AS `fafo_ref2`,
    `e_list_fabr`.`fafo_ref3` AS `fafo_ref3`,
    `e_list_fabr`.`fafo_ref4` AS `fafo_ref4`,
    `e_list_fabr`.`fafo_sen` AS `fafo_sen`,
    `m_refo_fafo`.`refo_nupi` AS `refo_nupi`,
    `m_refo_fafo`.`refo_dat` AS `refo_dat`,
    `m_refo_fafo`.`refo_daec` AS `refo_daec`,
    `m_refo_fafo`.`refo_cai` AS `refo_cai`,
    `m_refo_fafo`.`refo_lcai` AS `refo_lcai`,
    `m_refo_fafo`.`refo_per` AS `refo_per`,
    `m_refo_fafo`.`refo_lper` AS `refo_lper`,
    `m_refo_fafo`.`refo_more` AS `refo_more`,
    `m_refo_fafo`.`refo_lmore` AS `refo_lmore`,
    `m_refo_fafo`.`refo_lib` AS `refo_lib`,
    `m_refo_fafo`.`refo_fou` AS `refo_fou`,
    `m_refo_fafo`.`refo_lfou` AS `refo_lfou`,
    `m_refo_fafo`.`refo_coge` AS `refo_coge`,
    `m_refo_fafo`.`refo_moreg` AS `refo_moreg`,
    `m_refo_fafo`.`refo_moareg` AS `refo_moareg`,
    `m_refo_fafo`.`refo_cojo` AS `refo_cojo`,
    `m_refo_fafo`.`refo_lcojo` AS `refo_lcojo`,
    `m_refo_fafo`.`refo_copa` AS `refo_copa`,
    `m_refo_fafo`.`refo_cpt` AS `refo_cpt`,
    `m_refo_fafo`.`refo_sen` AS `refo_sen` 
  from 
    (`e_list_fabr` left join `m_refo_fafo` on((`e_list_fabr`.`fafo_nupi` = `m_refo_fafo`.`fafo_nupi`))) 
  where 
    ((`e_list_fabr`.`fafo_sen` = _latin1'1') and (`m_refo_fafo`.`refo_sen` = 1)) union 
  select 
    `e_list_fabr`.`fafo_nupi` AS `fafo_nupi`,
    `e_list_fabr`.`fafo_dat` AS `fafo_dat`,
    `e_list_fabr`.`fafo_fou` AS `fafo_fou`,
    `e_list_fabr`.`fafo_lfou` AS `fafo_lfou`,
    `e_list_fabr`.`fafo_adr` AS `fafo_adr`,
    `e_list_fabr`.`fafo_vil` AS `fafo_vil`,
    `e_list_fabr`.`fafo_rem` AS `fafo_rem`,
    `e_list_fabr`.`fafo_toht` AS `fafo_toht`,
    `e_list_fabr`.`fafo_tva` AS `fafo_tva`,
    `e_list_fabr`.`fafo_ttc` AS `fafo_ttc`,
    `e_list_fabr`.`fafo_ref1` AS `fafo_ref1`,
    `e_list_fabr`.`fafo_ref2` AS `fafo_ref2`,
    `e_list_fabr`.`fafo_ref3` AS `fafo_ref3`,
    `e_list_fabr`.`fafo_ref4` AS `fafo_ref4`,
    `e_list_fabr`.`fafo_sen` AS `fafo_sen`,
    `m_refo_fafo`.`refo_nupi` AS `refo_nupi`,
    `m_refo_fafo`.`refo_dat` AS `refo_dat`,
    `m_refo_fafo`.`refo_daec` AS `refo_daec`,
    `m_refo_fafo`.`refo_cai` AS `refo_cai`,
    `m_refo_fafo`.`refo_lcai` AS `refo_lcai`,
    `m_refo_fafo`.`refo_per` AS `refo_per`,
    `m_refo_fafo`.`refo_lper` AS `refo_lper`,
    `m_refo_fafo`.`refo_more` AS `refo_more`,
    `m_refo_fafo`.`refo_lmore` AS `refo_lmore`,
    `m_refo_fafo`.`refo_lib` AS `refo_lib`,
    `m_refo_fafo`.`refo_fou` AS `refo_fou`,
    `m_refo_fafo`.`refo_lfou` AS `refo_lfou`,
    `m_refo_fafo`.`refo_coge` AS `refo_coge`,
    -(`m_refo_fafo`.`refo_moreg`) AS `refo_moreg`,
    -(`m_refo_fafo`.`refo_moareg`) AS `refo_moareg`,
    `m_refo_fafo`.`refo_cojo` AS `refo_cojo`,
    `m_refo_fafo`.`refo_lcojo` AS `refo_lcojo`,
    `m_refo_fafo`.`refo_copa` AS `refo_copa`,
    `m_refo_fafo`.`refo_cpt` AS `refo_cpt`,
    `m_refo_fafo`.`refo_sen` AS `refo_sen` 
  from 
    (`e_list_fabr` left join `m_refo_fafo` on((`e_list_fabr`.`fafo_nupi` = `m_refo_fafo`.`fafo_nupi`))) 
  where 
    ((`e_list_fabr`.`fafo_sen` = _latin1'1') and (`m_refo_fafo`.`refo_sen` = 0)) union 
  select 
    `e_list_fabr`.`fafo_nupi` AS `fafo_nupi`,
    `e_list_fabr`.`fafo_dat` AS `fafo_dat`,
    `e_list_fabr`.`fafo_fou` AS `fafo_fou`,
    `e_list_fabr`.`fafo_lfou` AS `fafo_lfou`,
    `e_list_fabr`.`fafo_adr` AS `fafo_adr`,
    `e_list_fabr`.`fafo_vil` AS `fafo_vil`,
    `e_list_fabr`.`fafo_rem` AS `fafo_rem`,
    -(`e_list_fabr`.`fafo_toht`) AS `fafo_toht`,
    -(`e_list_fabr`.`fafo_tva`) AS `fafo_tva`,
    -(`e_list_fabr`.`fafo_ttc`) AS `fafo_ttc`,
    `e_list_fabr`.`fafo_ref1` AS `fafo_ref1`,
    `e_list_fabr`.`fafo_ref2` AS `fafo_ref2`,
    `e_list_fabr`.`fafo_ref3` AS `fafo_ref3`,
    `e_list_fabr`.`fafo_ref4` AS `fafo_ref4`,
    `e_list_fabr`.`fafo_sen` AS `fafo_sen`,
    `m_refo_fafo`.`refo_nupi` AS `refo_nupi`,
    `m_refo_fafo`.`refo_dat` AS `refo_dat`,
    `m_refo_fafo`.`refo_daec` AS `refo_daec`,
    `m_refo_fafo`.`refo_cai` AS `refo_cai`,
    `m_refo_fafo`.`refo_lcai` AS `refo_lcai`,
    `m_refo_fafo`.`refo_per` AS `refo_per`,
    `m_refo_fafo`.`refo_lper` AS `refo_lper`,
    `m_refo_fafo`.`refo_more` AS `refo_more`,
    `m_refo_fafo`.`refo_lmore` AS `refo_lmore`,
    `m_refo_fafo`.`refo_lib` AS `refo_lib`,
    `m_refo_fafo`.`refo_fou` AS `refo_fou`,
    `m_refo_fafo`.`refo_lfou` AS `refo_lfou`,
    `m_refo_fafo`.`refo_coge` AS `refo_coge`,
    `m_refo_fafo`.`refo_moreg` AS `refo_moreg`,
    `m_refo_fafo`.`refo_moareg` AS `refo_moareg`,
    `m_refo_fafo`.`refo_cojo` AS `refo_cojo`,
    `m_refo_fafo`.`refo_lcojo` AS `refo_lcojo`,
    `m_refo_fafo`.`refo_copa` AS `refo_copa`,
    `m_refo_fafo`.`refo_cpt` AS `refo_cpt`,
    `m_refo_fafo`.`refo_sen` AS `refo_sen` 
  from 
    (`e_list_fabr` left join `m_refo_fafo` on((`e_list_fabr`.`fafo_nupi` = `m_refo_fafo`.`fafo_nupi`))) 
  where 
    ((`e_list_fabr`.`fafo_sen` = _latin1'0') and (`m_refo_fafo`.`refo_sen` = 1)) union 
  select 
    `e_list_fabr`.`fafo_nupi` AS `fafo_nupi`,
    `e_list_fabr`.`fafo_dat` AS `fafo_dat`,
    `e_list_fabr`.`fafo_fou` AS `fafo_fou`,
    `e_list_fabr`.`fafo_lfou` AS `fafo_lfou`,
    `e_list_fabr`.`fafo_adr` AS `fafo_adr`,
    `e_list_fabr`.`fafo_vil` AS `fafo_vil`,
    `e_list_fabr`.`fafo_rem` AS `fafo_rem`,
    -(`e_list_fabr`.`fafo_toht`) AS `fafo_toht`,
    -(`e_list_fabr`.`fafo_tva`) AS `fafo_tva`,
    -(`e_list_fabr`.`fafo_ttc`) AS `fafo_ttc`,
    `e_list_fabr`.`fafo_ref1` AS `fafo_ref1`,
    `e_list_fabr`.`fafo_ref2` AS `fafo_ref2`,
    `e_list_fabr`.`fafo_ref3` AS `fafo_ref3`,
    `e_list_fabr`.`fafo_ref4` AS `fafo_ref4`,
    `e_list_fabr`.`fafo_sen` AS `fafo_sen`,
    `m_refo_fafo`.`refo_nupi` AS `refo_nupi`,
    `m_refo_fafo`.`refo_dat` AS `refo_dat`,
    `m_refo_fafo`.`refo_daec` AS `refo_daec`,
    `m_refo_fafo`.`refo_cai` AS `refo_cai`,
    `m_refo_fafo`.`refo_lcai` AS `refo_lcai`,
    `m_refo_fafo`.`refo_per` AS `refo_per`,
    `m_refo_fafo`.`refo_lper` AS `refo_lper`,
    `m_refo_fafo`.`refo_more` AS `refo_more`,
    `m_refo_fafo`.`refo_lmore` AS `refo_lmore`,
    `m_refo_fafo`.`refo_lib` AS `refo_lib`,
    `m_refo_fafo`.`refo_fou` AS `refo_fou`,
    `m_refo_fafo`.`refo_lfou` AS `refo_lfou`,
    `m_refo_fafo`.`refo_coge` AS `refo_coge`,
    -(`m_refo_fafo`.`refo_moreg`) AS `refo_moreg`,
    -(`m_refo_fafo`.`refo_moareg`) AS `refo_moareg`,
    `m_refo_fafo`.`refo_cojo` AS `refo_cojo`,
    `m_refo_fafo`.`refo_lcojo` AS `refo_lcojo`,
    `m_refo_fafo`.`refo_copa` AS `refo_copa`,
    `m_refo_fafo`.`refo_cpt` AS `refo_cpt`,
    `m_refo_fafo`.`refo_sen` AS `refo_sen` 
  from 
    (`e_list_fabr` left join `m_refo_fafo` on((`e_list_fabr`.`fafo_nupi` = `m_refo_fafo`.`fafo_nupi`))) 
  where 
    ((`e_list_fabr`.`fafo_sen` = _latin1'0') and (`m_refo_fafo`.`refo_sen` = 0));

#
# Definition for the `e_moregfr1` view : 
#

DROP VIEW IF EXISTS `e_moregfr1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_moregfr1` AS 
  select 
    `e_list_fabr`.`fafo_nupi` AS `fafo_nupi`,
    `e_list_fabr`.`fafo_dat` AS `fafo_dat`,
    `e_list_fabr`.`fafo_ttc` AS `fafo_ttc`,
    `m_refo_fafo`.`refo_fou` AS `refo_fou`,
    `m_refo_fafo`.`refo_lfou` AS `refo_lfou`,
    `m_refo_fafo`.`refo_moareg` AS `refo_moareg`,
    if(((`m_refo_fafo`.`refo_copa` like _latin1'5141%') or (`m_refo_fafo`.`refo_copa` like _latin1'5541%') or (`m_refo_fafo`.`refo_copa` like _latin1'5161%')),`m_refo_fafo`.`refo_moareg`,0) AS `moen` 
  from 
    (`e_list_fabr` left join `m_refo_fafo` on((`e_list_fabr`.`fafo_nupi` = `m_refo_fafo`.`fafo_nupi`))) 
  where 
    ((`e_list_fabr`.`fafo_sen` = _latin1'1') and (`m_refo_fafo`.`refo_sen` = 1)) union 
  select 
    `e_list_fabr`.`fafo_nupi` AS `fafo_nupi`,
    `e_list_fabr`.`fafo_dat` AS `fafo_dat`,
    `e_list_fabr`.`fafo_ttc` AS `fafo_ttc`,
    `m_refo_fafo`.`refo_fou` AS `refo_fou`,
    `m_refo_fafo`.`refo_lfou` AS `refo_lfou`,
    -(`m_refo_fafo`.`refo_moareg`) AS `refo_moareg`,
    -(if(((`m_refo_fafo`.`refo_copa` like _latin1'5141%') or (`m_refo_fafo`.`refo_copa` like _latin1'5541%') or (`m_refo_fafo`.`refo_copa` like _latin1'5161%')),`m_refo_fafo`.`refo_moareg`,0)) AS `moen` 
  from 
    (`e_list_fabr` left join `m_refo_fafo` on((`e_list_fabr`.`fafo_nupi` = `m_refo_fafo`.`fafo_nupi`))) 
  where 
    ((`e_list_fabr`.`fafo_sen` = _latin1'1') and (`m_refo_fafo`.`refo_sen` = 0)) union 
  select 
    `e_list_fabr`.`fafo_nupi` AS `fafo_nupi`,
    `e_list_fabr`.`fafo_dat` AS `fafo_dat`,
    -(`e_list_fabr`.`fafo_ttc`) AS `fafo_ttc`,
    `m_refo_fafo`.`refo_fou` AS `refo_fou`,
    `m_refo_fafo`.`refo_lfou` AS `refo_lfou`,
    `m_refo_fafo`.`refo_moareg` AS `refo_moareg`,
    if(((`m_refo_fafo`.`refo_copa` like _latin1'5141%') or (`m_refo_fafo`.`refo_copa` like _latin1'5541%') or (`m_refo_fafo`.`refo_copa` like _latin1'5161%')),`m_refo_fafo`.`refo_moareg`,0) AS `moen` 
  from 
    (`e_list_fabr` left join `m_refo_fafo` on((`e_list_fabr`.`fafo_nupi` = `m_refo_fafo`.`fafo_nupi`))) 
  where 
    ((`e_list_fabr`.`fafo_sen` = _latin1'0') and (`m_refo_fafo`.`refo_sen` = 1)) union 
  select 
    `e_list_fabr`.`fafo_nupi` AS `fafo_nupi`,
    `e_list_fabr`.`fafo_dat` AS `fafo_dat`,
    -(`e_list_fabr`.`fafo_ttc`) AS `fafo_ttc`,
    `m_refo_fafo`.`refo_fou` AS `refo_fou`,
    `m_refo_fafo`.`refo_lfou` AS `refo_lfou`,
    -(`m_refo_fafo`.`refo_moareg`) AS `refo_moareg`,
    -(if(((`m_refo_fafo`.`refo_copa` like _latin1'5141%') or (`m_refo_fafo`.`refo_copa` like _latin1'5541%') or (`m_refo_fafo`.`refo_copa` like _latin1'5161%')),`m_refo_fafo`.`refo_moareg`,0)) AS `moen` 
  from 
    (`e_list_fabr` left join `m_refo_fafo` on((`e_list_fabr`.`fafo_nupi` = `m_refo_fafo`.`fafo_nupi`))) 
  where 
    ((`e_list_fabr`.`fafo_sen` = _latin1'0') and (`m_refo_fafo`.`refo_sen` = 0));

#
# Definition for the `e_moregfr2` view : 
#

DROP VIEW IF EXISTS `e_moregfr2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_moregfr2` AS 
  select 
    `e_moregfr1`.`refo_fou` AS `refo_fou`,
    `e_moregfr1`.`refo_lfou` AS `refo_lfou`,
    sum(`e_moregfr1`.`refo_moareg`) AS `refo_moareg`,
    sum(`e_moregfr1`.`moen`) AS `moen`,
    `e_moregfr1`.`fafo_nupi` AS `fafo_nupi`,
    `e_moregfr1`.`fafo_dat` AS `fafo_dat`,
    `e_moregfr1`.`fafo_ttc` AS `fafo_ttc` 
  from 
    `e_moregfr1` 
  group by 
    `e_moregfr1`.`refo_fou`,`e_moregfr1`.`refo_lfou`,`e_moregfr1`.`fafo_nupi`,`e_moregfr1`.`fafo_dat`,`e_moregfr1`.`fafo_ttc`;

#
# Definition for the `e_refa` view : 
#

DROP VIEW IF EXISTS `e_refa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_refa` AS 
  select 
    `m_facl`.`facl_nupi` AS `nupi`,
    _utf8'Facture' AS `des`,
    `m_facl`.`facl_ttc` AS `totDeb`,
    0 AS `totCre`,
    `m_facl`.`facl_dat` AS `dat`,
    `m_facl`.`facl_cli` AS `cli`,
    `m_facl`.`facl_lcli` AS `lcli`,
    _latin1'fa' AS `typ` 
  from 
    `m_facl` union 
  select 
    `m_avcl`.`avcl_nupi` AS `nupi`,
    _utf8'Avoir' AS `des`,
    0 AS `totDeb`,
    `m_avcl`.`avcl_ttc` AS `totCre`,
    `m_avcl`.`avcl_dat` AS `dat`,
    `m_avcl`.`avcl_cli` AS `cli`,
    `m_avcl`.`avcl_lcli` AS `lcli`,
    _latin1'av' AS `typ` 
  from 
    `m_avcl`;

#
# Definition for the `e_reff` view : 
#

DROP VIEW IF EXISTS `e_reff`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_reff` AS 
  select 
    `m_fafo`.`fafo_nupi` AS `nupi`,
    _utf8'Facture' AS `des`,
    `m_fafo`.`fafo_toht` AS `totDeb`,
    0 AS `totCre`,
    `m_fafo`.`fafo_dat` AS `dat`,
    `m_fafo`.`fafo_fou` AS `fou`,
    `m_fafo`.`fafo_lfou` AS `lfou`,
    _latin1'fa' AS `typ` 
  from 
    `m_fafo` union 
  select 
    `m_avfo`.`avfo_nupi` AS `nupi`,
    _utf8'Avoir' AS `des`,
    0 AS `totDeb`,
    `m_avfo`.`avfo_toht` AS `totCre`,
    `m_avfo`.`avfo_dat` AS `dat`,
    `m_avfo`.`avfo_fou` AS `fou`,
    `m_avfo`.`avfo_lfou` AS `lfou`,
    _latin1'av' AS `typ` 
  from 
    `m_avfo`;

#
# Definition for the `e_sicl` view : 
#

DROP VIEW IF EXISTS `e_sicl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_sicl` AS 
  select 
    `m_facl`.`facl_dat` AS `dat`,
    `m_facl`.`facl_nupi` AS `nupi`,
    _utf8'Facture' AS `des`,
    `m_facl`.`facl_ttc` AS `totDeb`,
    `m_facl`.`facl_ttc` AS `totDebr`,
    0 AS `totCre`,
    0 AS `totCrer`,
    `m_facl`.`facl_cli` AS `cli`,
    `m_facl`.`facl_lcli` AS `lcli`,
    `m_facl`.`facl_ref1` AS `ref1`,
    `m_facl`.`facl_ref2` AS `ref2`,
    `m_facl`.`facl_ref3` AS `ref3`,
    `m_facl`.`facl_ref4` AS `ref4` 
  from 
    `m_facl` union 
  select 
    `m_avcl`.`avcl_dat` AS `dat`,
    `m_avcl`.`avcl_nupi` AS `nupi`,
    _utf8'Avoir' AS `des`,
    0 AS `totDeb`,
    0 AS `totDebr`,
    `m_avcl`.`avcl_ttc` AS `totCre`,
    `m_avcl`.`avcl_ttc` AS `totCrer`,
    `m_avcl`.`avcl_cli` AS `cli`,
    `m_avcl`.`avcl_lcli` AS `lcli`,
    `m_avcl`.`avcl_ref1` AS `ref1`,
    `m_avcl`.`avcl_ref2` AS `ref2`,
    `m_avcl`.`avcl_ref3` AS `ref3`,
    `m_avcl`.`avcl_ref4` AS `ref4` 
  from 
    `m_avcl` union 
  select 
    `m_recl`.`recl_dat` AS `dat`,
    `m_recl`.`recl_nupi` AS `nupi`,
    _utf8'Reglement' AS `des`,
    0 AS `totDeb`,
    0 AS `totDebr`,
    `m_recl`.`recl_moreg` AS `totCre`,
    if(((`m_recl`.`recl_copa` like _latin1'5141%') or (`m_recl`.`recl_copa` like _latin1'5541%') or (`m_recl`.`recl_copa` like _latin1'5161%')),`m_recl`.`recl_moreg`,0) AS `totCrer`,
    `m_recl`.`recl_cli` AS `cli`,
    `m_recl`.`recl_lcli` AS `lcli`,
    `m_recl`.`recl_lmore` AS `recl_ref1`,
    `m_recl`.`recl_lib` AS `recl_ref2`,
    `m_recl`.`recl_lcojo` AS `recl_ref3`,
    substr((_latin1'' + `m_recl`.`recl_daec`),1,8) AS `recl_ref4` 
  from 
    `m_recl` 
  where 
    (`m_recl`.`recl_sen` = 1) union 
  select 
    `m_recl`.`recl_dat` AS `dat`,
    `m_recl`.`recl_nupi` AS `nupi`,
    _utf8'Reglement' AS `des`,
    `m_recl`.`recl_moreg` AS `totDeb`,
    if(((`m_recl`.`recl_copa` like _latin1'5141%') or (`m_recl`.`recl_copa` like _latin1'5541%') or (`m_recl`.`recl_copa` like _latin1'5161%')),`m_recl`.`recl_moreg`,0) AS `totDebr`,
    0 AS `totCre`,
    0 AS `totCrer`,
    `m_recl`.`recl_cli` AS `cli`,
    `m_recl`.`recl_lcli` AS `lcli`,
    `m_recl`.`recl_lmore` AS `recl_ref1`,
    `m_recl`.`recl_lib` AS `recl_ref2`,
    `m_recl`.`recl_lcojo` AS `recl_ref3`,
    substr((_latin1'' + `m_recl`.`recl_daec`),1,8) AS `recl_ref4` 
  from 
    `m_recl` 
  where 
    (`m_recl`.`recl_sen` = 0);

#
# Definition for the `e_sifo` view : 
#

DROP VIEW IF EXISTS `e_sifo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e_sifo` AS 
  select 
    `m_fafo`.`fafo_dat` AS `dat`,
    `m_fafo`.`fafo_nupi` AS `nupi`,
    _utf8'Facture' AS `des`,
    `m_fafo`.`fafo_ttc` AS `totDeb`,
    `m_fafo`.`fafo_ttc` AS `totDebr`,
    0 AS `totCre`,
    0 AS `totCrer`,
    `m_fafo`.`fafo_fou` AS `fou`,
    `m_fafo`.`fafo_lfou` AS `lfou`,
    `m_fafo`.`fafo_ref1` AS `ref1`,
    `m_fafo`.`fafo_ref2` AS `ref2`,
    `m_fafo`.`fafo_ref3` AS `ref3`,
    `m_fafo`.`fafo_ref4` AS `ref4` 
  from 
    `m_fafo` union 
  select 
    `m_avfo`.`avfo_dat` AS `dat`,
    `m_avfo`.`avfo_nupi` AS `nupi`,
    _utf8'Avoir' AS `des`,
    0 AS `totDeb`,
    0 AS `totDebr`,
    `m_avfo`.`avfo_ttc` AS `totCre`,
    `m_avfo`.`avfo_ttc` AS `totCrer`,
    `m_avfo`.`avfo_fou` AS `fou`,
    `m_avfo`.`avfo_lfou` AS `lfou`,
    `m_avfo`.`avfo_ref1` AS `ref1`,
    `m_avfo`.`avfo_ref2` AS `ref2`,
    `m_avfo`.`avfo_ref3` AS `ref3`,
    `m_avfo`.`avfo_ref4` AS `ref4` 
  from 
    `m_avfo` union 
  select 
    `m_refo`.`refo_dat` AS `dat`,
    `m_refo`.`refo_nupi` AS `nupi`,
    _utf8'Reglement' AS `des`,
    0 AS `totDeb`,
    0 AS `totDebr`,
    `m_refo`.`refo_moreg` AS `totCre`,
    if(((`m_refo`.`refo_copa` like _latin1'5141%') or (`m_refo`.`refo_copa` like _latin1'5541%') or (`m_refo`.`refo_copa` like _latin1'5161%')),`m_refo`.`refo_moreg`,0) AS `totCrer`,
    `m_refo`.`refo_fou` AS `fou`,
    `m_refo`.`refo_lfou` AS `lfou`,
    `m_refo`.`refo_lmore` AS `refo_ref1`,
    `m_refo`.`refo_lib` AS `refo_ref2`,
    `m_refo`.`refo_lcojo` AS `refo_ref3`,
    substr((_latin1'' + `m_refo`.`refo_daec`),1,8) AS `refo_ref4` 
  from 
    `m_refo` 
  where 
    (`m_refo`.`refo_sen` = 1) union 
  select 
    `m_refo`.`refo_dat` AS `dat`,
    `m_refo`.`refo_nupi` AS `nupi`,
    _utf8'Reglement' AS `des`,
    `m_refo`.`refo_moreg` AS `totDeb`,
    if(((`m_refo`.`refo_copa` like _latin1'5141%') or (`m_refo`.`refo_copa` like _latin1'5541%') or (`m_refo`.`refo_copa` like _latin1'5161%')),`m_refo`.`refo_moreg`,0) AS `totDebr`,
    0 AS `totCre`,
    0 AS `totCrer`,
    `m_refo`.`refo_fou` AS `fou`,
    `m_refo`.`refo_lfou` AS `lfou`,
    `m_refo`.`refo_lmore` AS `refo_ref1`,
    `m_refo`.`refo_lib` AS `refo_ref2`,
    `m_refo`.`refo_lcojo` AS `refo_ref3`,
    substr((_latin1'' + `m_refo`.`refo_daec`),1,8) AS `refo_ref4` 
  from 
    `m_refo` 
  where 
    (`m_refo`.`refo_sen` = 0);

#
# Definition for the `facl_print` view : 
#

DROP VIEW IF EXISTS `facl_print`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `facl_print` AS 
  select 
    `m_a_facl`.`a_facl_num` AS `a_facl_num`,
    `m_a_facl`.`a_facl_cod` AS `a_facl_cod`,
    `m_a_facl`.`a_facl_ref` AS `a_facl_ref`,
    `m_a_facl`.`a_facl_lib` AS `a_facl_lib`,
    `m_a_facl`.`a_facl_nuse` AS `a_facl_nuse`,
    `m_a_facl`.`a_facl_dep` AS `a_facl_dep`,
    `m_a_facl`.`a_facl_pri` AS `a_facl_pri`,
    `m_a_facl`.`a_facl_priT` AS `a_facl_priT`,
    `m_a_facl`.`a_facl_rem` AS `a_facl_rem`,
    `m_a_facl`.`a_facl_qua` AS `a_facl_qua`,
    `m_a_facl`.`a_facl_dd1` AS `a_facl_dd1`,
    `m_a_facl`.`a_facl_dd2` AS `a_facl_dd2`,
    `m_a_facl`.`a_facl_dd3` AS `a_facl_dd3`,
    `m_a_facl`.`a_facl_dd4` AS `a_facl_dd4`,
    `m_a_facl`.`a_facl_toht` AS `a_facl_toht`,
    `m_a_facl`.`a_facl_tott` AS `a_facl_tott`,
    `m_a_facl`.`a_facl_tva` AS `a_facl_tva`,
    `m_a_facl`.`a_facl_nupi` AS `a_facl_nupi`,
    `m_a_facl`.`a_facl_dat` AS `a_facl_dat`,
    `m_a_facl`.`a_facl_daec` AS `a_facl_daec`,
    `m_a_facl`.`a_facl_cli` AS `a_facl_cli`,
    `m_a_facl`.`a_facl_lcli` AS `a_facl_lcli`,
    `m_a_facl`.`a_facl_adr` AS `a_facl_adr`,
    `m_a_facl`.`a_facl_vil` AS `a_facl_vil`,
    `m_a_facl`.`a_facl_tohtg` AS `a_facl_tohtg`,
    `m_a_facl`.`a_facl_ttcg` AS `a_facl_ttcg`,
    `m_a_facl`.`a_facl_tvag` AS `a_facl_tvag`,
    `m_a_facl`.`a_facl_remg` AS `a_facl_remg`,
    `m_a_facl`.`a_facl_ref1` AS `a_facl_ref1`,
    `m_a_facl`.`a_facl_ref2` AS `a_facl_ref2`,
    `m_a_facl`.`a_facl_ref3` AS `a_facl_ref3`,
    `m_a_facl`.`a_facl_ref4` AS `a_facl_ref4`,
    `m_a_facl`.`a_facl_cpt` AS `a_facl_cpt` 
  from 
    `m_a_facl`;

#
# Definition for the `fafo_print` view : 
#

DROP VIEW IF EXISTS `fafo_print`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fafo_print` AS 
  select 
    `m_a_fafo`.`a_fafo_num` AS `a_fafo_num`,
    `m_a_fafo`.`a_fafo_cod` AS `a_fafo_cod`,
    `m_a_fafo`.`a_fafo_ref` AS `a_fafo_ref`,
    `m_a_fafo`.`a_fafo_lib` AS `a_fafo_lib`,
    `m_a_fafo`.`a_fafo_nuse` AS `a_fafo_nuse`,
    `m_a_fafo`.`a_fafo_dep` AS `a_fafo_dep`,
    `m_a_fafo`.`a_fafo_pri` AS `a_fafo_pri`,
    `m_a_fafo`.`a_fafo_priT` AS `a_fafo_priT`,
    `m_a_fafo`.`a_fafo_rem` AS `a_fafo_rem`,
    `m_a_fafo`.`a_fafo_qua` AS `a_fafo_qua`,
    `m_a_fafo`.`a_fafo_dd1` AS `a_fafo_dd1`,
    `m_a_fafo`.`a_fafo_dd2` AS `a_fafo_dd2`,
    `m_a_fafo`.`a_fafo_dd3` AS `a_fafo_dd3`,
    `m_a_fafo`.`a_fafo_dd4` AS `a_fafo_dd4`,
    `m_a_fafo`.`a_fafo_toht` AS `a_fafo_toht`,
    `m_a_fafo`.`a_fafo_tott` AS `a_fafo_tott`,
    `m_a_fafo`.`a_fafo_tva` AS `a_fafo_tva`,
    `m_a_fafo`.`a_fafo_nupi` AS `a_fafo_nupi`,
    `m_a_fafo`.`a_fafo_dat` AS `a_fafo_dat`,
    `m_a_fafo`.`a_fafo_daec` AS `a_fafo_daec`,
    `m_a_fafo`.`a_fafo_fou` AS `a_fafo_fou`,
    `m_a_fafo`.`a_fafo_lfou` AS `a_fafo_lfou`,
    `m_a_fafo`.`a_fafo_adr` AS `a_fafo_adr`,
    `m_a_fafo`.`a_fafo_vil` AS `a_fafo_vil`,
    `m_a_fafo`.`a_fafo_tohtg` AS `a_fafo_tohtg`,
    `m_a_fafo`.`a_fafo_ttcg` AS `a_fafo_ttcg`,
    `m_a_fafo`.`a_fafo_tvag` AS `a_fafo_tvag`,
    `m_a_fafo`.`a_fafo_remg` AS `a_fafo_remg`,
    `m_a_fafo`.`a_fafo_ref1` AS `a_fafo_ref1`,
    `m_a_fafo`.`a_fafo_ref2` AS `a_fafo_ref2`,
    `m_a_fafo`.`a_fafo_ref3` AS `a_fafo_ref3`,
    `m_a_fafo`.`a_fafo_ref4` AS `a_fafo_ref4`,
    `m_a_fafo`.`a_fafo_cpt` AS `a_fafo_cpt` 
  from 
    `m_a_fafo`;

#
# Definition for the `list_a_fabl` view : 
#

DROP VIEW IF EXISTS `list_a_fabl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `list_a_fabl` AS 
  select 
    `m_a_facl`.`a_facl_nupi` AS `a_facl_nupi`,
    `m_a_facl`.`a_facl_cod` AS `a_facl_cod`,
    `m_a_facl`.`a_facl_lib` AS `a_facl_lib`,
    `m_a_facl`.`a_facl_dep` AS `a_facl_dep`,
    `m_a_facl`.`a_facl_nuse` AS `a_facl_nuse`,
    `m_a_facl`.`a_facl_pri` AS `a_facl_pri`,
    `m_a_facl`.`a_facl_priT` AS `a_facl_priT`,
    `m_a_facl`.`a_facl_rem` AS `a_facl_rem`,
    `m_a_facl`.`a_facl_qua` AS `a_facl_qua`,
    `m_a_facl`.`a_facl_toht` AS `a_facl_toht`,
    `m_a_facl`.`a_facl_tott` AS `a_facl_tott`,
    `m_a_facl`.`a_facl_tva` AS `a_facl_tva`,
    `m_a_facl`.`a_facl_dd1` AS `a_facl_dd1`,
    `m_a_facl`.`a_facl_dd2` AS `a_facl_dd2`,
    `m_a_facl`.`a_facl_dd3` AS `a_facl_dd3`,
    `m_a_facl`.`a_facl_dd4` AS `a_facl_dd4`,
    _latin1'1' AS `a_facl_sen` 
  from 
    `m_a_facl` union 
  select 
    `m_a_avcl`.`a_avcl_nupi` AS `a_avcl_nupi`,
    `m_a_avcl`.`a_avcl_cod` AS `a_avcl_cod`,
    `m_a_avcl`.`a_avcl_lib` AS `a_avcl_lib`,
    `m_a_avcl`.`a_avcl_dep` AS `a_avcl_dep`,
    `m_a_avcl`.`a_avcl_nuse` AS `a_avcl_nuse`,
    `m_a_avcl`.`a_avcl_pri` AS `a_avcl_pri`,
    `m_a_avcl`.`a_avcl_priT` AS `a_avcl_priT`,
    `m_a_avcl`.`a_avcl_rem` AS `a_avcl_rem`,
    `m_a_avcl`.`a_avcl_qua` AS `a_avcl_qua`,
    `m_a_avcl`.`a_avcl_toht` AS `a_avcl_toht`,
    `m_a_avcl`.`a_avcl_tott` AS `a_avcl_tott`,
    `m_a_avcl`.`a_avcl_tva` AS `a_avcl_tva`,
    `m_a_avcl`.`a_avcl_dd1` AS `a_avcl_dd1`,
    `m_a_avcl`.`a_avcl_dd2` AS `a_avcl_dd2`,
    `m_a_avcl`.`a_avcl_dd3` AS `a_avcl_dd3`,
    `m_a_avcl`.`a_avcl_dd4` AS `a_avcl_dd4`,
    _latin1'0' AS `a_avcl_sen` 
  from 
    `m_a_avcl`;

#
# Definition for the `list_a_fabr` view : 
#

DROP VIEW IF EXISTS `list_a_fabr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `list_a_fabr` AS 
  select 
    `m_a_fafo`.`a_fafo_nupi` AS `a_fafo_nupi`,
    `m_a_fafo`.`a_fafo_cod` AS `a_fafo_cod`,
    `m_a_fafo`.`a_fafo_lib` AS `a_fafo_lib`,
    `m_a_fafo`.`a_fafo_dep` AS `a_fafo_dep`,
    `m_a_fafo`.`a_fafo_nuse` AS `a_fafo_nuse`,
    `m_a_fafo`.`a_fafo_pri` AS `a_fafo_pri`,
    `m_a_fafo`.`a_fafo_priT` AS `a_fafo_priT`,
    `m_a_fafo`.`a_fafo_rem` AS `a_fafo_rem`,
    `m_a_fafo`.`a_fafo_qua` AS `a_fafo_qua`,
    `m_a_fafo`.`a_fafo_toht` AS `a_fafo_toht`,
    `m_a_fafo`.`a_fafo_tott` AS `a_fafo_tott`,
    `m_a_fafo`.`a_fafo_tva` AS `a_fafo_tva`,
    `m_a_fafo`.`a_fafo_dd1` AS `a_fafo_dd1`,
    `m_a_fafo`.`a_fafo_dd2` AS `a_fafo_dd2`,
    `m_a_fafo`.`a_fafo_dd3` AS `a_fafo_dd3`,
    `m_a_fafo`.`a_fafo_dd4` AS `a_fafo_dd4`,
    _latin1'1' AS `a_fafo_sen` 
  from 
    `m_a_fafo` union 
  select 
    `m_a_avfo`.`a_avfo_nupi` AS `a_avfo_nupi`,
    `m_a_avfo`.`a_avfo_cod` AS `a_avfo_cod`,
    `m_a_avfo`.`a_avfo_lib` AS `a_avfo_lib`,
    `m_a_avfo`.`a_avfo_dep` AS `a_avfo_dep`,
    `m_a_avfo`.`a_avfo_nuse` AS `a_avfo_nuse`,
    `m_a_avfo`.`a_avfo_pri` AS `a_avfo_pri`,
    `m_a_avfo`.`a_avfo_priT` AS `a_avfo_priT`,
    `m_a_avfo`.`a_avfo_rem` AS `a_avfo_rem`,
    `m_a_avfo`.`a_avfo_qua` AS `a_avfo_qua`,
    `m_a_avfo`.`a_avfo_toht` AS `a_avfo_toht`,
    `m_a_avfo`.`a_avfo_tott` AS `a_avfo_tott`,
    `m_a_avfo`.`a_avfo_tva` AS `a_avfo_tva`,
    `m_a_avfo`.`a_avfo_dd1` AS `a_avfo_dd1`,
    `m_a_avfo`.`a_avfo_dd2` AS `a_avfo_dd2`,
    `m_a_avfo`.`a_avfo_dd3` AS `a_avfo_dd3`,
    `m_a_avfo`.`a_avfo_dd4` AS `a_avfo_dd4`,
    _latin1'0' AS `a_avfo_sen` 
  from 
    `m_a_avfo`;

#
# Definition for the `list_fabl` view : 
#

DROP VIEW IF EXISTS `list_fabl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `list_fabl` AS 
  select 
    `m_facl`.`facl_nupi` AS `facl_nupi`,
    `m_facl`.`facl_dat` AS `facl_dat`,
    `m_facl`.`facl_cli` AS `facl_cli`,
    `m_facl`.`facl_lcli` AS `facl_lcli`,
    `m_facl`.`facl_adr` AS `facl_adr`,
    `m_facl`.`facl_vil` AS `facl_vil`,
    `m_facl`.`facl_rem` AS `facl_rem`,
    `m_facl`.`facl_toht` AS `facl_toht`,
    `m_facl`.`facl_tva` AS `facl_tva`,
    `m_facl`.`facl_ttc` AS `facl_ttc`,
    `m_facl`.`facl_ref1` AS `facl_ref1`,
    `m_facl`.`facl_ref2` AS `facl_ref2`,
    `m_facl`.`facl_ref3` AS `facl_ref3`,
    `m_facl`.`facl_ref4` AS `facl_ref4`,
    _latin1'1' AS `facl_sen` 
  from 
    `m_facl` union 
  select 
    `m_avcl`.`avcl_nupi` AS `avcl_nupi`,
    `m_avcl`.`avcl_dat` AS `avcl_dat`,
    `m_avcl`.`avcl_cli` AS `avcl_cli`,
    `m_avcl`.`avcl_lcli` AS `avcl_lcli`,
    `m_avcl`.`avcl_adr` AS `avcl_adr`,
    `m_avcl`.`avcl_vil` AS `avcl_vil`,
    `m_avcl`.`avcl_rem` AS `avcl_rem`,
    `m_avcl`.`avcl_toht` AS `avcl_toht`,
    `m_avcl`.`avcl_tva` AS `avcl_tva`,
    `m_avcl`.`avcl_ttc` AS `avcl_ttc`,
    `m_avcl`.`avcl_ref1` AS `avcl_ref1`,
    `m_avcl`.`avcl_ref2` AS `avcl_ref2`,
    `m_avcl`.`avcl_ref3` AS `avcl_ref3`,
    `m_avcl`.`avcl_ref4` AS `avcl_ref4`,
    _latin1'0' AS `avcl_sen` 
  from 
    `m_avcl`;

#
# Definition for the `list_fabr` view : 
#

DROP VIEW IF EXISTS `list_fabr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `list_fabr` AS 
  select 
    `m_fafo`.`fafo_nupi` AS `fafo_nupi`,
    `m_fafo`.`fafo_dat` AS `fafo_dat`,
    `m_fafo`.`fafo_fou` AS `fafo_fou`,
    `m_fafo`.`fafo_lfou` AS `fafo_lfou`,
    `m_fafo`.`fafo_adr` AS `fafo_adr`,
    `m_fafo`.`fafo_vil` AS `fafo_vil`,
    `m_fafo`.`fafo_rem` AS `fafo_rem`,
    `m_fafo`.`fafo_toht` AS `fafo_toht`,
    `m_fafo`.`fafo_tva` AS `fafo_tva`,
    `m_fafo`.`fafo_ttc` AS `fafo_ttc`,
    `m_fafo`.`fafo_ref1` AS `fafo_ref1`,
    `m_fafo`.`fafo_ref2` AS `fafo_ref2`,
    `m_fafo`.`fafo_ref3` AS `fafo_ref3`,
    `m_fafo`.`fafo_ref4` AS `fafo_ref4`,
    _latin1'1' AS `fafo_sen` 
  from 
    `m_fafo` union 
  select 
    `m_avfo`.`avfo_nupi` AS `avfo_nupi`,
    `m_avfo`.`avfo_dat` AS `avfo_dat`,
    `m_avfo`.`avfo_fou` AS `avfo_fou`,
    `m_avfo`.`avfo_lfou` AS `avfo_lfou`,
    `m_avfo`.`avfo_adr` AS `avfo_adr`,
    `m_avfo`.`avfo_vil` AS `avfo_vil`,
    `m_avfo`.`avfo_rem` AS `avfo_rem`,
    `m_avfo`.`avfo_toht` AS `avfo_toht`,
    `m_avfo`.`avfo_tva` AS `avfo_tva`,
    `m_avfo`.`avfo_ttc` AS `avfo_ttc`,
    `m_avfo`.`avfo_ref1` AS `avfo_ref1`,
    `m_avfo`.`avfo_ref2` AS `avfo_ref2`,
    `m_avfo`.`avfo_ref3` AS `avfo_ref3`,
    `m_avfo`.`avfo_ref4` AS `avfo_ref4`,
    _latin1'0' AS `avfo_sen` 
  from 
    `m_avfo`;

#
# Definition for the `max_a_refa` view : 
#

DROP VIEW IF EXISTS `max_a_refa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `max_a_refa` AS 
  select 
    `m_recl_facl`.`facl_nupi` AS `facl_nupi`,
    sum(`m_recl_facl`.`recl_moareg`) AS `recl_moareg` 
  from 
    `m_recl_facl` 
  group by 
    `m_recl_facl`.`facl_nupi`;

#
# Definition for the `max_a_reff` view : 
#

DROP VIEW IF EXISTS `max_a_reff`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `max_a_reff` AS 
  select 
    `m_refo_fafo`.`fafo_nupi` AS `fafo_nupi`,
    sum(`m_refo_fafo`.`refo_moareg`) AS `refo_moareg` 
  from 
    `m_refo_fafo` 
  group by 
    `m_refo_fafo`.`fafo_nupi`;

#
# Definition for the `max_avcl` view : 
#

DROP VIEW IF EXISTS `max_avcl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `max_avcl` AS 
  select 
    `m_avcl_facl`.`facl_nupi` AS `facl_nupi`,
    sum(`m_avcl`.`avcl_ttc`) AS `avcl_ttc` 
  from 
    (`m_avcl_facl` join `m_avcl` on((`m_avcl_facl`.`avcl_nupi` = `m_avcl`.`avcl_nupi`))) 
  group by 
    `m_avcl_facl`.`facl_nupi`;

#
# Definition for the `max_avfo` view : 
#

DROP VIEW IF EXISTS `max_avfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `max_avfo` AS 
  select 
    `m_avfo_fafo`.`fafo_nupi` AS `fafo_nupi`,
    sum(`m_avfo`.`avfo_ttc`) AS `avfo_ttc` 
  from 
    (`m_avfo_fafo` join `m_avfo` on((`m_avfo_fafo`.`avfo_nupi` = `m_avfo`.`avfo_nupi`))) 
  group by 
    `m_avfo_fafo`.`fafo_nupi`;

#
# Definition for the `max_recl` view : 
#

DROP VIEW IF EXISTS `max_recl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `max_recl` AS 
  select 
    distinct `m_recl_facl`.`facl_nupi` AS `refa_nupi` 
  from 
    `m_recl_facl`;

#
# Definition for the `max_refa` view : 
#

DROP VIEW IF EXISTS `max_refa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `max_refa` AS 
  select 
    `m_recl_facl`.`recl_nupi` AS `recl_nupi`,
    sum(`m_recl_facl`.`recl_moareg`) AS `recl_moareg` 
  from 
    `m_recl_facl` 
  group by 
    `m_recl_facl`.`recl_nupi`;

#
# Definition for the `max_reff` view : 
#

DROP VIEW IF EXISTS `max_reff`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `max_reff` AS 
  select 
    `m_refo_fafo`.`refo_nupi` AS `refo_nupi`,
    sum(`m_refo_fafo`.`refo_moareg`) AS `refo_moareg` 
  from 
    `m_refo_fafo` 
  group by 
    `m_refo_fafo`.`refo_nupi`;

#
# Definition for the `max_refo` view : 
#

DROP VIEW IF EXISTS `max_refo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `max_refo` AS 
  select 
    distinct `m_refo_fafo`.`fafo_nupi` AS `reff_nupi` 
  from 
    `m_refo_fafo`;

#
# Definition for the `mm_avcl` view : 
#

DROP VIEW IF EXISTS `mm_avcl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mm_avcl` AS 
  select 
    `m_avcl`.`avcl_nupi` AS `avcl_nupi`,
    `m_avcl`.`avcl_dat` AS `avcl_dat`,
    `m_avcl`.`avcl_cli` AS `avcl_cli`,
    `m_avcl`.`avcl_lcli` AS `avcl_lcli`,
    `m_avcl`.`avcl_adr` AS `avcl_adr`,
    `m_avcl`.`avcl_vil` AS `avcl_vil`,
    `m_avcl`.`avcl_toht` AS `avcl_toht`,
    `m_avcl`.`avcl_tva` AS `avcl_tva`,
    `m_avcl`.`avcl_ttc` AS `avcl_ttc`,
    `m_avcl`.`avcl_rem` AS `avcl_rem`,
    `m_avcl`.`avcl_ref1` AS `avcl_ref1`,
    `m_avcl`.`avcl_ref2` AS `avcl_ref2`,
    `m_avcl`.`avcl_ref3` AS `avcl_ref3`,
    `m_avcl`.`avcl_ref4` AS `avcl_ref4`,
    `m_avcl`.`avcl_cpt` AS `avcl_cpt`,
    `max_recl`.`refa_nupi` AS `refa_nupi` 
  from 
    (`m_avcl` left join `max_recl` on((`m_avcl`.`avcl_nupi` = `max_recl`.`refa_nupi`)));

#
# Definition for the `mm_avfo` view : 
#

DROP VIEW IF EXISTS `mm_avfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mm_avfo` AS 
  select 
    `m_avfo`.`avfo_nupi` AS `avfo_nupi`,
    `m_avfo`.`avfo_dat` AS `avfo_dat`,
    `m_avfo`.`avfo_fou` AS `avfo_fou`,
    `m_avfo`.`avfo_lfou` AS `avfo_lfou`,
    `m_avfo`.`avfo_adr` AS `avfo_adr`,
    `m_avfo`.`avfo_vil` AS `avfo_vil`,
    `m_avfo`.`avfo_toht` AS `avfo_toht`,
    `m_avfo`.`avfo_tva` AS `avfo_tva`,
    `m_avfo`.`avfo_ttc` AS `avfo_ttc`,
    `m_avfo`.`avfo_rem` AS `avfo_rem`,
    `m_avfo`.`avfo_ref1` AS `avfo_ref1`,
    `m_avfo`.`avfo_ref2` AS `avfo_ref2`,
    `m_avfo`.`avfo_ref3` AS `avfo_ref3`,
    `m_avfo`.`avfo_ref4` AS `avfo_ref4`,
    `m_avfo`.`avfo_cpt` AS `avfo_cpt`,
    `max_refo`.`reff_nupi` AS `reff_nupi` 
  from 
    (`m_avfo` left join `max_refo` on((`m_avfo`.`avfo_nupi` = `max_refo`.`reff_nupi`)));

#
# Definition for the `mm_decl` view : 
#

DROP VIEW IF EXISTS `mm_decl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mm_decl` AS 
  select 
    `m_decl`.`decl_nupi` AS `decl_nupi`,
    `m_decl`.`decl_dat` AS `decl_dat`,
    `m_decl`.`decl_cli` AS `decl_cli`,
    `m_decl`.`decl_lcli` AS `decl_lcli`,
    `m_decl`.`decl_adr` AS `decl_adr`,
    `m_decl`.`decl_vil` AS `decl_vil`,
    `m_decl`.`decl_toht` AS `decl_toht`,
    `m_decl`.`decl_tva` AS `decl_tva`,
    `m_decl`.`decl_ttc` AS `decl_ttc`,
    `m_decl`.`decl_rem` AS `decl_rem`,
    `m_decl`.`decl_ref1` AS `decl_ref1`,
    `m_decl`.`decl_ref2` AS `decl_ref2`,
    `m_decl`.`decl_ref3` AS `decl_ref3`,
    `m_decl`.`decl_ref4` AS `decl_ref4`,
    `m_facl_decl`.`facl_nupi` AS `facl_nupi` 
  from 
    (`m_decl` left join `m_facl_decl` on((`m_decl`.`decl_nupi` = `m_facl_decl`.`decl_nupi`)));

#
# Definition for the `mm_defo` view : 
#

DROP VIEW IF EXISTS `mm_defo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mm_defo` AS 
  select 
    `m_defo`.`defo_nupi` AS `defo_nupi`,
    `m_defo`.`defo_dat` AS `defo_dat`,
    `m_defo`.`defo_fou` AS `defo_fou`,
    `m_defo`.`defo_lfou` AS `defo_lfou`,
    `m_defo`.`defo_adr` AS `defo_adr`,
    `m_defo`.`defo_vil` AS `defo_vil`,
    `m_defo`.`defo_toht` AS `defo_toht`,
    `m_defo`.`defo_tva` AS `defo_tva`,
    `m_defo`.`defo_ttc` AS `defo_ttc`,
    `m_defo`.`defo_rem` AS `defo_rem`,
    `m_defo`.`defo_ref1` AS `defo_ref1`,
    `m_defo`.`defo_ref2` AS `defo_ref2`,
    `m_defo`.`defo_ref3` AS `defo_ref3`,
    `m_defo`.`defo_ref4` AS `defo_ref4`,
    `m_fafo_defo`.`fafo_nupi` AS `fafo_nupi` 
  from 
    (`m_defo` left join `m_fafo_defo` on((`m_defo`.`defo_nupi` = `m_fafo_defo`.`defo_nupi`)));

#
# Definition for the `mm_facl` view : 
#

DROP VIEW IF EXISTS `mm_facl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mm_facl` AS 
  select 
    `m_facl`.`facl_nupi` AS `facl_nupi`,
    `m_facl`.`facl_dat` AS `facl_dat`,
    `m_facl`.`facl_cli` AS `facl_cli`,
    `m_facl`.`facl_lcli` AS `facl_lcli`,
    `m_facl`.`facl_adr` AS `facl_adr`,
    `m_facl`.`facl_vil` AS `facl_vil`,
    `m_facl`.`facl_toht` AS `facl_toht`,
    `m_facl`.`facl_tva` AS `facl_tva`,
    `m_facl`.`facl_ttc` AS `facl_ttc`,
    `m_facl`.`facl_rem` AS `facl_rem`,
    `m_facl`.`facl_ref1` AS `facl_ref1`,
    `m_facl`.`facl_ref2` AS `facl_ref2`,
    `m_facl`.`facl_ref3` AS `facl_ref3`,
    `m_facl`.`facl_ref4` AS `facl_ref4`,
    `m_facl`.`facl_daec` AS `facl_daec`,
    `m_facl`.`facl_cpt` AS `facl_cpt`,
    if(isnull(`max_avcl`.`avcl_ttc`),0,`max_avcl`.`avcl_ttc`) AS `avcl_ttc`,
    `max_recl`.`refa_nupi` AS `refa_nupi` 
  from 
    ((`m_facl` left join `max_avcl` on((`m_facl`.`facl_nupi` = `max_avcl`.`facl_nupi`))) left join `max_recl` on((`m_facl`.`facl_nupi` = `max_recl`.`refa_nupi`)));

#
# Definition for the `mm_fafo` view : 
#

DROP VIEW IF EXISTS `mm_fafo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mm_fafo` AS 
  select 
    `m_fafo`.`fafo_nupi` AS `fafo_nupi`,
    `m_fafo`.`fafo_dat` AS `fafo_dat`,
    `m_fafo`.`fafo_fou` AS `fafo_fou`,
    `m_fafo`.`fafo_lfou` AS `fafo_lfou`,
    `m_fafo`.`fafo_adr` AS `fafo_adr`,
    `m_fafo`.`fafo_vil` AS `fafo_vil`,
    `m_fafo`.`fafo_toht` AS `fafo_toht`,
    `m_fafo`.`fafo_tva` AS `fafo_tva`,
    `m_fafo`.`fafo_ttc` AS `fafo_ttc`,
    `m_fafo`.`fafo_rem` AS `fafo_rem`,
    `m_fafo`.`fafo_ref1` AS `fafo_ref1`,
    `m_fafo`.`fafo_ref2` AS `fafo_ref2`,
    `m_fafo`.`fafo_ref3` AS `fafo_ref3`,
    `m_fafo`.`fafo_ref4` AS `fafo_ref4`,
    `m_fafo`.`fafo_daec` AS `fafo_daec`,
    `m_fafo`.`fafo_cpt` AS `fafo_cpt`,
    if(isnull(`max_avfo`.`avfo_ttc`),0,`max_avfo`.`avfo_ttc`) AS `avfo_ttc`,
    `max_refo`.`reff_nupi` AS `reff_nupi` 
  from 
    ((`m_fafo` left join `max_avfo` on((`m_fafo`.`fafo_nupi` = `max_avfo`.`fafo_nupi`))) left join `max_refo` on((`m_fafo`.`fafo_nupi` = `max_refo`.`reff_nupi`)));

#
# Definition for the `mm_recl` view : 
#

DROP VIEW IF EXISTS `mm_recl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mm_recl` AS 
  select 
    `m_recl`.`recl_nupi` AS `recl_nupi`,
    `m_recl`.`recl_dat` AS `recl_dat`,
    `m_recl`.`recl_daec` AS `recl_daec`,
    `m_recl`.`recl_cai` AS `recl_cai`,
    `m_recl`.`recl_lcai` AS `recl_lcai`,
    `m_recl`.`recl_per` AS `recl_per`,
    `m_recl`.`recl_lper` AS `recl_lper`,
    `m_recl`.`recl_more` AS `recl_more`,
    `m_recl`.`recl_lmore` AS `recl_lmore`,
    `m_recl`.`recl_lib` AS `recl_lib`,
    `m_recl`.`recl_cli` AS `recl_cli`,
    `m_recl`.`recl_lcli` AS `recl_lcli`,
    `m_recl`.`recl_coge` AS `recl_coge`,
    `m_recl`.`recl_moreg` AS `recl_moreg`,
    `m_recl`.`recl_cojo` AS `recl_cojo`,
    `m_recl`.`recl_lcojo` AS `recl_lcojo`,
    `m_recl`.`recl_copa` AS `recl_copa`,
    `m_recl`.`recl_cpt` AS `recl_cpt`,
    `m_recl`.`recl_sen` AS `recl_sen`,
    if(isnull(`max_refa`.`recl_moareg`),0,`max_refa`.`recl_moareg`) AS `recl_moareg` 
  from 
    (`m_recl` left join `max_refa` on((`m_recl`.`recl_nupi` = `max_refa`.`recl_nupi`)));

#
# Definition for the `mm_refo` view : 
#

DROP VIEW IF EXISTS `mm_refo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mm_refo` AS 
  select 
    `m_refo`.`refo_nupi` AS `refo_nupi`,
    `m_refo`.`refo_dat` AS `refo_dat`,
    `m_refo`.`refo_daec` AS `refo_daec`,
    `m_refo`.`refo_cai` AS `refo_cai`,
    `m_refo`.`refo_lcai` AS `refo_lcai`,
    `m_refo`.`refo_per` AS `refo_per`,
    `m_refo`.`refo_lper` AS `refo_lper`,
    `m_refo`.`refo_more` AS `refo_more`,
    `m_refo`.`refo_lmore` AS `refo_lmore`,
    `m_refo`.`refo_lib` AS `refo_lib`,
    `m_refo`.`refo_fou` AS `refo_fou`,
    `m_refo`.`refo_lfou` AS `refo_lfou`,
    `m_refo`.`refo_coge` AS `refo_coge`,
    `m_refo`.`refo_moreg` AS `refo_moreg`,
    `m_refo`.`refo_cojo` AS `refo_cojo`,
    `m_refo`.`refo_lcojo` AS `refo_lcojo`,
    `m_refo`.`refo_copa` AS `refo_copa`,
    `m_refo`.`refo_cpt` AS `refo_cpt`,
    `m_refo`.`refo_sen` AS `refo_sen`,
    if(isnull(`max_reff`.`refo_moareg`),0,`max_reff`.`refo_moareg`) AS `refo_moareg` 
  from 
    (`m_refo` left join `max_reff` on((`m_refo`.`refo_nupi` = `max_reff`.`refo_nupi`)));

#
# Data for the `m_a_decl` table  (LIMIT 0,500)
#

INSERT INTO `m_a_decl` (`a_decl_num`, `a_decl_cod`, `a_decl_ref`, `a_decl_lib`, `a_decl_nuse`, `a_decl_dep`, `a_decl_pri`, `a_decl_priT`, `a_decl_rem`, `a_decl_qua`, `a_decl_dd1`, `a_decl_dd2`, `a_decl_dd3`, `a_decl_dd4`, `a_decl_toht`, `a_decl_tott`, `a_decl_tva`, `a_decl_nupi`, `a_decl_dat`, `a_decl_cli`, `a_decl_lcli`, `a_decl_adr`, `a_decl_vil`, `a_decl_tohtg`, `a_decl_ttcg`, `a_decl_tvag`, `a_decl_remg`, `a_decl_ref1`, `a_decl_ref2`, `a_decl_ref3`, `a_decl_ref4`) VALUES 
  (1,'BILAN','','BILAN ANNUEL_18-19-20-21-','','depot',4000,4800,0,4,'','','','',16000,19200,'20','DE000103','2021-12-24','*****','******','*******','**********',16000,19200,3200,0,'','','',''),
  (1,'PVAF','','PV DE MISE A JOUR DU DOSSIER JURIDIQUE DE LA SOCIETE WACHAM IMMOBILIER','','depot',4166.67,5000.004,0,1,'','','','',4166.67,5000.004,'20','DE000104','2022-03-19','CLIENT058','WACHAM IMMOBILIER','635, RUE GOULMIMA','Casablanca',4166.67,5000.004,833.334,0,'','','',''),
  (1,'CRE','','Honoraires _Creation de Societe a Responsabilité Limitée','','depot',2500,3000,0,1,'','','','',2500,3000,'20','DE007','2023-04-26','OUHANNA','OUHANNA','','',5000,5500,500,0,'','','',''),
  (3,'DEB','','-DEBOURS- RC','','depot',350,350,0,1,'','','','',350,350,'0','DE007','2023-04-26','OUHANNA','OUHANNA','','',5000,5500,500,0,'','','',''),
  (4,'DEB','','-DEBOURS-ANNONCE LEGALE','','depot',150,150,0,1,'','','','',150,150,'0','DE007','2023-04-26','OUHANNA','OUHANNA','','',5000,5500,500,0,'','','',''),
  (5,'DEB','','-DEBOURS-ENREGISTREMENT','','depot',235,235,0,1,'','','','',235,235,'0','DE007','2023-04-26','OUHANNA','OUHANNA','','',5000,5500,500,0,'','','',''),
  (6,'DEB','','-DEBOURS-CACHET','','depot',150,150,0,1,'','','','',150,150,'0','DE007','2023-04-26','OUHANNA','OUHANNA','','',5000,5500,500,0,'','','',''),
  (7,'DEB','','-DEBOURS- MODEL J','','depot',50,50,0,1,'','','','',50,50,'0','DE007','2023-04-26','OUHANNA','OUHANNA','','',5000,5500,500,0,'','','',''),
  (2,'DEB','','-DEBOURS- DOMICILIATION','','depot',1565,1565,0,1,'','','','',1565,1565,'0','DE007','2023-04-26','OUHANNA','OUHANNA','','',5000,5500,500,0,'','','',''),
  (1,'compt','','COMPTABILITE Decomarbre','','depot',12500,15000,0,1,'','','','',12500,15000,'20','DE008','2024-05-13','*****','******','*******','**********',34166.6667,41000,6833.3333,0,'','','',''),
  (2,'compt','','FARASS NEGOCE','','depot',6666.6667,8000,0,1,'','','','',6666.6667,8000,'20','DE008','2024-05-13','*****','******','*******','**********',34166.6667,41000,6833.3333,0,'','','',''),
  (3,'compt','','IKHWANE BUILDING','','depot',5000,6000,0,1,'','','','',5000,6000,'20','DE008','2024-05-13','*****','******','*******','**********',34166.6667,41000,6833.3333,0,'','','',''),
  (4,'compt','','BAIDA GLOBALE','','depot',5000,6000,0,1,'','','','',5000,6000,'20','DE008','2024-05-13','*****','******','*******','**********',34166.6667,41000,6833.3333,0,'','','',''),
  (5,'compt','','DUO BUILDING','','depot',5000,6000,0,1,'','','','',5000,6000,'20','DE008','2024-05-13','*****','******','*******','**********',34166.6667,41000,6833.3333,0,'','','','');

COMMIT;

#
# Data for the `m_a_facl` table  (LIMIT 0,500)
#

INSERT INTO `m_a_facl` (`a_facl_num`, `a_facl_cod`, `a_facl_ref`, `a_facl_lib`, `a_facl_nuse`, `a_facl_dep`, `a_facl_pri`, `a_facl_priT`, `a_facl_rem`, `a_facl_qua`, `a_facl_dd1`, `a_facl_dd2`, `a_facl_dd3`, `a_facl_dd4`, `a_facl_toht`, `a_facl_tott`, `a_facl_tva`, `a_facl_nupi`, `a_facl_dat`, `a_facl_daec`, `a_facl_cli`, `a_facl_lcli`, `a_facl_adr`, `a_facl_vil`, `a_facl_tohtg`, `a_facl_ttcg`, `a_facl_tvag`, `a_facl_remg`, `a_facl_ref1`, `a_facl_ref2`, `a_facl_ref3`, `a_facl_ref4`, `a_facl_cpt`) VALUES 
  (1,'CRE','','Creation de Societe a Responsabilité Limitée','','depot',3083.3333,3700,0,1,'','','','',3083.3333,3700,'20','FA001/2023','2023-03-07','2023-03-07','tareka','Tarek abbess','','',3083.3333,3700,616.6667,0,'CONSTITUTION','','','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',4000,4800,0,1,'','','','',4000,4800,'20','FA010/2023','2023-04-20','2023-04-20','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,4800,800,0,'1er trimestre 2023','ch 110672','2023','payée',False),
  (1,'BILAN','','BILAN ANNUEL','','depot',2500,3000,0,1,'','','','',2500,3000,'20','FA011/2023','2023-04-20','2023-04-20','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',2500,3000,500,0,'BILAN 2022','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA012/2023','2023-04-20',NULL,'INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,3600,600,0,'1ER TRIMESTRE 2023','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2400,2880,0,1,'','','','',2400,2880,'20','FA013/2023','2023-04-20','2023-04-20','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',2400,2880,480,0,'1er trimestre 2023','','2023','payée',False),
  (1,'compt','','TENUE DE LA COMPTABILITE','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA009/2023','2023-04-20','2023-04-20','proftr','Profil des travaux.construction','12 RUE SABRI BOUJEMAA\r\nCASABLANCA','ICE: **000224796000089**',3000,3600,600,0,'1ER TRIMESTRE 2023','','2023','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',5000,6000,0,1,'','','','',5000,6000,'20','FA018/2023','2023-04-28','2023-04-28','SANA','SANA CHRAIBI','48 LOT ESSALAMA SIDI MAAROUF CASABLANCA','ICE: 000507259000019',5000,6000,1000,0,'2022','CH 1939725','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2208.3333,2650,0,1,'','','','',2208.3333,2650,'20','FA002/2023','2023-03-08',NULL,'posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',2208.3333,2650,441.6667,0,'1ER TRIMESTRE 2023','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',1500,1800,0,1,'','','','',1500,1800,'20','FA006/2023','2023-03-31','2023-10-23','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',1500,1800,300,0,'1ER TRIMESTRE 2023','','','payée',False),
  (1,'compt','','TENUE DE LA COMPTABILITE 2021','','depot',3333.3333,4000,0,1,'','','','',3333.3333,4000,'20','FA007/2023','2023-03-31',NULL,'ingenierisk','INGENIERISK   Sarlau','12 RUE SABRI BOUJEMAA ETG 1 APPT 6\t                  \r\nCasablanca','ICE : 000208441000033',6666.6666,8000,1333.3334,0,'HONORAIRE 2021 ET 2022','','','',False),
  (2,'compt','','TENUE DE LA COMPTABILITE 2022','','depot',3333.3333,4000,0,1,'','','','',3333.3333,4000,'20','FA007/2023','2023-03-31',NULL,'ingenierisk','INGENIERISK   Sarlau','12 RUE SABRI BOUJEMAA ETG 1 APPT 6\t                  \r\nCasablanca','ICE : 000208441000033',6666.6666,8000,1333.3334,0,'HONORAIRE 2021 ET 2022','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2000,2400,0,1,'','','','',2000,2400,'20','FA008/2023','2023-03-31','2023-10-23','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',2000,2400,400,0,'1ER TRIMESTRE 2023','','','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',5416.6667,6500,0,1,'','','','',5416.6667,6500,'20','FA014/2023','2023-04-21',NULL,'EXCESS TRANS','EXCESS TRANSPORT    SARL','10 Rue Chrarda Rdc Bourgogne. - Casablanca','ICE : 002552387000074',5416.6667,6500,1083.3333,0,'2023','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',1500,1800,0,1,'','','','',1500,1800,'20','FA020/2023','2023-06-30','2023-10-23','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',1500,1800,300,0,'2eme trimestre 2023','','','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2208.3333,2650,0,1,'','','','',2208.3333,2650,'20','FA003/2023','2023-03-20','2023-10-23','posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',2208.3333,2650,441.6667,0,'2eme trimestre 2023','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2000,2400,0,1,'','','','',2000,2400,'20','FA021/2023','2023-06-30','2023-10-23','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',2000,2400,400,0,'2eme trimestre 2023','','','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 2023\r\n','','depot',5000,6000,0,1,'','','','',5000,6000,'20','FA004/2023','2023-03-21','2023-10-23','CHRAIBI','CHRAIBI SANA Pharmacie El Abe','Sidi Maârouf - Casablanca','ICE : 000507259000019',5000,6000,1000,0,'2023','','','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',4000,4800,0,1,'','','','',4000,4800,'20','FA022/2023','2023-06-30',NULL,'PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,4800,800,0,'2eme trimestre 2023','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',4166.6667,5000,0,1,'','','','',4166.6667,5000,'20','FA023/2023','2023-07-31',NULL,'JABBAR','JABBAR ELMOSTAFA (Docteur)','298 Bd Mohamed V 3ème Etage CASABLANCA','ICE : 001945957000084',4166.6667,5000,833.3333,0,'2023','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2400,2880,0,1,'','','','',2400,2880,'20','FA024/2023','2023-07-31','2023-10-25','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',2400,2880,480,0,'2eme trimestre 2023','','2023','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA019/2023','2023-06-30',NULL,'INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,3600,600,0,'2eme trimestre 2023','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',1500,1800,0,1,'','','','',1500,1800,'20','FA025/2023','2023-07-31','2023-10-25','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',1500,1800,300,0,'3eme trimestre 2023','','2023','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2000,2400,0,1,'','','','',2000,2400,'20','FA026/2023','2023-09-30','2023-10-25','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',2000,2400,400,0,'3eme trimestre 2023','','2023','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2208.3333,2650,0,1,'','','','',2208.3333,2650,'20','FA027/2023','2023-09-30',NULL,'posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',2208.3333,2650,441.6667,0,'3eme trimestre 2023','','2023','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2400,2880,0,1,'','','','',2400,2880,'20','FA028/2023','2023-09-30','2023-10-25','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',2400,2880,480,0,'3eme trimestre 2023','','2023','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA029/2023','2023-09-30',NULL,'INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,3600,600,0,'3eme trimestre 2023','','2023','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',4000,4800,0,1,'','','','',4000,4800,'20','FA030/2023','2023-09-30','2023-10-25','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,4800,800,0,'3eme trimestre 2023','','2023','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',1000,1200,0,1,'','','','',1000,1200,'20','FA005/2023','2023-10-25',NULL,'KARAMI','KARAMI BRAHIM','9 RUE DUHAUMME CASABLANCA','ICE: 000809682000058',1000,1200,200,0,'1ER TRIMESTRE 2023','','2023','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',1000,1200,0,1,'','','','',1000,1200,'20','FA031/2023','2023-09-30',NULL,'KARAMI','KARAMI BRAHIM','9 RUE DUHAUMME CASABLANCA','ICE: 000809682000058',1000,1200,200,0,'3eme trimestre 2023','','2023','',False),
  (1,'PVAF','','PV D''AFFECTATION DE RESULTAT +BILAN','','depot',200,240,0,1,'','','','',200,240,'20','FA016/2023','2023-02-24','2023-10-25','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',460,500,40,0,'PV D''Affectation','','2023','payée',False),
  (2,'DEB','','-DEBOURS- frais de depot','','depot',260,260,0,1,'','','','',260,260,'0','FA016/2023','2023-02-24','2023-10-25','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',460,500,40,0,'PV D''Affectation','','2023','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 2eme trimestre 2023\r\n','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA017/2023','2023-10-25','2023-10-25','proftr','Profil des travaux.construction','12 RUE SABRI BOUJEMAA\r\nCASABLANCA','ICE: **000224796000089**',6000,7200,1200,0,'2 et 3 trimestre 2023','','2023','',False),
  (2,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\n3eme trimestre 2023','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA017/2023','2023-10-25','2023-10-25','proftr','Profil des travaux.construction','12 RUE SABRI BOUJEMAA\r\nCASABLANCA','ICE: **000224796000089**',6000,7200,1200,0,'2 et 3 trimestre 2023','','2023','',False),
  (1,'PVAF','','PV D''AFFECTATION DE RESULTAT +BILAN','','depot',200,240,0,1,'','','','',200,240,'20','FA032/2023','2023-10-30','2023-10-30','candy','Candy boys','','',460,500,40,0,'PV D''Affectation','','2023','',False),
  (2,'DEB','','-DEBOURS- frais de depot','','depot',260,260,0,1,'','','','',260,260,'0','FA032/2023','2023-10-30','2023-10-30','candy','Candy boys','','',460,500,40,0,'PV D''Affectation','','2023','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',1000,1200,0,1,'','','','',1000,1200,'20','FA015/2023','2023-04-21',NULL,'KARAMI','KARAMI BRAHIM','9 RUE DUHAUMME CASABLANCA','ICE: 000809682000058',1000,1200,200,0,'2eme trimestre 2023','','2023','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',3750,4500,0,1,'','','','',3750,4500,'20','FA033/2023','2023-12-01',NULL,'PHYTOGLOW','PHYTOGLOW','117 RUE IBNOU MOUNIR RESIDENCE AZZARKA 1ER ETAGE N 2 MAARIF CO MS \r\nD''AFFAIRES , Casablanca','ICE: 003129523000064',3750,4500,750,0,'','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',1000,1200,0,1,'','','','',1000,1200,'20','FA034/2023','2023-12-01','2024-01-26','KARAMI','KARAMI BRAHIM','9 RUE DUHAUMME CASABLANCA','ICE: 000809682000058',1000,1200,200,0,'4eme trimestre 2023','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',4000,4800,0,1,'','','','',4000,4800,'20','FA035/2023','2023-12-31','2024-03-11','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,4800,800,0,'4eme trimestre 2023','','','',False),
  (1,'BILAN','','BILAN ANNUEL','','depot',2500,3000,0,1,'','','','',2500,3000,'20','FA001/2024','2024-01-15','2024-03-11','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',2500,3000,500,0,'BILAN 2023','','','',False),
  (1,'S1','','Modification des Pouvoirs de la Gérance de la Societe','','depot',2083.3333,2500,0,1,'','','','',2083.3333,2500,'20','FA002/2024','2024-01-16',NULL,'PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',3083.3333,3500,416.6667,0,'Gérance','','','',False),
  (2,'DEB','','-DEBOURS-  Enregistrement et Timbres','','depot',500,500,0,1,'','','','',500,500,'0','FA002/2024','2024-01-16',NULL,'PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',3083.3333,3500,416.6667,0,'Gérance','','','',False),
  (3,'DEB','','-DEBOURS- Modification du Registre de commerce','','depot',300,300,0,1,'','','','',300,300,'0','FA002/2024','2024-01-16',NULL,'PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',3083.3333,3500,416.6667,0,'Gérance','','','',False),
  (4,'DEB','','-DEBOURS- Annonces','','depot',200,200,0,1,'','','','',200,200,'0','FA002/2024','2024-01-16',NULL,'PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',3083.3333,3500,416.6667,0,'Gérance','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2400,2880,0,1,'','','','',2400,2880,'20','FA003/2024','2024-01-20','2024-04-17','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',2400,2880,480,0,'4eme trimestre 2023','','2023','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2400,2880,0,1,'','','','',2400,2880,'20','FA004/2024','2024-01-24','2024-04-17','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',2400,2880,480,0,'1ER TRIMESTRE 2024','','2024','payée',False),
  (1,'BILAN','','BILAN ANNUEL','','depot',1250,1500,0,1,'','','','',1250,1500,'20','FA005/2024','2024-01-24','2024-04-17','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',1250,1500,250,0,'BILAN 2023','','2023','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA006/2024','2024-01-24',NULL,'INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,3600,600,0,'4eme trimestre 2023','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',4000,4800,0,1,'','','','',4000,4800,'20','FA007/2024','2024-01-25',NULL,'INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',4000,4800,800,0,'BILAN 2023','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2208.3333,2650,0,1,'','','','',2208.3333,2650,'20','FA008/2024','2024-01-25','2024-04-17','posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',2208.3333,2650,441.6667,0,'4eme trimestre 2023','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA009/2024','2024-01-25',NULL,'INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,3600,600,0,'1ER TRIMESTRE 2024','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',1500,1800,0,1,'','','','',1500,1800,'20','FA010/2024','2024-04-23',NULL,'cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',1500,1800,300,0,'4eme trimestre 2023','','2023','non payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',2000,2400,0,1,'','','','',2000,2400,'20','FA012/2024','2024-05-31','2024-06-11','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',2000,2400,400,0,'4eme trimestre 2023','','','non payée',False),
  (1,'BILAN','','BILAN ANNUEL 2023','','depot',2000,2400,0,1,'','','','',2000,2400,'20','FA013/2024','2024-05-31','2024-06-11','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',2000,2400,400,0,'BILAN 2023','','','non payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\n 1er Trimestre 2023','','depot',2000,2400,0,1,'','','','',2000,2400,'20','FA014/2024','2024-05-31','2024-06-11','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',4000,4800,800,0,'1er et 2eme 2024','','','non payée',False),
  (2,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\n 2eme Trimestre 2024','','depot',2000,2400,0,1,'','','','',2000,2400,'20','FA014/2024','2024-05-31','2024-06-11','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',4000,4800,800,0,'1er et 2eme 2024','','','non payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA015/2024','2024-06-01','2024-06-11','INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,3600,600,0,'2eme trimestre 2024','','','non payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',1500,1800,0,2,'','','','',3000,3600,'20','FA016/2024','2024-06-11','2024-06-11','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',3000,3600,600,0,'1er et 2eme 2024','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',4000,4800,0,1,'','','','',4000,4800,'20','FA017/2024','2024-06-11','2024-06-11','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,4800,800,0,'1ER TRIMESTRE 2024','','','non payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',4000,4800,0,1,'','','','',4000,4800,'20','FA018/2024','2024-06-11','2024-06-11','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,4800,800,0,'2eme trimestre 2024','','','non payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\n4 EME 2022+ 2023','','depot',2208.3333,2650,0,5,'','','','',11041.6667,13250,'20','FA019/2024','2024-06-11','2024-06-27','posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',15458.3334,18550,3091.6666,0,'1er et 2eme 2024','','','',False),
  (1,'S1','','Mission d''accompagnement dossier administratif','','depot',100000,120000,0,1,'','','','',100000,120000,'20','FA030/2024','2024-07-02',NULL,'SCBG','STE CENTRALE DES BOISSONS GAZEUSES','LOTISSEMENT LA COLLINE 2 LOT 12 SIDI MAAROUF CASABLANCA','ICE: 001530596000079',100000,120000,20000,0,'','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',-2187.5,-2625,0,5,'','','','',-10937.5,-13125,'20','AV001/2024','2024-07-09',NULL,'posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',-10937.5,-13125,-2187.5,0,'AVOIR POUR REMPLACEMENT','','','',False),
  (2,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\n1+2EME 2024','','depot',2208.3333,2650,0,2,'','','','',4416.6667,5300,'20','FA019/2024','2024-06-11',NULL,'posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',15458.3334,18550,3091.6666,0,'2022+2023+2024','','','',False),
  (1,'CRE','','Creation de Societe a Responsabilité Limitée','','depot',2083.3333,2500,0,1,'','','','',2083.3333,2500,'20','FA020/2024','2024-06-15',NULL,'ATELIER','ATELIERS 369','117 RUE IBNOU MOUNIR RESIDENCE AZZARKA 1ER ETAGE N2 MAARIF  CASABLANCA','ICE : 003477587000084',4083.3333,4500,416.6667,0,'','','','',False),
  (2,'DEB','','-DEBOURS- Enregistrement + timbre + rc + Annonce + autre','','depot',2000,2000,0,1,'','','','',2000,2000,'0','FA020/2024','2024-06-15',NULL,'ATELIER','ATELIERS 369','117 RUE IBNOU MOUNIR RESIDENCE AZZARKA 1ER ETAGE N2 MAARIF  CASABLANCA','ICE : 003477587000084',4083.3333,4500,416.6667,0,'','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA031/2024','2024-10-05',NULL,'INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,3600,600,0,'3eme trimestre 2024','','','',False),
  (2,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\n 3eme Trimestre 2024','','depot',2000,2400,0,1,'','','','',2000,2400,'20','FA032/2024','2024-10-05','2024-10-05','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',2000,2400,400,0,'3eme trimestre 2024','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',4000,4800,0,1,'','','','',4000,4800,'20','FA033/2024','2024-10-05','2024-10-05','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,4800,800,0,'3eme trimestre 2024','','','',False),
  (2,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\n3eme trimestre 2024','','depot',2208.3333,2650,0,1,'','','','',2208.3333,2650,'20','FA034/2024','2024-10-05',NULL,'posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',2208.3333,2650,441.6667,0,'3eme trimestre 2024','','','',False),
  (2,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\n 2024','','depot',1800,2160,0,4,'','','','',7200,8640,'20','FA035/2024','2024-10-05',NULL,'jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',7200,8640,1440,0,'2024','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',1500,1800,0,2,'','','','',3000,3600,'20','FA036/2024','2024-10-05','2024-10-05','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',3000,3600,600,0,'3EME ET 4EME TRIMESTRE 2024','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',1250,1500,0,1,'','','','',1250,1500,'20','FA037/2024','2024-10-05',NULL,'ATELIER','ATELIERS 369','117 RUE IBNOU MOUNIR RESIDENCE AZZARKA 1ER ETAGE N2 MAARIF  CASABLANCA','ICE : 003477587000084',1250,1500,250,0,'3eme trimestre 2024','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 4EME TRIMESTRE 2023','','depot',1250,1500,0,1,'','','','',1250,1500,'20','FA038/2024','2024-10-05',NULL,'AKKAR','AKKAR LIVING','117 RUE IBNOU MOUNIR \r\nRESIDENCE AZZARKAA 1ER ETAGE APRT 2\r\nCASABLANCA','ICE: 003239870000050',2250,2700,450,0,'','','','',False),
  (2,'BILAN','','BILAN ANNUEL + ETAT 9421','','depot',1000,1200,0,1,'','','','',1000,1200,'20','FA038/2024','2024-10-05',NULL,'AKKAR','AKKAR LIVING','117 RUE IBNOU MOUNIR \r\nRESIDENCE AZZARKAA 1ER ETAGE APRT 2\r\nCASABLANCA','ICE: 003239870000050',2250,2700,450,0,'','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE  1ER + 2EME + 3EME TRIMESTRE 2024\r\n','','depot',1250,1500,0,3,'','','','',3750,4500,'20','FA039/2024','2024-10-05','2024-10-05','AKKAR','AKKAR LIVING','117 RUE IBNOU MOUNIR \r\nRESIDENCE AZZARKAA 1ER ETAGE APRT 2\r\nCASABLANCA','ICE: 003239870000050',3750,4500,750,0,'1er et 2eme ET 3eme tri 2024','','','',False),
  (1,'CRE','','Creation de Societe a Responsabilité Limitée','','depot',4583.3333,5500,0,1,'','','','',4583.3333,5500,'20','FA040/2024','2024-10-05',NULL,'ARIJ','ARIJ MEDIOUNA','11 LOTISSEMENT FATIMA ZAHRA \r\nMAGASIN RDC MEDIOUNA CASABLANCA \r\n','ICE: 002612399000038',4583.3333,5500,916.6667,0,'','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 2023','','depot',5000,6000,0,1,'','','','',5000,6000,'20','FA041/2024','2024-10-05','2024-10-05','ARIJ','ARIJ MEDIOUNA','11 LOTISSEMENT FATIMA ZAHRA \r\nMAGASIN RDC MEDIOUNA CASABLANCA \r\n','ICE: 002612399000038',10000,12000,2000,0,'2023 ET 2024','','','',False),
  (2,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 2024','','depot',5000,6000,0,1,'','','','',5000,6000,'20','FA041/2024','2024-10-05','2024-10-05','ARIJ','ARIJ MEDIOUNA','11 LOTISSEMENT FATIMA ZAHRA \r\nMAGASIN RDC MEDIOUNA CASABLANCA \r\n','ICE: 002612399000038',10000,12000,2000,0,'2023 ET 2024','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE','','depot',2500,3000,0,1,'','','','',2500,3000,'20','FA042/2024','2024-10-05',NULL,'BAHA','BAHA COULEURS','117 RUE IBNOU MOUNIR RESIDENCE AZZARKA\r\n1ER ETAGE N 2 MAARIF CASABLANCA','ICE : 003254593000035',2500,3000,500,0,'','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 4EME 2024 + BILAN 2024','','depot',2083.3333,2500,0,1,'','','','',2083.3333,2500,'20','FA043/2024','2024-10-05',NULL,'BALISTA','BALISTA IMMO','117 RUE IBNOU MOUNIR 1ER ETAGE APPRT 2\r\nCASABLANCA','ICE: 003504027000027',2083.3333,2500,416.6667,0,'','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 2023','','depot',3750,4500,0,1,'','','','',3750,4500,'20','FA044/2024','2024-10-05','2024-10-05','BOUL','BOULANGERIE PAIN DE PREMIERE','ERRAHMA 2 LOT 3 IMM A-M 40 RES ABRAR 1 RTE MY THAMI DAR BOUAZZA NOUACEUR , Casablanca','ICE: 003134506000062',7500,9000,1500,0,'2023 ET 2024','','','',False),
  (2,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 2024','','depot',3750,4500,0,1,'','','','',3750,4500,'20','FA044/2024','2024-10-05','2024-10-05','BOUL','BOULANGERIE PAIN DE PREMIERE','ERRAHMA 2 LOT 3 IMM A-M 40 RES ABRAR 1 RTE MY THAMI DAR BOUAZZA NOUACEUR , Casablanca','ICE: 003134506000062',7500,9000,1500,0,'2023 ET 2024','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 2023\r\n','','depot',5000,6000,0,1,'','','','',5000,6000,'20','FA045/2024','2024-10-05',NULL,'ingenierisk','INGENIERISK   Sarlau','12 RUE SABRI BOUJEMAA ETG 1 APPT 6\t                  \r\nCasablanca','ICE : 000208441000033',10000,12000,2000,0,'2023 ET 2024','','','',False),
  (2,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 2024','','depot',5000,6000,0,1,'','','','',5000,6000,'20','FA045/2024','2024-10-05',NULL,'ingenierisk','INGENIERISK   Sarlau','12 RUE SABRI BOUJEMAA ETG 1 APPT 6\t                  \r\nCasablanca','ICE : 000208441000033',10000,12000,2000,0,'2023 ET 2024','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\n','','depot',4166.6667,5000,0,1,'','','','',4166.6667,5000,'20','FA046/2024','2024-10-06','2024-10-06','home','HOME GALAXY   SARL','CASABLANCA\r\n','ICE : 000080409000011',4166.6667,5000,833.3333,0,'2024','cheque le 15/11/2024','','payée',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 4eme trimestre 2023\r\n','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA047/2024','2024-10-06',NULL,'proftr','Profil des travaux.construction','12 RUE SABRI BOUJEMAA\r\nCASABLANCA','ICE: **000224796000089**',15000,18000,3000,0,'','','','',False),
  (2,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\n1er     trimestre 2024','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA047/2024','2024-10-06',NULL,'proftr','Profil des travaux.construction','12 RUE SABRI BOUJEMAA\r\nCASABLANCA','ICE: **000224796000089**',15000,18000,3000,0,'','','','',False),
  (3,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 2eme trimestre 2024\r\n','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA047/2024','2024-10-06',NULL,'proftr','Profil des travaux.construction','12 RUE SABRI BOUJEMAA\r\nCASABLANCA','ICE: **000224796000089**',15000,18000,3000,0,'','','','',False),
  (4,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 3eme trimestre 2024\r\n','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA047/2024','2024-10-06',NULL,'proftr','Profil des travaux.construction','12 RUE SABRI BOUJEMAA\r\nCASABLANCA','ICE: **000224796000089**',15000,18000,3000,0,'','','','',False),
  (5,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE 3eme trimestre 2024\r\n','','depot',3000,3600,0,1,'','','','',3000,3600,'20','FA047/2024','2024-10-06',NULL,'proftr','Profil des travaux.construction','12 RUE SABRI BOUJEMAA\r\nCASABLANCA','ICE: **000224796000089**',15000,18000,3000,0,'','','','',False),
  (1,'compt','','Assistance comptable et fiscale au titre de l’exercice 2023/2024','','depot',70000,84000,0,1,'','','','',70000,84000,'20','FA029/2024','2024-07-01','2024-10-09','IBPARTNERS','IB PARTNERS','13, bd de la Corniche (Bourgogne) 20050 Casablanca - Maroc','ICE:002585458000042',70000,84000,14000,0,'','ch 2100145','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',60000,72000,0,1,'','','','',60000,72000,'20','FA027/2024','2024-07-01',NULL,'CIA','CIAO CONSULTING','12, Rue Sabri Boujemâa, Etage 1, Appt. 6 - Casablanca','ICE:000167911000086',60000,72000,12000,0,'','','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',19600,23520,0,1,'','','','',19600,23520,'20','FA028/2024','2024-07-01',NULL,'CIA','CIAO CONSULTING','12, Rue Sabri Boujemâa, Etage 1, Appt. 6 - Casablanca','ICE:000167911000086',19600,23520,3920,0,'','CH_1800029 du 25/09/2024','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',10000,12000,0,1,'','','','',10000,12000,'20','FA048/2024','2024-10-06',NULL,'CIA','CIAO CONSULTING','12, Rue Sabri Boujemâa, Etage 1, Appt. 6 - Casablanca','ICE:000167911000086',10000,12000,2000,0,'','CH_1800032  du 10/10/2024','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',20000,24000,0,1,'','','','',20000,24000,'20','FA011/2024','2024-05-31',NULL,'CIA','CIAO CONSULTING','12, Rue Sabri Boujemâa, Etage 1, Appt. 6 - Casablanca','ICE:000167911000086',20000,24000,4000,0,'','CH 1800038','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',11700,14040,0,1,'','','','',11700,14040,'20','FA049/2024','2024-10-15',NULL,'AFRPS','Afric plomb services','202 Bd Abdlmoumen, N° 5 Rdc - Casablanca\r\nRC:324259','ICE:000104003000069',11700,14040,2340,0,'','CH 3143935','','',False),
  (1,'compt','','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','','depot',9600,11520,0,1,'','','','',9600,11520,'20','FA050/2024','2024-11-01',NULL,'CIA','CIAO CONSULTING','12, Rue Sabri Boujemâa, Etage 1, Appt. 6 - Casablanca','ICE:000167911000086',9600,11520,1920,0,'','','','',False);

COMMIT;

#
# Data for the `m_decl` table  (LIMIT 0,500)
#

INSERT INTO `m_decl` (`decl_nupi`, `decl_dat`, `decl_cli`, `decl_lcli`, `decl_adr`, `decl_vil`, `decl_toht`, `decl_tva`, `decl_ttc`, `decl_rem`, `decl_ref1`, `decl_ref2`, `decl_ref3`, `decl_ref4`) VALUES 
  ('DE000103','2021-12-24','*****','******','*******','**********',16000,3200,19200,0,'','','',''),
  ('DE000104','2022-03-19','CLIENT058','WACHAM IMMOBILIER','635, RUE GOULMIMA','Casablanca',4166.67,833.334,5000.004,0,'','','',''),
  ('DE007','2023-04-26','OUHANNA','OUHANNA','','',5000,500,5500,0,'','','',''),
  ('DE008','2024-05-13','*****','******','*******','**********',34166.6667,6833.3333,41000,0,'','','','');

COMMIT;

#
# Data for the `m_facl` table  (LIMIT 0,500)
#

INSERT INTO `m_facl` (`facl_nupi`, `facl_dat`, `facl_cli`, `facl_lcli`, `facl_adr`, `facl_vil`, `facl_toht`, `facl_tva`, `facl_ttc`, `facl_rem`, `facl_ref1`, `facl_ref2`, `facl_ref3`, `facl_ref4`, `facl_daec`, `facl_cpt`) VALUES 
  ('AV001/2024','2024-07-09','posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',-10937.5,-2187.5,-13125,0,'AVOIR POUR REMPLACEMENT','','','','2024-07-09',False),
  ('FA001/2023','2023-03-07','tareka','Tarek abbess','','',3083.3333,616.6667,3700,0,'CONSTITUTION','','','payée','2023-03-07',False),
  ('FA001/2024','2024-01-15','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',2500,500,3000,0,'BILAN 2023','','','','2024-03-11',False),
  ('FA002/2023','2023-03-08','posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',2208.3333,441.6667,2650,0,'1ER TRIMESTRE 2023','','','','2023-10-23',False),
  ('FA002/2024','2024-01-16','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',3083.3333,416.6667,3500,0,'Gérance','','','','2024-03-11',False),
  ('FA003/2023','2023-03-20','posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',2208.3333,441.6667,2650,0,'2eme trimestre 2023','','','','2023-10-23',False),
  ('FA003/2024','2024-01-20','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',2400,480,2880,0,'4eme trimestre 2023','','2023','payée','2024-04-17',False),
  ('FA004/2023','2023-03-21','CHRAIBI','CHRAIBI SANA Pharmacie El Abe','Sidi Maârouf - Casablanca','ICE : 000507259000019',5000,1000,6000,0,'2023','','','payée','2023-10-23',False),
  ('FA004/2024','2024-01-24','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',2400,480,2880,0,'1ER TRIMESTRE 2024','','2024','payée','2024-04-17',False),
  ('FA005/2023','2023-10-25','KARAMI','KARAMI BRAHIM','9 RUE DUHAUMME CASABLANCA','ICE: 000809682000058',1000,200,1200,0,'1ER TRIMESTRE 2023','','2023','','2023-10-25',False),
  ('FA005/2024','2024-01-24','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',1250,250,1500,0,'BILAN 2023','','2023','payée','2024-04-17',False),
  ('FA006/2023','2023-03-31','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',1500,300,1800,0,'1ER TRIMESTRE 2023','','','payée','2023-10-23',False),
  ('FA006/2024','2024-01-24','INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,600,3600,0,'4eme trimestre 2023','','','','2024-04-17',False),
  ('FA007/2023','2023-03-31','ingenierisk','INGENIERISK   Sarlau','12 RUE SABRI BOUJEMAA ETG 1 APPT 6\t                  \r\nCasablanca','ICE : 000208441000033',6666.6666,1333.3334,8000,0,'HONORAIRE 2021 ET 2022','','','','2023-10-23',False),
  ('FA007/2024','2024-01-25','INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',4000,800,4800,0,'BILAN 2023','','','','2024-04-17',False),
  ('FA008/2023','2023-03-31','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',2000,400,2400,0,'1ER TRIMESTRE 2023','','','payée','2023-10-23',False),
  ('FA008/2024','2024-01-25','posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',2208.3333,441.6667,2650,0,'4eme trimestre 2023','','','','2024-04-17',False),
  ('FA009/2023','2023-04-20','proftr','Profil des travaux.construction','12 RUE SABRI BOUJEMAA\r\nCASABLANCA','ICE: **000224796000089**',3000,600,3600,0,'1ER TRIMESTRE 2023','','2023','','2023-04-20',False),
  ('FA009/2024','2024-01-25','INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,600,3600,0,'1ER TRIMESTRE 2024','','','','2024-04-18',False),
  ('FA010/2023','2023-04-20','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,800,4800,0,'1er trimestre 2023','ch 110672','2023','payée','2023-04-20',False),
  ('FA010/2024','2024-04-23','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',1500,300,1800,0,'4eme trimestre 2023','','2023','non payée','2024-04-23',False),
  ('FA011/2023','2023-04-20','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',2500,500,3000,0,'BILAN 2022','','','','2023-04-20',False),
  ('FA011/2024','2024-05-31','CIA','CIAO CONSULTING','12, Rue Sabri Boujemâa, Etage 1, Appt. 6 - Casablanca','ICE:000167911000086',20000,4000,24000,0,'','CH 1800038','','','2024-10-31',False),
  ('FA012/2023','2023-04-20','INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,600,3600,0,'1ER TRIMESTRE 2023','','','','2023-04-20',False),
  ('FA012/2024','2024-05-31','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',2000,400,2400,0,'4eme trimestre 2023','','','non payée','2024-06-11',False),
  ('FA013/2023','2023-04-20','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',2400,480,2880,0,'1er trimestre 2023','','2023','payée','2023-04-20',False),
  ('FA013/2024','2024-05-31','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',2000,400,2400,0,'BILAN 2023','','','non payée','2024-06-11',False),
  ('FA014/2023','2023-04-21','EXCESS TRANS','EXCESS TRANSPORT    SARL','10 Rue Chrarda Rdc Bourgogne. - Casablanca','ICE : 002552387000074',5416.6667,1083.3333,6500,0,'2023','','','','2023-10-23',False),
  ('FA014/2024','2024-05-31','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',4000,800,4800,0,'1er et 2eme 2024','','','non payée','2024-06-11',False),
  ('FA015/2023','2023-04-21','KARAMI','KARAMI BRAHIM','9 RUE DUHAUMME CASABLANCA','ICE: 000809682000058',1000,200,1200,0,'2eme trimestre 2023','','2023','','2023-10-25',False),
  ('FA015/2024','2024-06-01','INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,600,3600,0,'2eme trimestre 2024','','','non payée','2024-06-11',False),
  ('FA016/2023','2023-02-24','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',460,40,500,0,'PV D''Affectation','','2023','payée','2023-10-25',False),
  ('FA016/2024','2024-06-11','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',3000,600,3600,0,'1er et 2eme 2024','','','','2024-06-11',False),
  ('FA017/2023','2023-10-25','proftr','Profil des travaux.construction','12 RUE SABRI BOUJEMAA\r\nCASABLANCA','ICE: **000224796000089**',6000,1200,7200,0,'2 et 3 trimestre 2023','','2023','','2023-10-25',False),
  ('FA017/2024','2024-06-11','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,800,4800,0,'1ER TRIMESTRE 2024','','','non payée','2024-06-11',False),
  ('FA018/2023','2023-04-28','SANA','SANA CHRAIBI','48 LOT ESSALAMA SIDI MAAROUF CASABLANCA','ICE: 000507259000019',5000,1000,6000,0,'2022','CH 1939725','','','2023-04-28',False),
  ('FA018/2024','2024-06-11','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,800,4800,0,'2eme trimestre 2024','','','non payée','2024-06-11',False),
  ('FA019/2023','2023-06-30','INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,600,3600,0,'2eme trimestre 2023','','','','2023-10-25',False),
  ('FA019/2024','2024-06-11','posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',15458.3334,3091.6666,18550,0,'1er et 2eme 2024','','','','2024-06-27',False),
  ('FA020/2023','2023-06-30','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',1500,300,1800,0,'2eme trimestre 2023','','','payée','2023-10-23',False),
  ('FA020/2024','2024-06-15','ATELIER','ATELIERS 369','117 RUE IBNOU MOUNIR RESIDENCE AZZARKA 1ER ETAGE N2 MAARIF  CASABLANCA','ICE : 003477587000084',4083.3333,416.6667,4500,0,'','','','','2024-07-09',False),
  ('FA021/2023','2023-06-30','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',2000,400,2400,0,'2eme trimestre 2023','','','payée','2023-10-23',False),
  ('FA022/2023','2023-06-30','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,800,4800,0,'2eme trimestre 2023','','','','2023-10-23',False),
  ('FA023/2023','2023-07-31','JABBAR','JABBAR ELMOSTAFA (Docteur)','298 Bd Mohamed V 3ème Etage CASABLANCA','ICE : 001945957000084',4166.6667,833.3333,5000,0,'','','','','2023-10-25',False),
  ('FA024/2023','2023-07-31','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',2400,480,2880,0,'2eme trimestre 2023','','2023','payée','2023-10-25',False),
  ('FA025/2023','2023-07-31','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',1500,300,1800,0,'3eme trimestre 2023','','2023','payée','2023-10-25',False),
  ('FA026/2023','2023-09-30','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',2000,400,2400,0,'3eme trimestre 2023','','2023','payée','2023-10-25',False),
  ('FA027/2023','2023-09-30','posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',2208.3333,441.6667,2650,0,'3eme trimestre 2023','','2023','','2023-10-25',False),
  ('FA027/2024','2024-07-01','CIA','CIAO CONSULTING','12, Rue Sabri Boujemâa, Etage 1, Appt. 6 - Casablanca','ICE:000167911000086',60000,12000,72000,0,'','','','','2024-10-28',False),
  ('FA028/2023','2023-09-30','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',2400,480,2880,0,'3eme trimestre 2023','','2023','payée','2023-10-25',False),
  ('FA028/2024','2024-07-01','CIA','CIAO CONSULTING','12, Rue Sabri Boujemâa, Etage 1, Appt. 6 - Casablanca','ICE:000167911000086',19600,3920,23520,0,'','CH_1800029 du 25/09/2024','','','2024-10-28',False),
  ('FA029/2023','2023-09-30','INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,600,3600,0,'3eme trimestre 2023','','2023','','2023-10-25',False),
  ('FA029/2024','2024-07-01','IBPARTNERS','IB PARTNERS','13, bd de la Corniche (Bourgogne) 20050 Casablanca - Maroc','ICE:002585458000042',70000,14000,84000,0,'','ch 2100145','','','2024-10-09',False),
  ('FA030/2023','2023-09-30','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,800,4800,0,'3eme trimestre 2023','','2023','','2023-10-25',False),
  ('FA030/2024','2024-07-02','SCBG','STE CENTRALE DES BOISSONS GAZEUSES','LOTISSEMENT LA COLLINE 2 LOT 12 SIDI MAAROUF CASABLANCA','ICE: 001530596000079',100000,20000,120000,0,'','','','','2024-07-02',False),
  ('FA031/2023','2023-09-30','KARAMI','KARAMI BRAHIM','9 RUE DUHAUMME CASABLANCA','ICE: 000809682000058',1000,200,1200,0,'3eme trimestre 2023','','2023','','2023-10-25',False),
  ('FA031/2024','2024-10-05','INNOWEBB','INNOWEBB','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',3000,600,3600,0,'3eme trimestre 2024','','','','2024-10-05',False),
  ('FA032/2023','2023-10-30','candy','Candy boys','','',460,40,500,0,'PV D''Affectation','','2023','','2023-10-30',False),
  ('FA032/2024','2024-10-05','univers','UNIVERS TONER   Sarl','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',2000,400,2400,0,'3eme trimestre 2024','','','','2024-10-05',False),
  ('FA033/2023','2023-12-01','PHYTOGLOW','PHYTOGLOW','117 RUE IBNOU MOUNIR RESIDENCE AZZARKA 1ER ETAGE N 2 MAARIF CO MS \r\nD''AFFAIRES , Casablanca','ICE: 003129523000064',3750,750,4500,0,'','','','','2024-01-26',False),
  ('FA033/2024','2024-10-05','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,800,4800,0,'3eme trimestre 2024','','','','2024-10-05',False),
  ('FA034/2023','2023-12-01','KARAMI','KARAMI BRAHIM','9 RUE DUHAUMME CASABLANCA','ICE: 000809682000058',1000,200,1200,0,'4eme trimestre 2023','','','','2024-01-26',False),
  ('FA034/2024','2024-10-05','posm','Posm factory','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',2208.3333,441.6667,2650,0,'3eme trimestre 2024','','','','2024-10-05',False),
  ('FA035/2023','2023-12-31','PEPINIER','PEPINIERE ZETOUNE','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',4000,800,4800,0,'4eme trimestre 2023','','','','2024-03-11',False),
  ('FA035/2024','2024-10-05','jad','Jad securt','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',7200,1440,8640,0,'2024','','','','2024-10-05',False),
  ('FA036/2024','2024-10-05','cottignies','Cottignies Créations  Sarl','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',3000,600,3600,0,'3EME ET 4EME TRIMESTRE 2024','','','','2024-10-05',False),
  ('FA037/2024','2024-10-05','ATELIER','ATELIERS 369','117 RUE IBNOU MOUNIR RESIDENCE AZZARKA 1ER ETAGE N2 MAARIF  CASABLANCA','ICE : 003477587000084',1250,250,1500,0,'3eme trimestre 2024','','','','2024-10-05',False),
  ('FA038/2024','2024-10-05','AKKAR','AKKAR LIVING','117 RUE IBNOU MOUNIR \r\nRESIDENCE AZZARKAA 1ER ETAGE APRT 2\r\nCASABLANCA','ICE: 003239870000050',2250,450,2700,0,'','','','','2024-10-05',False),
  ('FA039/2024','2024-10-05','AKKAR','AKKAR LIVING','117 RUE IBNOU MOUNIR \r\nRESIDENCE AZZARKAA 1ER ETAGE APRT 2\r\nCASABLANCA','ICE: 003239870000050',3750,750,4500,0,'1er et 2eme ET 3eme tri 2024','','','','2024-10-05',False),
  ('FA040/2024','2024-10-05','ARIJ','ARIJ MEDIOUNA','11 LOTISSEMENT FATIMA ZAHRA \r\nMAGASIN RDC MEDIOUNA CASABLANCA \r\n','ICE: 002612399000038',4583.3333,916.6667,5500,0,'','','','','2024-10-05',False),
  ('FA041/2024','2024-10-05','ARIJ','ARIJ MEDIOUNA','11 LOTISSEMENT FATIMA ZAHRA \r\nMAGASIN RDC MEDIOUNA CASABLANCA \r\n','ICE: 002612399000038',10000,2000,12000,0,'2023 ET 2024','','','','2024-10-05',False),
  ('FA042/2024','2024-10-05','BAHA','BAHA COULEURS','117 RUE IBNOU MOUNIR RESIDENCE AZZARKA\r\n1ER ETAGE N 2 MAARIF CASABLANCA','ICE : 003254593000035',2500,500,3000,0,'','','','','2024-10-05',False),
  ('FA043/2024','2024-10-05','BALISTA','BALISTA IMMO','117 RUE IBNOU MOUNIR 1ER ETAGE APPRT 2\r\nCASABLANCA','ICE: 003504027000027',2083.3333,416.6667,2500,0,'','','','','2024-10-05',False),
  ('FA044/2024','2024-10-05','BOUL','BOULANGERIE PAIN DE PREMIERE','ERRAHMA 2 LOT 3 IMM A-M 40 RES ABRAR 1 RTE MY THAMI DAR BOUAZZA NOUACEUR , Casablanca','ICE: 003134506000062',7500,1500,9000,0,'2023 ET 2024','','','','2024-10-05',False),
  ('FA045/2024','2024-10-05','ingenierisk','INGENIERISK   Sarlau','12 RUE SABRI BOUJEMAA ETG 1 APPT 6\t                  \r\nCasablanca','ICE : 000208441000033',10000,2000,12000,0,'2023 ET 2024','','','','2024-10-05',False),
  ('FA046/2024','2024-10-06','home','HOME GALAXY   SARL','CASABLANCA\r\n','ICE : 000080409000011',4166.6667,833.3333,5000,0,'2024','cheque le 15/11/2024','','payée','2024-10-06',False),
  ('FA047/2024','2024-10-06','proftr','Profil des travaux.construction','12 RUE SABRI BOUJEMAA\r\nCASABLANCA','ICE: **000224796000089**',15000,3000,18000,0,'','','','','2024-10-06',False),
  ('FA048/2024','2024-10-06','CIA','CIAO CONSULTING','12, Rue Sabri Boujemâa, Etage 1, Appt. 6 - Casablanca','ICE:000167911000086',10000,2000,12000,0,'','CH_1800032  du 10/10/2024','','','2024-10-28',False),
  ('FA049/2024','2024-10-15','AFRPS','Afric plomb services','202 Bd Abdlmoumen, N° 5 Rdc - Casablanca\r\nRC:324259','ICE:000104003000069',11700,2340,14040,0,'','CH 3143935','','','2024-10-31',False),
  ('FA050/2024','2024-11-01','CIA','CIAO CONSULTING','12, Rue Sabri Boujemâa, Etage 1, Appt. 6 - Casablanca','ICE:000167911000086',9600,1920,11520,0,'','','','','2024-11-14',False);

COMMIT;

#
# Data for the `m_nupe` table  (LIMIT 0,500)
#

INSERT INTO `m_nupe` (`nupe_cod`, `nupe_lib`) VALUES 
  ('DE009','decl'),
  ('AV001','avcl'),
  ('RE001','recl'),
  ('DE000000','defo'),
  ('FA000000','fafo'),
  ('AV000000','avfo'),
  ('RE000000','refo');

COMMIT;

#
# Data for the `m_pimo` table  (LIMIT 0,500)
#

INSERT INTO `m_pimo` (`pimo_cod`, `pimo_decl`, `pimo_facl`, `pimo_avcl`, `pimo_recl`, `pimo_defo`, `pimo_fafo`, `pimo_avfo`, `pimo_refo`) VALUES 
  (1,'D','F','A','R','D','F','A','R'),
  (2,'E','A','V','E','E','A','V','E'),
  (3,'3','3','3','3','3','3','3','3'),
  (4,NULL,'/',NULL,NULL,NULL,NULL,NULL,NULL),
  (5,NULL,'Année()',NULL,NULL,NULL,NULL,NULL,NULL),
  (6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

COMMIT;

#
# Data for the `m_pimo1` table  (LIMIT 0,500)
#

INSERT INTO `m_pimo1` (`pimo_pi`, `pimo_cod`, `pimo_lib`, `pimo_auto`, `pimo_ena`) VALUES 
  ('decl','10','DE',True,True),
  ('facl','55','FA',True,True),
  ('avcl','2','AV',True,True),
  ('recl','2','RE',True,True),
  ('defo','1','DE',True,True),
  ('fafo','1','FA',True,True),
  ('avfo','1','AV',True,True),
  ('refo','1','RE',True,True),
  ('sicl','1',NULL,False,False),
  ('sifo','1',NULL,False,False);

COMMIT;

#
# Data for the `m_recl` table  (LIMIT 0,500)
#

INSERT INTO `m_recl` (`recl_nupi`, `recl_dat`, `recl_daec`, `recl_cai`, `recl_lcai`, `recl_per`, `recl_lper`, `recl_more`, `recl_lmore`, `recl_lib`, `recl_cli`, `recl_lcli`, `recl_coge`, `recl_moreg`, `recl_cojo`, `recl_lcojo`, `recl_copa`, `recl_cpt`, `recl_sen`) VALUES 
  ('RE000023','2020-01-16','2020-01-16','','','','','02','espece','recu 1500 dh en especes','CLIENT020','EL MOKRI RHITA (SALADE VERTE)','',1500,'002','caisse','51610001',False,True);

COMMIT;

#
# Data for the `p_art` table  (LIMIT 0,500)
#

INSERT INTO `p_art` (`art_cod`, `art_lib`, `art_faar`, `art_lfaar`, `art_sofa`, `art_lsofa`, `art_mar`, `art_lmar`, `art_unme`, `art_lunme`, `art_prac`, `art_pracT`, `art_prve`, `art_prveT`, `art_tva`, `art_reac`, `art_reve`, `art_pam`, `art_blo`, `art_sto`, `art_stmi`, `art_stma`) VALUES 
  ('AVA','AVANCE','','','','','','','','',0,0,0,0,'0',0,0,0,False,True,0,0),
  ('BILAN','BILAN ANNUEL','','','','','','','','',0,0,0,0,'20',0,0,0,False,True,0,0),
  ('CNSS','TELEDECLARATION CNSS','','','','','','','','',0,0,0,0,'20',0,0,0,False,True,0,0),
  ('compt','ASSISTANCE A LA TENUE DE LA COMPTABILITE \r\nCONSEIL EN COMPTABILITE ET FISCALITE','COMP','COMPTABILITE','','','','','','',0,0,0,0,'20',0,0,0,False,True,0,0),
  ('CRE','Creation de Societe a Responsabilité Limitée','','','','','','','','',0,0,1500,1800,'20',0,0,0,False,True,0,0),
  ('DEB','-DEBOURS-','','','','','','','','',0,0,0,0,'0',0,0,0,False,True,0,0),
  ('DOM','DOMICILIATION JURIDIQUE','DO','DOMICILIATION','','','','','','',0,0,0,0,'20',0,0,0,False,True,0,0),
  ('ETAT','ETAT DES TRAITEMENT DES SALAIRE','','','','','','','','',0,0,0,0,'20',0,0,0,False,True,0,0),
  ('MAIN','Contrat de maintenance annuelle','','','','','','','','',0,0,2300,2760,'20',0,0,0,False,True,0,0),
  ('PAIE','TRATEMENT DE LA PAIE','','','','','','','','',0,0,0,0,'20',0,0,0,False,True,0,0),
  ('PVAF','PV D''AFFECTATION DE RESULTAT +BILAN','','','','','','','','',0,0,0,0,'20',0,0,0,False,True,0,0),
  ('S1','SERVICES','','','','','','','','',0,0,0,0,'20',0,0,0,False,True,0,0),
  ('S2','SERVICES 2','','','','','','','','',0,0,0,0,'20',0,0,0,False,True,0,0),
  ('S3','SERVICES 3','','','','','','','','',0,0,0,0,'20',0,0,0,False,True,0,0),
  ('TVA','TVA','','','','','','','','',0,0,0,0,'20',0,0,0,False,True,0,0);

COMMIT;

#
# Data for the `p_cli` table  (LIMIT 0,500)
#

INSERT INTO `p_cli` (`cli_cod`, `cli_raso`, `cli_fam`, `cli_lfam`, `cli_foju`, `cli_lfoju`, `cli_blo`, `cli_coco`, `cli_obs`, `cli_adr`, `cli_vil`, `cli_crac`, `cli_rem`) VALUES 
  ('*****','******','PP','PP','','',False,'34210000','*****','*******','**********',0,0),
  ('ACHR','ACHRAF ALIMENTATION','','','','',False,'','','',NULL,0,0),
  ('addo','RADIOLOGIE ADDOHA','','','','',False,'34210000','','1 LOT KAMALIA AIN SEBAA CASABLANCA CASABLANCA','ICE: 001748406000028',0,0),
  ('AFRPS','Afric plomb services','','','','',False,'34210000','','202 Bd Abdlmoumen, N° 5 Rdc - Casablanca\r\nRC:324259','ICE:000104003000069',0,0),
  ('AKKAR','AKKAR LIVING','','','','',False,'34210000','','117 RUE IBNOU MOUNIR \r\nRESIDENCE AZZARKAA 1ER ETAGE APRT 2\r\nCASABLANCA','ICE: 003239870000050',0,0),
  ('all','ALL SOPRANO','','','','',True,'34210000','','','CASABLANCA',0,0),
  ('amal','Amal photo lab','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('amid','Amid khalid','PP','PP','PP','PP',False,'','**002303548000022**','','ICE:**002303548000022**',0,0),
  ('ARIJ','ARIJ MEDIOUNA','','','','',False,'34210000','','11 LOTISSEMENT FATIMA ZAHRA \r\nMAGASIN RDC MEDIOUNA CASABLANCA \r\n','ICE: 002612399000038',0,0),
  ('ATELIER','ATELIERS 369','','','','',False,'34210000','','117 RUE IBNOU MOUNIR RESIDENCE AZZARKA 1ER ETAGE N2 MAARIF  CASABLANCA','ICE : 003477587000084',0,0),
  ('ATTIY','PHARMACIE ATTIYANA','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('AZKI','AZ KETCHEN','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('BACOM','BACOM','','','','',False,'34210000','','','',0,0),
  ('BAHA','BAHA COULEURS','','','','',False,'34210000','','117 RUE IBNOU MOUNIR RESIDENCE AZZARKA\r\n1ER ETAGE N 2 MAARIF CASABLANCA','ICE : 003254593000035',0,0),
  ('BAKOUCHI','BAKOUCHI & HABACHI','','','','',False,'34210000','','RESIDENCE TOUBKAL RUE FARABI 2 EME ETG CASABLANCA','ICE: 001578237000089',0,0),
  ('BALISTA','BALISTA IMMO','','','','',False,'34210000','','117 RUE IBNOU MOUNIR 1ER ETAGE APPRT 2\r\nCASABLANCA','ICE: 003504027000027',0,0),
  ('basri','basri youssef','PP','PP','PP','PP',False,'','','',NULL,0,0),
  ('BAYA','BAYA IMMO   SARL AU','','','','',False,'34210000','','117 RUE IBNOU MOUNIR RES.AZZARKA  1ER N°2 MAARIF CASABLANCA','ICE: 003169742000066',0,0),
  ('bennani','Bennani med fouad','PP','PP','PP','PP',False,'','','',NULL,0,0),
  ('BOU','BOUTARBOUCH ET CTS DEBBAGH','','','','',False,'34210000','','','CASA',0,0),
  ('bouhn','Ets bouhnak','SARL','SARL','SARL','SARL',False,'','**001717899000090**','',NULL,0,0),
  ('BOUL','BOULANGERIE PAIN DE PREMIERE','','','','',False,'34210000','','ERRAHMA 2 LOT 3 IMM A-M 40 RES ABRAR 1 RTE MY THAMI DAR BOUAZZA NOUACEUR , Casablanca','ICE: 003134506000062',0,0),
  ('BOULANGERIE','BOULANGERIE Pain de première qualité','','','','',False,'34210000','003134506000062','ERRAHMA 2 ILOT 3 IMM.A-M.40 RES.ABRAR 1 \r\nROUTE MOULAY THAMI DAR BOUAZZA NOUACEUR CASABLANCA','ICE: 003134506000062',0,0),
  ('burostore','Burostore','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('byldos','Byldos','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('CAFOULD','CAFÉ OULAD LEBLAD','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('candy','Candy boys','SARL','SARL','SARL','SARL',False,'','**000014213000078**','',NULL,0,0),
  ('casa','casamatebat','','','','',True,'34210000','','','',0,0),
  ('casan','Radiologie Casa Nord','','','','',False,'34210000','','11, bd Moulay Mohamed El Baamrani -ex M , Q. Sidi Bernoussi CASABLANCA MAROC','ICE: 000083845000068',0,0),
  ('cent','Centre d''Hémodialyse Grande Ceinture','','','','',False,'34210000','','','casablanca',0,0),
  ('CENTHZ','CENTRE HEMODIALYSE OULAD HRIZ','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('CENTRYAA','CENTRE DE DIALYSE YAACOUB ELMANSOUR','','','','',False,'34210000','','','',0,0),
  ('charaf','Charaf med','PP','PP','PP','PP',False,'','','',NULL,0,0),
  ('cheminee','Cheminee deco bat','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('CHRAIBI','CHRAIBI SANA Pharmacie El Abe','','','','',False,'34210000','','Sidi Maârouf - Casablanca','ICE : 000507259000019',0,0),
  ('CIA','CIAO CONSULTING','','','','',False,'34210000','','12, Rue Sabri Boujemâa, Etage 1, Appt. 6 - Casablanca','ICE:000167911000086',0,0),
  ('CLIENT001','BENHAMMOU NAGIB','caparec','caparec','','',True,'','PROMOTION IMMOBILIERE','12 RUE EL MESSAOUDI Q. RACINE CASA','Casablanca',0,0),
  ('CLIENT002','EL MANSOUR BOUZEKRI','caparec','caparec','','',True,'','PROMOTION IMMOBILIERE','13 RUE AIN SIDI ALI BOURGOGNE CASA','Casablanca',0,0),
  ('CLIENT003','JARDINS LIBANAIS ( HIBA CHIBANI)','caparec','caparec','','',True,'','IMPORT EXPORT','DOUAR HLALATE ELMEJJATIA','Casablanca',0,0),
  ('CLIENT004','NAFI ABDEL AZIZ','caparec','caparec','','',True,'','PROMOTION IMMOBILIERE','AL AZHARI 2 RUE 75 N 4 AL OULFA','Casablanca',0,0),
  ('CLIENT006','NAKKACH HAMID','caparec','caparec','','',False,'','HUISSIER DE JUSTICE','','Casablanca',0,0),
  ('CLIENT008','AJBAR ABED','caparec','caparec','','',False,'','COMMERCANT','','Casablanca',0,0),
  ('CLIENT009','AIT MEH ABDELAZIZ','caparec','caparec','','',False,'','COMMERCANT','','Casablanca',0,0),
  ('CLIENT010','BENABBOU AHMED','caparec','caparec','','',False,'','COMMERCANT','','Casablanca',0,0),
  ('CLIENT012','OULAALI MOHA','caparec','caparec','','',False,'','','','Casablanca',0,0),
  ('CLIENT013','BOURIZI  MOHAMED','caparec','caparec','','',False,'','GARAGE','BOURGOGNE','Casablanca',0,0),
  ('CLIENT014','BENHAMMOU MED JAMAL','caparec','caparec','','',False,'','ARCHITECTE','36 A BD ANFA','Casablanca',0,0),
  ('CLIENT015','BENKIRANE JAMIL SAAD','caparec','caparec','','',False,'','ARCHITECTE','36 BD ANFA CASA','Casablanca',0,0),
  ('CLIENT016','DR EL ANDALOUSSI','caparec','caparec','','',False,'','','','Casablanca',0,0),
  ('CLIENT017','DR MIFTAH ABDELILAH','caparec','caparec','','',False,'','MEDECIN','359 BD ZRKTOUNI RES JARRAH CASA','Casablanca',0,0),
  ('CLIENT018','DR. JABRANE','caparec','caparec','','',False,'','MEDECIN','Adresse:\r\n14, Bd Yacoub El Mansour, 1°Ét. N°1 , Maarif, 40000, Casablanca','ICE: 001658885000049',0,0),
  ('CLIENT019','EL HEMAM JAMILA','caparec','caparec','','',False,'','ARCHITECTE','36 BD ANFA CASA','Casablanca',0,0),
  ('CLIENT020','EL MOKRI RHITA (SALADE VERTE)','caparec','caparec','','',False,'','SNACK CAFE','5,BD LALLA YACOUT','Casablanca',0,0),
  ('CLIENT021','HERITIERS GAHAZ MUSTAPHA','partie','Partie','','',False,'','CONCESSIONNAIRES SERVICES TELEPHNIQUE','','Casablanca',0,0),
  ('CLIENT022','PHARMACIE BELAIR','gratuit','gratuit','','',False,'','PHARMACIENNE','','Casablanca',0,0),
  ('CLIENT024','HERITIERS ZERZIFI EL MELIANI KHADIJA','caparec','caparec','','',False,'','','635 RUE GOULMIMA','Casablanca',0,0),
  ('CLIENT025','LAHRICHI HAKIMA ( la noblesse)','caparec','caparec','','',False,'','BOULANGERIE PATISSERIE','434 BD ZERKTOUNI CASA','Casablanca',0,0),
  ('CLIENT026','GHAZALI MUSTAPHA','caparec','caparec','','',False,'','MENUISIER','22 RUE MOUSSA AYOUBI CASA','Casablanca',0,0),
  ('CLIENT028','Mr dahim Abdellah','caparec','caparec','','',False,'','BIJOUTIER FABRICANT','RUE MOUKALLAD AL AKILI N°11 BOURGOGNE','Casablanca',0,0),
  ('CLIENT029','4 COMPUTER','elmediouni','elmediouni','','',False,'','IMPORT EXPORT','RUE 175   N° 37 OULFA','Casablanca',0,0),
  ('CLIENT033','BK2A','caparec','caparec','','',False,'','batiment','3 rue abou amrane el fassi casa','Casablanca',0,0),
  ('CLIENT034','Bordeaux Pieces Auto','caparec','caparec','','',False,'','VENTE PIECES AUTOMOBILES','262,Bd de Bordeaux casablanca','Casablanca',0,0),
  ('CLIENT036','CASA RICA ARTIZANA','caparec','caparec','','',False,'','VENTE ACHAT CUIR IMPORT/EXPORT','10 RUE LIBERTE ETG 3 APPT 6 CASABLANCA','Casablanca',0,0),
  ('CLIENT037','Combrador','caparec','caparec','','',False,'','IMPORT EXPORT','741 Rue BOUKRAA Bourgogne Casablanca','Casablanca',0,0),
  ('CLIENT038','ESPACE  NR MANDELLA','caparec','caparec','','',False,'','SALON DE THE - VENTE DE TABACS','738 RUE BOUKRAA BOURGOGNE','Casablanca',0,0),
  ('CLIENT039','Espace El afrah','caparec','caparec','','',False,'','TRAITEUR','61, Rue Dijla Casa','Casablanca',0,0),
  ('CLIENT040','Espace Vert \"EVE\"','elmediouni','elmediouni','','',False,'','CREATION ET ENTRETIEN DES ESPACES VERTS','Douar lissassfa Km 11 Route mediouna','Casablanca',0,0),
  ('CLIENT041','GLACIER LA LUNE','Partie','Partie','','',False,'','SALON DE THE','31/33 ANGLE BD GEORGE SAND ET AV STANDHAL','Casablanca',0,0),
  ('CLIENT042','IFRANE TRAVAUX','Partie','Partie','','',False,'','TRAVAUX DIVERS','Rue Prince Sidi Mohamed Azrou','Casablanca',0,0),
  ('CLIENT043','LA RIVIERE TOURS','caparec','caparec','','',False,'','TRANSPORT TOURISTIQUE NATIONAL','741 RUE BOUKRAA','Casablanca',0,0),
  ('CLIENT044','LAS GEMILAS','Partie','Partie','','',False,'','Promotion Immobilière','138, Bd Yacoub El Mansour Casa','Casablanca',0,0),
  ('CLIENT045','L''OPALE','Partie','Partie','','',False,'','BONNETERIE','7, Rue Abou Abdellah Nafii Maarif Casa','Casablanca',0,0),
  ('CLIENT046','LOS HERMANOS','Partie','Partie','','',False,'','PROMOTION IMMOBILIERE','217 RESIDENCE ALFATH RTE ELJADIDA','Casablanca',0,0),
  ('CLIENT047','Maroc Cotillon','Partie','Partie','','',False,'','VENTES COTILLONS','46 Bis, Bd Moulay Youssef Casa','Casablanca',0,0),
  ('CLIENT048','Maroquinerie le meilleur','caparec','caparec','','',False,'','MAROQUAINERIE ARTISANALE','32 RUE NADOUD BOURGOGNE','Casablanca',0,0),
  ('CLIENT049','MEDYASS NOUR SERVICE','Partie','Partie','','',False,'','gestion de la copropriete syndic en generale','741 Rue BOUKRAA Bourgogne Casablanca','Casablanca',0,0),
  ('CLIENT050','DILIGENCE TOURS','Partie','Partie','','',False,'','TRANSPORT TOURISTIQUE','ATTACHAROUK HAY EL WALAA N° 6 SIDI MOUMEN CASA','Casablanca',0,0),
  ('CLIENT052','SAHMY TOURS','caparec','caparec','','',False,'','TRANSPORT TOURISTIQUE NATIONAL','741 Rue BOUKRAA Bourgogne Casablanca','Casablanca',0,0),
  ('CLIENT057','UP 2A','caparec','caparec','','',False,'','BUREAU D''ETUDES','741 Rue BOUKRAA Bourgogne Casablanca','Casablanca',0,0),
  ('CLIENT058','WACHAM IMMOBILIER','caparec','caparec','','',False,'','PROMOTION IMMOBILIERE','635, RUE GOULMIMA','Casablanca',0,0),
  ('CLIENT062','MAROC ESSORT','caparec','caparec','','',False,'','TRANSPORT','741 Rue BOUKRAA Bourgogne Casablanca','Casablanca',0,0),
  ('CLIENT064','FISYSTEM','elmediouni','elmediouni','','',False,'','INGENIEUR CONSEIL INFORMATIQUE','3 RUE ABOUSOULAIMAN EL KHATTABI','Casablanca',0,0),
  ('CLIENT065','GOLDEN DUNE TRAVELS','caparec','caparec','','',False,'','TRANSPORT TOURISTIQUE','741 Rue BOUKRAA Bourgogne Casablanca','Casablanca',0,0),
  ('CLIENT067','LABASSE MAGAZINE','caparec','caparec','','',False,'','EDITEUR DE PRIODIQUE','Mly Youssef Res al Amane Apt n° 3 Casa Anfa','Casablanca',0,0),
  ('CLIENT068','BUREAUPAC','caparec','caparec','','',False,'','VENTE DE FOURNITURE DE BUREAU','743 RUE BOUKRAA RESIDENCE OCEAN BOURGOGNE','Casablanca',0,0),
  ('CLIENT069','KB2 IMMO (ex nzahat sidi ghayat)','caparec','caparec','','',False,'','promoteur immobilier','743 RUE BOUKRAA RESIDENCE OCEAN BOURGOGNE','Casablanca',0,0),
  ('CLIENT071','UNIVERSEL MEDICAL','caparec','caparec','','',False,'','PARAMEDICAL','PROJET HASSAN II IMM I-2B HAY MOHAMMEDI','Casablanca',0,0),
  ('CLIENT073','PLATINIUM LUXE CAR','caparec','caparec','','',False,'34210000','','IM 7 MAGASIN E7 RUE SOLTAN ABDOLHAMID BOURGOGNE','CASABLANCA',0,0),
  ('CLIENT074','TRAITEUR PRESTIGE','','','','',False,'34210000','','','casablanca',0,0),
  ('constre','Constre.e.b','SARL','SARL','SARL','SARL',False,'','**001512829000026**','',NULL,0,0),
  ('cottignies','Cottignies Créations  Sarl','SARL','SARL','01','sarl',False,'','','Casa Marina Business Center Bd des Almohades Tour Crystal I Etg 10  Casablanca','ICE:001664526000032',0,0),
  ('CPCA','CPCA','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('cprot','CPROTEC MAROC','','','','',False,'34210000','','','',0,0),
  ('CSI','CSI GESTION','','','','',False,'34210000','','FRANCE','',0,0),
  ('DAM','DAMANIA IMMOBILIER','','','','',False,'34210000','','','CASABLANCA',0,0),
  ('DEBB','MR DEBBAGH BOUTARBOUCH MED EZZADINE ET CONSORTS','','','','',False,'34210000','','RUE JEAN JAURES QUARTIER GAUTHIER \r\n','CASABLANCA',0,0),
  ('DEBBAGH','MR DEBBAGH BOUTARBOUCH MED EZZADINE ET CONSORTS','','','','',False,'34210000','','RUE JEAN JAURES QUARTIER GAUTHIER \r\n','',0,0),
  ('dha','DAHIM ABEDALLAH','','','','',False,'34210000','','','',0,0),
  ('div','Client divers','','','','',False,'34210000','','Darouich Car\r\n84, rue Ibn Mounir - ex Estérel, Andaloussia Centre 1°ét. n°48\t, Maarif\tCASABLANCA','',0,0),
  ('dovar','dovar','','','','',False,'34210000','','','',0,0),
  ('east','East side food corner','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('ELMA','ELMA GROUPE  SARL','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('eloua','ELOUAFI','','','','',False,'34210000','','','CASABLANCA',0,0),
  ('ennabi','Ennabi khalid','PP','PP','PP','PP',False,'','','',NULL,0,0),
  ('enti','Enti media','SARL','SARL','SARL','SARL',False,'','**001835591000029**','',NULL,0,0),
  ('euro','Euro confiserie','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('EXCESS TRANS','EXCESS TRANSPORT    SARL','','','','',False,'34210000','','10 Rue Chrarda Rdc Bourgogne. - Casablanca','ICE : 002552387000074',0,0),
  ('excfs','EXCLISIVE FARAH SERVICES','','','','',False,'34210000','','En qualité de :\r\nANGLE BD LALLA YACOUT ET RUE ARAAR RES GALIS ETG 4 APPT 17 CASABLANCA\r\n','ICE: 001863293000042',0,0),
  ('expert','Expert brain','SARL','SARL','SARL','SARL',False,'','**001971075000025**','',NULL,0,0),
  ('FINA','FINA BATIMENT ET MATEREUX DE CONSTRUCTION','','','','',False,'34210000','','BD LALA YACOUT','CASABLANCA',0,0),
  ('first','First communication','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('FLOR','FLORINVEST','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('golvent immo','golvent immo','','','','',False,'34210000','','','',0,0),
  ('GRAV','GRAVLART','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('GUEZ','GUEZRA TRANS','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('HADD','HADDAD CONSULTING','','','','',False,'34210000','','IF    :15243069   \r\nICE : 001686735000043','',0,0),
  ('HERITIER','HERITIERS MOHSEN DRISS','','','','',False,'34210000','','','CASABLANCA',0,0),
  ('home','HOME GALAXY   SARL','','','','',False,'','','CASABLANCA\r\n','ICE : 000080409000011',0,0),
  ('houd','HOUDA SABOUR','','','','',False,'34210000','','','CASABLANCA',0,0),
  ('IBPARTNERS','IB PARTNERS','','','','',False,'34210000','','13, bd de la Corniche (Bourgogne) 20050 Casablanca - Maroc','ICE:002585458000042',0,0),
  ('idb','ID BELLOUCH RACHID','','','','',False,'34210000','','','',0,0),
  ('IDR','IDRISSI HASSANI ET CONSORTS','','','','',False,'34210000','','3 RUE DE QUAIS\r\n -     \r\n \r\n','CASABLANCA',0,0),
  ('imixam','Imixam','SARL','SARL','SARL','SARL',False,'','**000210267000007**','',NULL,0,0),
  ('INDI','INDIANA NEGOCE','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('india','india ice','SARL','SARL','SARL','SARL',False,'','**000054152000074**','',NULL,0,0),
  ('ingenierisk','INGENIERISK   Sarlau','SARL','SARL','01','sarl',False,'','','12 RUE SABRI BOUJEMAA ETG 1 APPT 6\t                  \r\nCasablanca','ICE : 000208441000033',0,0),
  ('INJA','INJAD OCEAN','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('innoprod','Innoprod','','','','',False,'','','9 RUE DE GUYENNE ETG 2 APT 4 Q H CASABLANCA','ICE:**002022646000043**',0,0),
  ('INNOWEBB','INNOWEBB','','','','',False,'34210000','','9 RUE DE GUYENNE QUARTIER DES HOPITAUX CASABLANCA\r\n','ICE: 000213423000058',0,0),
  ('JABBAR','JABBAR ELMOSTAFA (Docteur)','','','','',False,'34210000','','298 Bd Mohamed V 3ème Etage CASABLANCA','ICE : 001945957000084',0,0),
  ('jad','Jad securt','','','','',False,'','','MAZOLA RUE 1 N°51 \r\nCASABLANCA','ICE:**001546131000062**',0,0),
  ('JPO','JARDIN POMME DOR','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('KARAMI','KARAMI BRAHIM','','','','',False,'34210000','','9 RUE DUHAUMME CASABLANCA','ICE: 000809682000058',0,0),
  ('khadiri','Khadiri revetement','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('khadraoui','Khadraoui bouziane','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('LABO','LABO ANFA','','','','',False,'34210000','','','',0,0),
  ('LECOI','LE COIN DU BTP','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('les','Les comptoire associes','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('main','Main mustapha','PP','PP','PP','PP',False,'','','',NULL,0,0),
  ('miri','Miri el mahi','PP','PP','PP','PP',False,'','','',NULL,0,0),
  ('MS','MS D AFFAIRE','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('mytr','My trans','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('nafzaoui','Nafzaoui','PP','PP','PP','PP',False,'','**001727287000075**','',NULL,0,0),
  ('najib','Najib mustapha','PP','PP','PP','PP',False,'','','',NULL,0,0),
  ('nb','NEST BIKE','','','','',False,'34210000','','CASABLANCA','',0,0),
  ('ONYX','ONYX MAROC','','','','',False,'34210000','','Av. Nasr N° 48 - Tetouan','ICE: 000161166000035',0,0),
  ('OUHANNA','OUHANNA','','','','',False,'34210000','','','',0,0),
  ('oulaa','OULAALI MOHA','pp','pp','pp','pp',False,'','','',NULL,0,0),
  ('papeniere','Papeniere zetoune','SARL','SARL','SARL','SARL',False,'','**000060520000022**','',NULL,0,0),
  ('PEPINIER','PEPINIERE ZETOUNE','','','','',False,'34210000','','3 RUE 11 INARA 2 AIN CHOCK CASABLANCA','ICE: 000060520000022',0,0),
  ('petrarock','petrarock','','','','',False,'34210000','','57, bd Abdelmoumen, imm. Al Hadi 6°ét. appt. A 21\t, Hôpitaux \r\n','CASABLANCA',0,0),
  ('PHYTOGLOW','PHYTOGLOW','','','','',False,'34210000','','117 RUE IBNOU MOUNIR RESIDENCE AZZARKA 1ER ETAGE N 2 MAARIF CO MS \r\nD''AFFAIRES , Casablanca','ICE: 003129523000064',0,0),
  ('posm','Posm factory','','','','',False,'','','46 BD ZERKTOUNI ETG 2\r\nCASABLANCA','ICE:**002087566000090**',0,0),
  ('proftr','Profil des travaux.construction','','','','',False,'','','12 RUE SABRI BOUJEMAA\r\nCASABLANCA','ICE: **000224796000089**',0,0),
  ('promain','Promain','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('rani','RANIA PLATINIUM CAR','','','','',False,'34210000','','','',0,0),
  ('RATUS','RATUS','','','','',False,'34210000','','','',0,0),
  ('RAYA','CENTRE DE DIALYSE ARRAYANE','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('rbat','R.bat','SARL','SARL','SARL','SARL',False,'','**000010517000057**','',NULL,0,0),
  ('res','restime','','','','',False,'34210000','','','casablanca',0,0),
  ('ROSA','ROSA PRESTIG','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('SAM','SAM SETTE GROUPE MAROC','','','','',False,'34210000','','','',0,0),
  ('SANA','SANA CHRAIBI','','','','',False,'34210000','','48 LOT ESSALAMA SIDI MAAROUF CASABLANCA','ICE: 000507259000019',0,0),
  ('SARIDBEL','SARIDBEL','','','','',False,'34210000','','','',0,0),
  ('SCBG','STE CENTRALE DES BOISSONS GAZEUSES','','','','',False,'34210000','','LOTISSEMENT LA COLLINE 2 LOT 12 SIDI MAAROUF CASABLANCA','ICE: 001530596000079',0,0),
  ('scifa','Sci farida','SCI','SCI','SCI','SCI',False,'','','',NULL,0,0),
  ('scilotf','Sci lotf','SCI','SCI','SCI','SCI',False,'','','',NULL,0,0),
  ('seron','Seron françois','PP','PP','PP','PP',False,'','','',NULL,0,0),
  ('SIEMENS','SIEMENS TOURS','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('SIJILMASA','SIJILMASA CAR','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('simp','SIMPLE BATIMENT','','','','',False,'34210000','','','CASABLANCA',0,0),
  ('SOMA','Somatam','','','','',False,'34210000','','nouvelle societe marocaine de tannerie et megisserie\r\n11, rue Adjudant Loukili -ex Thiriat - 20300','Casablanca',0,0),
  ('sté','Sté choukairi','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('superbat','Superbat','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('tarek','TAREK CONTACT','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('tareka','Tarek abbess','PP','PP','PP','PP',False,'','**001739164000078**','',NULL,0,0),
  ('TAREKFRERES','TAREK FRERES Sarl','','','','',False,'34210000','','23 PLACE CANTAL\tCasablanca','ICE : 001741965000014',0,0),
  ('THIS','ATHISA MAROC','','','','',False,'34210000','','BOUSKOURA CENTRE ROUTE 109 N°3 \r\nCASABLANCA','ICE: 00079714000055',0,0),
  ('TIME','TIME CAPITAL PARTNER','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('TOP','TOP ANB CONSTRUCTION','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('TOULATI','TOULATI SERVICES','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('TRANS','TRANS MARCH','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('transokh','Trans oukhdoud','SARL','SARL','SARL','SARL',False,'','**001882630000094**','',NULL,0,0),
  ('UNION','UNION ASSUR','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('univers','UNIVERS TONER   Sarl','SARL','SARL','01','sarl',False,'','**000080498000033**','Lotissement Lamia 14 Bd Mehdi Ben Barka Résidence Karam 2 n°13 Bourgogne casablanca','ICE : 000080498000033',0,0),
  ('vit','VITA NATURE','','','','',False,'34210000','','','CA',0,0),
  ('WALID','CAFÉS ALWALIDAYN','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('WEBLOG','WEBLOG','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0),
  ('yossi','yossi bord','SARL','SARL','SARL','SARL',False,'','','',NULL,0,0);

COMMIT;

#
# Data for the `p_cojo` table  (LIMIT 0,500)
#

INSERT INTO `p_cojo` (`cojo_cod`, `cojo_lib`, `cojo_coge`, `cojo_age`, `cojo_adr`, `cojo_tel`, `cojo_fax`) VALUES 
  ('001','banque','51410001','','','',''),
  ('002','caisse','51610001','','','','');

COMMIT;

#
# Data for the `p_dep` table  (LIMIT 0,500)
#

INSERT INTO `p_dep` (`dep_cod`, `dep_adr`, `dep_tel`, `dep_fax`) VALUES 
  ('depot','','','');

COMMIT;

#
# Data for the `p_dro` table  (LIMIT 0,500)
#

INSERT INTO `p_dro` (`dro_cod`, `dro_nom`, `dro_add`, `dro_edit`, `dro_del`, `dro_vue`) VALUES 
  (1,'fou',True,True,True,True),
  (1,'art',True,True,True,True),
  (1,'faar',True,True,True,True),
  (1,'sofa',True,True,True,True),
  (1,'fam',True,True,True,True),
  (1,'foju',True,True,True,True),
  (1,'more',True,True,True,True),
  (1,'tva',True,True,True,True),
  (1,'mar',True,True,True,True),
  (1,'dep',True,True,True,True),
  (1,'decl',True,True,True,True),
  (1,'facl',True,True,True,True),
  (1,'avcl',True,True,True,True),
  (1,'recl',True,True,True,True),
  (1,'defo',True,True,True,True),
  (1,'fafo',True,True,True,True),
  (1,'cli',True,True,True,True),
  (1,'avfo',True,True,True,True),
  (1,'refo',True,True,True,True),
  (1,'vast',False,False,False,True),
  (1,'refa',False,False,False,True),
  (1,'jove',False,False,False,True),
  (1,'sicl',False,False,False,True),
  (1,'reff',False,False,False,True),
  (1,'joac',False,False,False,True),
  (1,'sifo',False,False,False,True),
  (1,'fma',False,False,False,True),
  (1,'soc',False,True,False,True),
  (1,'unme',True,True,True,True),
  (1,'pafi',False,True,False,True),
  (1,'reco',False,True,False,True),
  (1,'baagc',False,False,False,True),
  (1,'baagf',False,False,False,True),
  (1,'fmec',False,False,False,True),
  (1,'fmef',False,False,False,True),
  (1,'moregc',False,False,False,True),
  (1,'moregf',False,False,False,True),
  (1,'nuse',True,True,True,True),
  (1,'cai',True,True,True,True),
  (1,'per',True,True,True,True),
  (1,'cojo',True,True,True,True),
  (1,'vaco',False,False,False,True);

COMMIT;

#
# Data for the `p_faar` table  (LIMIT 0,500)
#

INSERT INTO `p_faar` (`faar_cod`, `faar_lib`) VALUES 
  ('C','SANS FACTURATION'),
  ('COMP','COMPTABILITE'),
  ('DO','DOMICILIATION'),
  ('LOG','LOGICIELS');

COMMIT;

#
# Data for the `p_fam` table  (LIMIT 0,500)
#

INSERT INTO `p_fam` (`fam_cod`, `fam_lib`) VALUES 
  ('an','annuel'),
  ('caparec','caparec'),
  ('elmediouni','elmediouni'),
  ('gratuit','gratuit'),
  ('partie','Partie'),
  ('PP','PP'),
  ('SARL','SARL'),
  ('SCI','SCI');

COMMIT;

#
# Data for the `p_foju` table  (LIMIT 0,500)
#

INSERT INTO `p_foju` (`foju_cod`, `foju_lib`) VALUES 
  ('01','sarl'),
  ('02','sa'),
  ('03','snc'),
  ('PP','PP'),
  ('SCI','SCI');

COMMIT;

#
# Data for the `p_more` table  (LIMIT 0,500)
#

INSERT INTO `p_more` (`more_cod`, `more_lib`) VALUES 
  ('01','cheque'),
  ('02','espece'),
  ('03','effet');

COMMIT;

#
# Data for the `p_pafi` table  (LIMIT 0,500)
#

INSERT INTO `p_pafi` (`pafi_cod`, `pafi_lib`, `pafi_che`, `pafi_def`) VALUES 
  ('decl','Document Divers Client','rpt_decl.rpt',True),
  ('decl','domiciliation','DOMICILIATION.rpt',True),
  ('decl','devis_cli','rpt_decl.rpt',True),
  ('facl','fact_fati','facture fatigest.rpt',True),
  ('avcl','Avoir Client','rpt_avcl.rpt',True),
  ('recl','Reglement Client','rpt_recl.rpt',True),
  ('defo','Document Divers Fournisseur','rpt_defo.rpt',True),
  ('fafo','Facture Fournisseur','rpt_fafo.rpt',True),
  ('avfo','Avoir Fournisseur','rpt_avfo.rpt',True),
  ('refo','Reglement Fournisseur','rpt_refo.rpt',True);

COMMIT;

#
# Data for the `p_soc` table  (LIMIT 0,500)
#

INSERT INTO `p_soc` (`soc_cod`, `soc_raso`, `soc_foju`, `soc_lfoju`, `soc_adr`, `soc_tel`, `soc_fax`, `soc_ema`, `soc_sit`, `soc_cap`, `soc_nrc`, `soc_if`, `soc_pat`) VALUES 
  ('CAPAREC2016','fatigest','01','sarl','211 bd Med 5','','','','',0,'','','');

COMMIT;

#
# Data for the `p_tva` table  (LIMIT 0,500)
#

INSERT INTO `p_tva` (`tva_cod`, `tva_lib`) VALUES 
  ('20',NULL),
  ('14',NULL),
  ('10',NULL),
  ('7',NULL),
  ('0',NULL);

COMMIT;

#
# Data for the `p_usr` table  (LIMIT 0,500)
#

INSERT INTO `p_usr` (`usr_cod`, `usr_nom`, `usr_pws`, `usr_gro`) VALUES 
  (1,'admin','123','Administrateur');

COMMIT;

#
# Data for the `tykyfact` table  (LIMIT 0,500)
#

INSERT INTO `tykyfact` (`TYKYCOD`, `TYKYFACT`) VALUES 
  (1,'admin'),
  (2,'admin'),
  (3,'admin'),
  (4,'admin'),
  (5,'admin'),
  (6,'admin'),
  (7,'ADMIN'),
  (8,'ADMIN'),
  (9,'ADMIN'),
  (10,'ADMIN'),
  (12,'ADMIN'),
  (11,'ADMIN'),
  (15,'ADMIN'),
  (14,'admin');

COMMIT;

#
# Data for the `version` table  (LIMIT 0,500)
#

INSERT INTO `version` (`version_cod`) VALUES 
  ('3.4');

COMMIT;

