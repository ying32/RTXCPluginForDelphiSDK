//***************************************************************************
//
//       名称：RTXCConst.pas
//       工具：RAD Studio XE6
//       日期：2014/11/7 20:42:55
//       作者：ying32
//       QQ  ：396506155
//       MSN ：ying_32@live.cn
//       E-mail：yuanfen3287@vip.qq.com
//       Website：http://www.ying32.com
//---------------------------------------------------------------------------
//
//       备注：
//             RTXClient SDK翻译, 原版权归腾讯公司所有
//       包含:
//             #include "APIShare.h"
//             #include "RTXCModuleIds.h"
//             #include "RTXCDataKeys.h"
//             #include "ContactBarExtBuddyDef.h"
//             #include "RTXCAPIErrorCodes"
//
//***************************************************************************
unit RTXC.Consts;

interface

uses
  Winapi.Windows;

const
  // #include "APIShare.h"
  // Object Name
  OBJECT_ROOT								  = 'ROOTOBJECT';
  OBJECT_FACE_IMAGE						= 'FaceImage';
  OBJECT_MSG_BOARD				    = 'MsgBoard';
  OBJECT_PRESENCE							= 'Presence';
  OBJECT_PROFILE							= 'Profile';
  OBJECT_ORGANIZATION					= 'Organization';
  OBJECT_CONFERENCE						= 'Conference';
  OBJECT_STORE							  = 'Store';
  OBJECT_SNAPSHOT							= 'Snapshot';
  OBJECT_IM							     	= 'RTXPlugin.IM';
  OBJECT_SMS							   	= 'RTXPlugin.SMS';
  OBJECT_SENDFILE							= 'RTXPlugin.SendFile';
  OBJECT_USERSELECT						= 'RTXPlugin.UserSelect';
  OBJECT_CLIENTRIGHTMGR				= 'RTXPlugin.CLientRightMgr';
  OBJECT_APPROOT              = 'AppRoot';
  OBJECT_KERNALROOT           = 'KernalRoot';
  OBJECT_HELPER               = 'RTXHelper';
  OBJECT_VERSION              = 'Version';
  OBJECT_LICENSE							= 'License';
  OBJECT_RTXMAINFRAME         = 'RTXMainFrame';
  OBJECT_RTXMENU              = 'RTXMenu';


  // Root Object Invoke IDs
  INVOKEID_LOGIN_UIN					= 1;   // 用户号码登录
  INVOKEID_LOGIN_USERNAME			= 2;   // 用户名登录
  INVOKEID_GET_VERSION		    = 3;   // 获得版本号, 如3.3和版本类型, 如标准版, 高级版
  INVOKEID_GET_SELF				   	= 4;   // 获取自身的一些信息

  // Face Image Invoke IDs
  INVOKEID_GET_FACEIMAGE		 	= 1;

  // Messsage Board Invoke IDs
  INVOKEID_POP_MSG					  = 1;

  // Presence Invoke IDs
  INVOKEID_GET_PRESENCE				= 1;

  // Profile Invoke IDs
  INVOKEID_GET_PROFILE_BY_UIN		    	= 1;
  INVOKEID_GET_PROFILE_BY_NICKNAME  	= 2;

  // Organization
  INVOKEID_GET_SERVICE_NUMBER		    	= 1;
  INVOKEID_GET_ORG_USERLIST		      	= 2;

  // Conference
  INVOKEID_CONF_NOTIFY				        = 1;

  // Store
  INVOKEID_STORE_GET_USERS			      = 1;
  INVOKEID_STORE_GET_DEPARTMENTS	   	= 2;

  // Application Share
  INVOKEID_APP_SHARE				         	= 1;

  // Snapshot
  INVOKEID_SNAPSHOT				          	= 1;

  // SendFile
  INVOKEID_SEND_FILE			        		= 1;
  INVOKEID_SEND_FILES 			    	    = 2;

  // GsmMessenger
  INVOKEID_SEND_SMS				          	= 1;



  // Property name
  PROPERTY_RTX_NUMBER				   	= 'RTXNum';
  PROPERTY_RTX_USER				     	= 'RTXUser';
  PROPERTY_RTX_USERNAME		   		= 'RTXUserName';
  PROPERTY_LOGIN_SESSIONKEY			= 'LoginSessionKey';
  PROPERTY_IS_USED_SESSIONKEY		= 'IsUsedSessionKey';
  PROPERTY_PASSWORD				     	= 'Password';
  PROPERTY_SERVER_ADDRESS				= 'ServerAddress';
  PROPERTY_SERVER_PORT				  = 'ServerPort';

  PROPERTY_MESSAGE					    = 'Message';
  PROPERTY_URL						      = 'URL';

  PROPERTY_STATUS					     	= 'Status';

  PROPERTY_NICKNAME				     	= 'Nick';
  PROPERTY_NAME						      = 'Name';
  PROPERTY_MOBILE					    	= 'Mobile';

  PROPERTY_STORE_USER_COUNT			= 'UserCount';

  PROPERTY_VERSION_LOW			    = 'VersionLow';
  PROPERTY_VERSION_HIGH		  		= 'VersionHigh';
  PROPERTY_EDITION					    = 'Edition';
  PROPERTY_BUILD						    = 'Build';

  PROPERTY_UIN						      = 'Uin';
  PROPERTY_USERNAME				     	= 'Username';

  //SDK的事件通知
  SDK_EVENT_RTXAX_LOGINOK				  = 1;   // 0001 登录成功
  SDK_EVENT_RTXAX_GOTFRIENDLIST		= 2;   // 0010 已经成功获得用户列表和在线状态
  SDK_EVENT_RTXAX_OFFLINE				  = 4;   // 0100 RTX离线了，包括意外断线

  SDK_EVENT_PRESENCE_CHANGE	    	= $0001;
  SDK_EVENT_PROFILE_CHANGE		    = $0001;


  //ActionMgr的Action组名
  ACTION_GROUP_NAME_YOUCANDO_AREA       = '7E056993-D108-4fdd-AD1A-678D28A4C1C0';  // YouCanDo区域的ActionGroup名
  ACTION_GROUP_NAME_MAINTOOLBAR_AREA    = '332971A8-529D-46f0-890F-C065BFC3FACE';  // 主面板toolbar区域的ActionGroup名
  ACTION_GROUP_NAME_STATUSBAR_AREA	    = '4719D9AE-E27E-4711-9DC6-75699DEE0DB2';  // 主面板状态栏区域
  ACTION_GROUP_NAME_IMTOOLBAR_AREA	    = 'F528A834-BB65-4c1f-B35E-3742BFFE10C4';  // IM窗口工具栏

  //OptionStore中存储YouCanDo区域的item的ID顺序, 这是字段名
  YOU_CAN_DO_ITEM_ID_INORDER            = '_youcando_item_ids_in_order_';



  // #include "RTXCModuleIds.h" 
  RTX_MODULE_IDENTIFIER_MAX_LEN			   	= 100;

  RTX_MODULE_IDENTIFIER_ORG_STRUCT			= 'Tencent.RTX.OrgStruct';
  RTX_MODULE_IDENTIFIER_STORE			    	= 'Tencent.RTX.Store';
  RTX_MODULE_IDENTIFIER_P2P				    	= 'Tencent.RTX.P2P';
  RTX_MODULE_IDENTIFIER_CLIENT_OBJS			= 'Tencent.RTX.ClientObjects';
  RTX_MODULE_IDENTIFIER_SESSION			   	= 'Tencent.RTX.Session';
  RTX_MODULE_IDENTIFIER_RCASESSION			= 'Tencent.RTX.RCASession';
  RTX_MODULE_IDENTIFIER_MDSESSION		  	= 'Tencent.RTX.MDSession';
  RTX_MODULE_IDENTIFIER_USERSELECTOR    = 'Tencent.RTX.UserSelector';
  RTX_MODULE_IDENTIFIER_IM				    	= 'Tencent.RTX.IM';
  RTX_MODULE_IDENTIFIER_USERPROFILE     = 'Tencent.RTX.UserProfile';
  RTX_MODULE_IDENTIFIER_FILETRANSFER		= 'Tencent.RTX.FileTransfer';
  RTX_MODULE_IDENTIFIER_LOGIN			     	= 'Tencent.RTX.RTXLogin';
  RTX_MODULE_IDENTIFIER_RTXSMS			   	= 'Tencent.RTX.Sms';
  RTX_MODULE_IDENTIFIER_CONFIG	        = 'Tencent.RTX.Config';
  RTX_MODULE_IDENTIFIER_RTXP2P	        = 'Tencent.RTX.P2P';
  RTX_MODULE_IDENTIFIER_SYSMSG	        = 'Tencent.RTX.SYSMSG';
  RTX_MODULE_IDENTIFIER_SEARCHUSERS	    = 'Tencent.RTX.SearchUsers';
  RTX_MODULE_IDENTIFIER_LOCALTABMANAGER	= 'Tencent.RTX.LocalTabManager';
  RTX_MODULE_IDENTIFIER_OFFMSGMODULE		= 'Tencent.RTX.OffMsgModule';
  RTX_MODULE_IDENTIFIER_UPDATEMODULE		= 'Tencent.RTX.UpdateModule';
  RTX_MODULE_IDENTIFIER_ALERT			    	= 'Tencent.RTX.Alert';
  RTX_MODULE_IDENTIFIER_BROADCAST	   		= 'Tencent.RTX.BroadCast';
  RTX_MODULE_IDENTIFIER_RTXCSDK			   	= 'Tencent.RTX.RTXCSDK';
  RTX_MODULE_IDENTIFIER_WATCHER	        = 'Tencent.RTX.Watcher';
  RTX_MODULE_IDENTIFIER_RTXMSGMANAGER		= 'Tencent.RTX.MsgManager';
  RTX_MODULE_IDENTIFIER_RTXPHONE	      = 'Tencent.RTX.RTXPhone';
  RTX_MODULE_IDENTIFIER_RIGHT		    		= 'Tencent.RTX.RightMgr';
  RTX_MODULE_IDENTIFIER_USERDEFINEWIZARD    = 'Tencent.RTX.UserDefineWizard';
  RTX_MODULE_IDENTIFIER_RTXCPRO           	= 'Tencent.RTX.RTXCPro';
  RTX_MODULE_IDENTIFIER_B2BIM			    	= 'Tencent.RTX.B2BIM';
  RTX_MODULE_IDENTIFIER_B2B				     	= 'Tencent.RTX.B2B';
  RTX_MODULE_IDENTIFIER_RTXCORP			  	= 'Tencent.RTX.RTXCorp';
  RTX_MODULE_IDENTIFIER_DISGROUP		   	= 'Tencent.RTX.DisGroup';
  RTX_MODULE_IDENTIFIER_RCA				     	= 'Tencent.RTX.RCAModule';
  RTX_MODULE_IDENTIFIER_RCASTORECOMP		= 'Tencent.RTX.RCAStoreComp';
  RTX_MODULE_IDENTIFIER_RCAIM			    	= 'Tencent.RTX.RCAIM';
  RTX_MODULE_IDENTIFIER_RCAUSERPROFILE	= 'Tencent.RTX.RCAUserProfile';
  RTX_MODULE_IDENTIFIER_ADDRCAUSER	    = 'Tencent.RTX.AddRCAUser';
  RTX_MODULE_IDENTIFIER_EPORTAL			   	= 'Tencent.RTX.EPortal';

  //RCA
  RTX_MODULE_IDENTIFIER_RCARightCenter		      = 'Tencent.RTX.RCARightCenter';

  RTX_CLIENT_OBJECTS_IDENTIFIER_MENU		      	= 'RTXCMenu';
  RTX_CLIENT_OBJECTS_IDENTIFIER_NOTIFICATION  	= 'RTXCNotification';
  RTX_CLIENT_OBJECTS_IDENTIFIER_TABBASEMGR    	= 'RTXCTABBASEMGR';
  RTX_CLIENT_OBJECTS_IDENTIFIER_SUBITEM	        = 'RTXCSubItem';
  RTX_CLIENT_OBJECTS_IDENTIFIER_SPECIALTIPWND   = 'RTXSpecialTipWnd';
  RTX_CLIENT_OBJECTS_IDENTIFIER_ACTIONMGR       = 'RTXActionMgr';
  RTX_CLIENT_OBJECTS_IDENTIFIER_EXTRAINFO	    	= 'RTXCExtraInfoShow';
  RTX_CLIENT_OBJECTS_IDENTIFIER_USERTIPS	    	= 'RTXCUserTips';
  RTX_CLIENT_OBJECTS_IDENTIFIER_DEPTPORTAL	    = 'RTXCDeptPortal';
   
   
  // #include "RTXCDataKeys.h" 
  RDK_ACCOUNT_TYPE	= 'AccountType';
  RDK_ACCOUNT		    = 'Account';
  RDK_TEMP_ACCOUNT	= 'TempAccount';
  RDK_TEMP_UIN	   	= 'TempUIN';
  RDK_PASSWORD	   	= 'Password';

  RDK_RECENT_SESSION_ID     = 'RecentSessionID';
  RDK_RECENT_CONTACTS       = 'RecentContacts';

  RDK_EXPANDING_FOLDER_ID   = 'ExpandingFolderID';
  RDK_EXPANDING_GROUP_ID    = 'ExpandingGroupID';

  RDK_HIDE_SESSION_ID       = 'HideSessionID';
  RDK_HIDE_RECENT_CONTACT   = 'HideRecentContact';

  RDK_IDENTIFIER		        = 'Identifier';
  RDK_MSG_TYPE		          = 'MsgType';
  RDK_SENDER			          = 'Sender';
  RDK_RECEIVER	           	= 'Receiver';
  RDK_CONTENT			          = 'Content';
  RDK_TIME			            = 'Time';
  RDK_COOKIE		          	= 'Cookie';
  RDK_MODE			            = 'Mode';
  RDK_KEY			     	        = 'Key';
  RDK_TITLE			            = 'Title';
  RDK_OFFMSG		          	= 'OffMsg';
  RDK_AUTO_REPLY		        = 'AutoReply';
  RDK_MDS				            = 'MDS';
  RDK_REQUEST_REPLY	        = 'RequestReply';
  RDK_REREQUEST_REPLY	      = 'ReRequestReply';
  RDK_REQUEST_REPLY_KEY	    = 'RequestReplyKey';
  RDK_NOTIFY			          = 'Notify';
  RDK_FORBID			          = 'Forbid';
  // 这个带自定义的了
  RDK_MSG_CONTENT           = 'Msg_Content';


  KEY_NAME_COMMAND		      = 'Command';
  KEY_NAME_COMMANDEX	     	= 'CommandEx';	/// For DisGroup by Benchen 2008.01.25
  KEY_NAME_OFFMSGSIGN	    	= 'OffMsgSign';
  KEY_NAME_RESULT			      = 'Result';
  KEY_NAME_MSGID			      = 'MsgID';
  KEY_NAME_MSGTYPE	        = 'Type';
  KEY_NAME_SENDER			      = 'Sender';
  KEY_NAME_RECVER			      = 'Reciever';
  KEY_NAME_CREATETIME	      = 'CreateTime';
  KEY_NAME_TITLE			      = 'Title';
  KEY_NAME_SESSION	      	= 'Session';
  KEY_NAME_SESSIONDECS      = 'SessionDescription';
  KEY_NAME_MSGTXT		  	    = 'MsgTxt';
  KEY_NAME_COUNT			      = 'Count';
  KEY_NAME_SRCIDENTIFIER    = 'SrcIdentifier';


  //enlonehe_20060430
  RDK_LOGIN_MODE		= 'LoginMode';

  RDK_FILESENDER		= 'FileSender';

  RDK_IM_CMD		   	= 'Cmd';
  RDK_SESSION_ID		= 'SessionId';
  RDK_INITIATOR			= 'Initiator';
  RDK_PARTICIPANT		= 'Participant';
  RDK_TOPIC			   	= 'Topic';

  //add by cyanchen 200906
  RDK_OUTLOGIN_MODE_SHOWIP	= 'OutLoginModeShowIP';
  RDK_OUTLOGIN_MODE_IP	  	= 'OutLoginModeIP';
  RDK_OUTLOGIN_MODE_PORT   	= 'OutLoginModePort';
  RDK_OUTLOING_MODE_PLACE 	= 'OutLoingModePlace';

  //add by yanjun 2006-5-19 
  RDK_IM_MSG_ID       = 'im_message_id';

  RDK_ITEM_TYPE			= 'ItemType';
  RDK_ITEM_VALUE		= 'ItemValue';

  RDK_TOKEN				  = 'Token';
  RDK_TOKEN_KCS			= 'TokenKcs';
  RDK_SIGN			   	= 'Sign';
  RDK_SIGN_RAW			= 'Sign_Raw';
  RDK_SIGN_BASE64	  = 'Sign_Base64';

  RDK_TYPE				= 'Type';
  RDK_IP			   	= 'IP';
  RDK_PORT				= 'Port';
  RDK_UDP_PORT		= 'UDPPort';

  RDK_VALUE				= 'Value';
  RDK_VALUE2			= 'Value2';
  RDK_VALUE3			= 'Value3';

  RDK_DELAY				= 'Delay';

  RDK_AV_CMD			= 'AVCmd';

  RDK_AV_PARAM		  = 'Param';
  RDK_AV_APP_NAME		= 'AppName';
  //space_20060513 对im oninvoke的调用
  RDK_IM_ONINVOKE_EXTERTYPE    = 'IM_ONINVOKE_EXTERTYPE';
  RDK_IM_ONINVOKE_EXTERCONTENT = 'IM_ONINVOKE_EXTERCONTENT';
  RDK_IM_ONINVOKE_EXTRAINFO	   = 'IM_ONINVOKE_EXTRAINFO';

  //---------- for IRTXCSubItem interface,  by rodman---------
  RDK_SUBITEM_TIP		    	= 'SubItemTip';
  RDK_SUBITEM_HICON		    = 'SubItemHICON';
  RDK_SUBITEM_STATE		    = 'SubItemState';
  RDK_SUBITEM_TYPE		    = 'SubItemType';
  RDK_SUBITEM_LAYOUT	   	= 'SubItemLayout';
  //----------------------------------------------------------


  //---------- Action使用于YouCanDo面板的时候,ExtraInfo中的RTXCData数据类型 by rodman---------
  RDK_YOUCANDO_ITEM_ICON_PATH		  	= 'ItemIconPath';
  RDK_YOUCANDO_ITEM_CAPTION			    = 'ItemCaption';
  //----------------------------------------------------------

  //---------- MainFrame上toolbar按钮中的数据类型索引 by jerryxia 20100226----------
  RDK_MAINTOOLBARBTN_ITEM_ICON_PATH	    = 'ItemIconPath';
  RDK_MAINTOOLBARBTN_ITEM_CAPTION	    	= 'ItemCaption';
  RDK_MAINTOOLBARBTN_ITEM_TOOLTIP	    	= 'ItemToolTip';
  RDK_MAINTOOLBARBTN_ITEM_VISIBLE	    	= 'ItemVisible';
  RDK_MAINTOOLBARBTN_ITEM_DISABLE	    	= 'ItemDisable';
  RDK_MAINTOOLBARBTN_ITEM_WIDTH		      = 'ItemWidth';
  //--------------------------------------------------------------------------------

  //---------- MainFrame上StatusBar按钮中的数据类型索引 by jerryxia 20100414--------
  RDK_STATUSBAR_ITEM_ICON_PATH  = 'ItemIconPath';
  RDK_STATUSBAR_ITEM_CAPTION		= 'ItemCaption';
  RDK_STATUSBAR_ITEM_TOOLTIP		= 'ItemToolTip';
  RDK_STATUSBAR_ITEM_DISABLE		= 'ItemDisable';
  RDK_STATUSBAR_ITEM_TYPE		   	= 'ItemType';
  RDK_STATUSBAR_ITEM_WIDTH	    = 'ItemWidth';
  //--------------------------------------------------------------------------------

  RDK_STATUSBAR_ITEMTYPE_TEXT		   = 'ItemTypeText';
  RDK_STATUSBAR_ITEMTYPE_BUTTON	    = 'ItemTypeButton';

  //---------- IM窗口上ToolBar按钮中的数据类型索引 by jerryxia 20100414--------
  RDK_IMTOOLBAR_ITEM_IMAGE_PATH	       	= 'ItemImagePath';
  RDK_IMTOOLBAR_ITEM_HOVERIMAGE_PATH	  = 'ItemHoverImagePath';
  RDK_IMTOOLBAR_ITEM_DOWNIMAGE_PATH   	= 'ItemDownImagePath';
  RDK_IMTOOLBAR_ITEM_DISABLEIMAGE_PATH	= 'ItemDisableImagePath';
  RDK_IMTOOLBAR_ITEM_WIDTH			    = 'ItemWidth';
  RDK_IMTOOLBAR_ITEM_CAPTION			  = 'ItemCaption';
  RDK_IMTOOLBAR_ITEM_TOOLTIP		   	= 'ItemToolTip';
  RDK_IMTOOLBAR_ITEM_DISABLE		   	= 'ItemDisable';
  //-----------------------------  ---------------------------------------------------

  //IFileHelper's Parameter
  RDK_TRANS_TYPE          = 'Trans_Type';
  RDK_IFILETRANSFER       = 'IRTXFileTransfer';
  //Relay Recv's Parameter
  RDK_PEER_ACCOUNT        = 'Peer_Account';
  RDK_PEER_SEQ            = 'Peer_Seq';
  RDK_FILE_ID			        = 'FileId';
  RDK_FILE_SVR_IP		      = 'FileSvrIP';
  RDK_FILE_SVR_PORT	      = 'FileSvrPort';
  RDK_FILE_KEY		        = 'FileKey';
  RDK_FILE_FROM_RCA	      = 'FromRCA';
  //Relay Send's Parameter
  //RDK_RECEIVER            = 'Receiver';
  RDK_FILENAME            = 'File_Name';
  RDK_LOCAL_SEQ           = 'Local_Seq';

  //Enterprise Info Parameter
  RDK_ENTERPRISE_UIN       = 'strBUin';
  RDK_ENTERPRISE_NAME      = 'strBName';
  RDK_ENTERPRISE_FULL_NAME = 'strBFName';
  RDK_ENTERPRISE_GUID      = 'strBGUID';


  //Client connection info
  RDK_OUT_IP   = 'out_ip';
  RDK_IN_IP    = 'in_ip';
  RDK_OUT_PORT = 'out_port';
  RDK_IN_PORT  = 'in_port';

  RDK_OUT_SUP_IP		= 'OutSupIp';
  RDK_OUT_SUP_PORT  = 'OutSupPort';
 	RDK_OUT_SUP_ADDR	= 'OutSupAddr';

  //Client NetProxy Parameter
  RDK_NET_PROXY_TYPE		= 'NetProxyType';
  RDK_NET_PROXY_ADDR		= 'NetProxyAddr';
  RDK_NET_PROXY_PORT		= 'NetProxyPort';
  RDK_NET_PROXY_USER		= 'NetProxyUser';
  RDK_NET_PROXY_PWD		  = 'NetProxyPwd';

/// Client AVSetting Info
  RDK_AVSET_AUDIO_CAPTURE_ID	= 'AVSetAudioCaptureID';
  RDK_AVSET_AUDIO_PLAYER_ID  	= 'AVSetAudioPlayerID';
  RDK_AVSET_VIDEO_CAPTURE_ID	= 'AVSetVideoCaptureID';

  /// DisGroup Parameter
  RDK_DCOUNT		   	= 'DisGroupCount';
  RDK_DVER			   	= 'DisGroupVer';
  RDK_DID				    = 'DisGroupId';
  RDK_COMMAND		  	= 'Command';
  RDK_DSID			  	= 'DisGroupSId';
  RDK_DNAME			  	= 'DisGroupName';
  RDK_DPCOUNT		  	= 'DisGroupPartCount';
  RDK_DTYPE			   	= 'DisGroupType';
  RDK_DGROUPVER			= 'GroupVer';
  RDK_DUSERVER			= 'UserlistVer';
  RDK_DINITIATOR		= 'DisGroupInitiator';
  RDK_DCREATETIME		= 'DisGroupCreateTime';
  RDK_DDESC			   	= 'DisGroupDesc';
  RDK_DUSERLIST			= 'DisGroupUserlist';
  RDK_DNEXTACCOUNT	= 'DisGroupNextAccount';
  RDK_DRESULT		   	= 'DisGroupResult';
  RDK_DNEXTID		   	= 'NextId';
  RDK_DRECV				  = 'DisGroupRecv';
  PDK_RESERVE		   	= 'reserve';

  RDK_PROTOVER	   	= 'ProtoVer';
  RDK_RID			     	= 'RId';
  RCA_UIN			     	= 'RCAUin';
  RDK_CORPVER		   	= 'CorpVer';
  RCA_STORE_FOLDER	= 'RCA';
  RCA_COMMAND			  = 'Command';
  RCA_RESULT		   	= 'Result';
  RCA_USERNAME			= 'UserName';
  RCA_CORPID			  = 'CorpId';
  RCA_SVR_PORT			= 'InfoSvrPort';
  RCA_SVR_IP			  = 'InfoSvrIP';
  RCA_ORG_FILEDIR		= 'OrgFileDir';
  RCA_ORG_FILENAME	= 'OrgFileName';
  RCA_ORG_NEXTIDEX	= 'NextIndex';
  RCA_ORG_VERSION		= 'Version';
  RCA_ORG_DEPTMAXVER	= 'DeptMaxVer';
  RCA_ORG_DEPTID	  	= 'DeptId';
  RCA_ORG_DEPTIDS	  	= 'DeptIds';
  RCA_ORG_USERLISTLEN	= 'UserListLen';
  RCA_ORG_USERS		  	= 'Users';
  RCA_ORG_USERCOUNT		= 'UserCount';
  RCA_RIGHT				    = 'RightInfo';
  RCA_CORPCOUNT		   	= 'CorpCount';
  RCA_CORPS			     	= 'Corps';
  RCA_CORPUSERSTATE		= 'UserState';
  RCA_FRIEND			= 'Friend';
  RCA_FRIENDS			= 'FriendS';
  RCA_NEXTACC			= 'NextAcc';
  RCA_NEXTRID			= 'NextRId';
  RCA_FRIENDVER		= 'FriendVer';
  RCA_USER				= 'User';
  RCA_USERS				= 'Users';
  RCA_USERVER			= 'UserVer';
  RCA_ACCOUNT			= 'RCAAccount';
  RCA_GENDER			= 'Gender';
  RCA_POS				  = 'Position';
  RCA_AGE			   	= 'Age';
  RCA_MOBILE			= 'Mobile';
  RCA_PHONE				= 'Phone';
  RCA_EMAIL				= 'Email';
  RCA_SHAREORG		    	= 'HasSharedOrg';
  RCA_CORPNAME		    	= 'CorpName';
  RCA_PROPERTY		    	= 'Property';
  RCA_ALLOWMODIFY	    	= 'AllowModify';
  RCA_ALLOWUPDATE	    	= 'AllowUpdate';
  RCA_AUTOUPDATEORG	  	= 'AutoUpdateOrg';
  RCA_BUIN				      = 'Business UIN';
  RCA_USERPROPERTY	  	= 'User property';
  RCA_REPLYADDEXTBUDDY	= 'reply result'; //回复添加人
  RCA_IDENTIFYMODE	  	= 'IdentifyMode';
  RCA_SHOWRCA		      	= 'Show RCA';
  RCA_INFOADDEXTBUDDY	= 'Info add ext buddy'; //通知被添加人
  RCA_USERA				= 'User A';	//添加者
  RCA_USERB				= 'User B';	//被添加者
  RCA_BUINA				= 'BUin A';
  RCA_BUINB				= 'BUin B';
  RCA_CUINA				= 'CUin A';
  RCA_CUINB				= 'CUin B';
  RCA_CORPNAMEA			= 'Corpname A';
  RCA_CORPNAMEB			= 'Corpname B';
  RCA_TYPEFLAG			= 'add friend type flag';
  RCA_AUTHINFO			= 'authorize info';
  RCA_TIME			  	= 'time';
  RCA_IMKEY				  = 'OuterIM';
  RCA_KCS			    	= 'kcs';
  RCA_KCSLENGTH			= 'kcs length';
  RCA_KCSCONTENT		= 'kcs content';
  ERROR_CODE		  	= 'error code';
  FRIENDLIST_VER		= 'Friend list version';
  RCA_FRIEND_MSG_COUNT	= 'Friend msg count';
  RCA_TYPE            = 'Type';
  RCA_NEXT_BUIN       = 'next buin';
  RCA_NEXT_USER       = 'next user';
  RCA_FRIEND_MSG_TYPE	= 'Friend msg type';
  RCA_FRIEND_MSG		  = 'Friend msg';
  RCA_MYEXTINFO_VER   = 'My ext info ver';
  RCA_AUTHTYPE			  = 'AuthType';
  RCA_ERRORCODE       = 'ErrorCode';

  RDK_EPORTAL_SDK_ICONNAME	    = 'EPortalSDKIconName';
  RDK_EPORTAL_SDK_ICONPATH      = 'EPortalSDKIconPath';
  RDK_EPORTAL_SDK_ICONTOOLTIP   = 'EPortalSDKIconToolTip';
  RDK_EPORTAL_SDK_ICONURL	     	= 'EPortalSDKIconUrl';

  //betahuang 添加外部联系人标志byteTypeFlag
  FLAG_ADDEXTBUDDY_SEND	 = 0;
  FLAG_ADDEXTBUDDY_RECV	 = 1;
  FLAG_ALLOW_ADD		     = 0;
  FLAG_REFUSE_ADD		     = 1;

  //milomeng 20100907 add IM窗口用户头像上展示员工荣誉的图标索引
  RDK_IM_EXT_ICON_NAME	      = 'IMExtIconName';
  RDK_IM_EXT_ICON_NORMALPATH  = 'IMExtIconNormalPath';
  RDK_IM_EXT_ICON_HOVERPATH   = 'IMExtIconHoverPath';
  RDK_IM_EXT_ICON_DOWNLPATH   = 'IMExtIconDownPath';
  RDK_IM_EXT_ICON_DISABLEPATH	= 'IMExtIconDisablePath';
  RDK_IM_EXT_ICON_TOOLTIP     = 'IMExtIconToolTip';
  RDK_IM_EXT_ICON_DISABLED		= 'IMExtIconDisabled';

   
  // #include "ContactBarExtBuddyDef.h" 
  //rtx编写联系人面板时候使用了ExtBuddy,使用的名字空间
  RTX_EXTBUDDY_CONTACT_NAMESPACE = '51D519CB-43FC-43f0-8240-645FB97D3E39'; 

  //rtx编写联系人面板时候使用了ExtBuddy, 使用的一些名字
  RTX_EXTBUDDY_CONTACT_NICKNAME = 'nickname';
  RTX_EXTBUDDY_CONTACT_PHONE    = 'phone1';
  RTX_EXTBUDDY_CONTACT_MOBILE   = 'mobile1';
  RTX_EXTBUDDY_CONTACT_INFO     = 'info';
 
  
  // #include "RTXCAPIErrorCodes" 
  FACILITY_RTX			     	= $AA;
  RESULT_INFO_BASE_RTX		= $200 + $BB;


  RTXC_ERROR_CODE = DWord((SEVERITY_ERROR shl 31) or (FACILITY_RTX shl 16));

//type
//  RTXC_HRESULT =
//  (
//    RTXC_E_ROOT_ALREADY_INITIALIZED		= RTXC_ERROR_CODE or (RESULT_INFO_BASE_RTX + 1),
//    RTXC_E_ROOT_NOT_INITIALIZED				= RTXC_ERROR_CODE or (RESULT_INFO_BASE_RTX + 2),
//
//    RTXC_E_MDS_INVALID_SESSION_STATE	= RTXC_ERROR_CODE or (RESULT_INFO_BASE_RTX + 3),
//    RTXC_E_MDS_USER_EXISTS						= RTXC_ERROR_CODE or (RESULT_INFO_BASE_RTX + 4),
//    RTXC_E_MDS_NO_USER                = RTXC_ERROR_CODE or (RESULT_INFO_BASE_RTX + 5),
//    RTXC_E_MDS_ADVISEP2P_FAIL         = RTXC_ERROR_CODE or (RESULT_INFO_BASE_RTX + 6),
//    RTXC_E_MDS_CREATEPACK_FAIL        = RTXC_ERROR_CODE or (RESULT_INFO_BASE_RTX + 7),
//    RTXC_E_MDS_IS_INITIATOR           = RTXC_ERROR_CODE or (RESULT_INFO_BASE_RTX + 8),
//
//    RTXC_E_SESSION_EXITS              = RTXC_ERROR_CODE or (RESULT_INFO_BASE_RTX + 100)
//  );
//

   function MAKE_HRESULT(s, f, c: Word): Word; inline;
   function RTXC_ERROR(c: Integer): HRESULT; inline;
   function RTXC_SUCCESS(c: Integer): HRESULT; inline;
implementation

function MAKE_HRESULT(s, f, c: Word): Word;
begin
  Result:= DWord((s shl 31) or (f shl 16)) or c;
end;

function RTXC_ERROR(c: Integer): HRESULT;
begin
  Result := MAKE_HRESULT(SEVERITY_ERROR, FACILITY_RTX, RESULT_INFO_BASE_RTX + (c));
end;

function RTXC_SUCCESS(c: Integer): HRESULT;
begin
  Result := MAKE_HRESULT(SEVERITY_SUCCESS, FACILITY_RTX, RESULT_INFO_BASE_RTX + (c));
end;

end.