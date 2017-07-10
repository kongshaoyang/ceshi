<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page contentType="text/html;charset=UTF-8"%>
<!doctype html>
<html>
<head>
	<%@include file="/System/header.jspf" %>
</head>

<body class="account-pages">
	<table style="width: 100%; height: 100%; border: 0;">
		<tr>
			<td align="center" style="width: 70%;" valign="top">
				<br/>
			    <span style="font-family:微软雅黑; font-size:250%; color:#FFFFFF;">绿书综合管理平台</span>
			</td>
			<td>
				<div class="m-t-40 card-box">
					<div class="am-tabs" data-am-tabs>
						<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
							<li class="am-active"><a href="#tab1">个人用户</a></li>
							<li><a href="#tab2">企业用户</a></li>
							<li><a href="#tab3">内部用户</a></li>
						</ul>
						<div class="am-tabs-bd">
							<div class="am-tab-panel am-active" id="tab1" style="height: 490px;">
								<form class="am-form">
									<div class="am-g">
										<div class="am-form-group form-horizontal">
											<table style="width: 100%; height: 100%; border: 0;">
												<tr>
													<td width="40%">
														<input type="text" class="am-radius" placeholder="手机号" style="width: 172px;" maxlength="11" />
													</td>
													<td align="left">
														
													</td>
												</tr>
											</table>
										</div>
										
										<div class="am-form-group form-horizontal">
											<table style="width: 100%; height: 100%; border: 0;">
												<tr>
													<td width="40%">
														<input type="text" class="am-radius" placeholder="短信验证码" style="width: 172px;" maxlength="6"/>
													</td>
													<td align="left">
														<input type="button" class="am-btn am-btn-primary btnpad" value="获取短信验证码" onclick="getSMSInfo(this);" />
													</td>
												</tr>
											</table>
										</div>
										<div class="am-form-group form-horizontal">
											<table style="width: 100%; height: 100%; border: 0;">
												<tr>
													<td width="40%">
														<button type="button" class="am-btn am-btn-primary" data-am-modal="{target: '#Pregister_popup'}">注 册</button>
													</td>
													<td align="left">
														<button type="button" class="am-btn am-btn-primary btnpad" onclick="onLogin();">生成我的登录二维码</button>
													</td>
												</tr>
											</table>
										</div>

										<div class="am-form-group form-horizontal">
											请使用微信扫描以下二维码方式进入
											<img id="u68_img" src="/AmazeUI-2.7.2/assets/i/u15.png"/>
										</div>
									</div>
								</form>
							</div>
							<div class="am-tab-panel" id="tab2" style="height: 490px;">
								<form class="am-form">
									<div class="am-g">
										<div class="am-form-group form-horizontal">
											<input type="text" id="cUserName" class="am-radius" placeholder="用户名" style="width: 320px;">
										</div>
									
										<div class="am-form-group form-horizontal m-t-20">
											<input type="password" id="cPassword" class="am-radius" placeholder="密 码" style="width: 320px;">
										</div>
										
										<div class="am-form-group form-horizontal">
											<table style="width: 100%; height: 100%; border: 0;">
												<tr>
													<td width="10%">
														<button type="button" class="am-btn am-btn-primary" data-am-modal="{target: '#Cregister_popup'}">注 册</button>
													</td>
													<td width="30%"align="right">
														<button type="button" class="am-btn am-btn-primary btnpad" onclick="onLogin();">登 录</button>
													</td>
													<td align="left">
														<button type="button" class="am-btn am-btn-primary btnpad" onclick="resetCusInfo();">重 置</button>
													</td>
												</tr>
											</table>
										</div>
									</div>
								</form>
							</div>
							<div class="am-tab-panel" id="tab3" style="height: 490px;">
								<form class="am-form">
									<div class="am-g">
										<div class="am-form-group form-horizontal">
											<input type="text" id="inUserName" class="am-radius" placeholder="用户名" style="width: 320px;">
										</div>
									
										<div class="am-form-group form-horizontal m-t-20">
											<input type="password" id="inPassword" class="am-radius" placeholder="密 码" style="width: 320px;">
										</div>
										
										<div class="am-form-group form-horizontal">
											<table style="width: 100%; height: 100%; border: 0;">
												<tr>
													<td width="30%"align="right">
														<button type="button" class="am-btn am-btn-primary btnpad" onclick="onLogin();">登 录</button>
													</td>
													<td align="left">
														<button type="button" class="am-btn am-btn-primary btnpad" onclick="resetInnerInfo();">重 置</button>
													</td>
												</tr>
											</table>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</td>
		</tr>
	</table>
	
	<!-- 个人注册 -->
	<div class="fbneirong am-popup-inner am-popup" id="Pregister_popup" style="width:46%; height:605px;overflow: auto;margin-left: 150px;padding-top: 0px;">
		<div class="am-popup-hd">
			<h4 class="am-popup-title">个人用户注册信息</h4>
			<span data-am-modal-close class="am-close" style="color:blue;">&times;</span>
   		</div>
   		<div class="am-popup-bd">
	      	<form class="am-form tjlanmu">
	        	<div class="am-form-group am-cf">
	          		<div class="registerZuo"><label for="doc-ipt-3" class="col-sm-2 am-form-label">手机号:</label></div>
	          		<div class="you registerYou">
			          	<table >
			          		<tr>
			          			<td width="162px;">
			          				<input type="text" class="am-input-sm" maxlength="11" placeholder="输入你的手机号" />
			          			</td>
			          			<td>
			          				<input type="button" class="am-btn am-btn-secondary btnpad" value="获取短信验证码" onclick="getSMSInfo(this);" />
			          			</td>
			          		</tr>
			          	</table>
	          		</div>
	        	</div>
		        <div class="am-form-group am-cf">
		          <div class="registerZuo"><label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label">短信验证码:</label></div>
		          <div class="you registerYou" style="width: 30%">
		          	<input type="text" class="am-input-sm" maxlength="6" placeholder="短信验证码">
		          </div>
		        </div>
		        <div class="am-form-group am-cf">
		          <div class="registerZuo"><label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label">姓 名:</label></div>
		          <div class="you registerYou" style="width: 30%">
		          	<input type="text" class="am-input-sm" placeholder="输入你的姓名">
		          </div>
		        </div>
		        <div class="am-form-group am-cf">
		        	<div class="registerZuo"><label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label"></label></div>
		          	<div class="you registerYou" style="margin-bottom: 0px;">
		          		<button type="button" class="am-btn am-btn-primary">生成我的登录二维码</button>
						<label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label">请使用微信扫描以下二维码方式进入:</label>
						<img id="u68_img" src="/AmazeUI-2.7.2/assets/i/u15.png"/>
				  	</div>
		        </div>
	        
		        <div class="am-form-group am-cf">
		        	<div class="registerZuo"><label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label"></label></div>
		          	<div class="you registerYou">
		              	<button type="button" class="am-btn am-btn-success am-radius" onclick="submitForm();">注  册</button>
		          	</div>
		        </div>
	      	</form>
      	</div>
    </div>
    
    <!-- 企业注册 -->
    <div class="fbneirong am-popup-inner am-popup" id="Cregister_popup" style="width:46%; height:485px;overflow: auto;margin-left: 150px;padding-top: 0px;">
    	<div class="am-popup-hd">
    		<h4 class="am-popup-title">企业用户注册信息</h4>
			<span data-am-modal-close class="am-close" style="color:blue;">&times;</span>
   		</div>
   		<div class="am-popup-bd">
	      	<form class="am-form tjlanmu">
	        	<div class="am-form-group am-cf">
		          	<div class="registerZuo"><label for="doc-ipt-3" class="col-sm-2 am-form-label">用户名:</label></div>
		          	<div class="you registerYou" style="width: 30%">
		          		<input type="text" class="am-input-sm" placeholder="用户名">
		          	</div>
	        	</div>
		        <div class="am-form-group am-cf">
		          	<div class="registerZuo"><label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label">密 码:</label></div>
		          	<div class="you registerYou" style="width: 30%">
		          		<input type="password" class="am-input-sm" placeholder="密 码">
		          	</div>
		        </div>
		        <div class="am-form-group am-cf">
		          	<div class="registerZuo"><label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label">企业名称:</label></div>
		          	<div class="you registerYou" style="width: 30%">
		          		<input type="text" class="am-input-sm" placeholder="企业名称">
		          	</div>
		        </div>
		        <div class="am-form-group am-cf">
		        	<div class="registerZuo"><label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label">企业详细地址:</label></div>
		          	<div class="you registerYou">
		          		<input type="text" class="am-input-sm" placeholder="企业详细地址">
					</div>
		        </div>
	        
		        <div class="am-form-group am-cf">
		        	<div class="registerZuo"><label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label">联系人:</label></div>
		          	<div class="you registerYou" style="width: 30%">
						<input type="text" class="am-input-sm" placeholder="联系人">
				  	</div>
		        </div>
		        <div class="am-form-group am-cf">
		        	<div class="registerZuo"><label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label">联系电话:</label></div>
		          	<div class="you registerYou">
			          	<table >
			          		<tr>
			          			<td width="53%">
			          				<input type="text" class="am-input-sm" maxlength="11" placeholder="联系电话">
			          			</td>
			          			<td>
			          				<input type="button" class="am-btn am-btn-secondary btnpad" value="获取短信验证码" onclick="getSMSInfo(this);" />
			          			</td>
			          		</tr>
			          	</table>
		          	</div>
	        	</div>
		        <div class="am-form-group am-cf">
		        	<div class="registerZuo"><label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label">短信验证码:</label></div>
		          	<div class="you registerYou" style="width: 30%">
						<input type="text" class="am-input-sm" maxlength="6" placeholder="短信验证码">
				  	</div>
		        </div>
		        <div class="am-form-group am-cf">
		        	<div class="registerZuo"><label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label"></label></div>
		          	<div class="you registerYou">
		          		<label class="am-input-sm" >
		          			营业执照副本图片(身份确认，获得系统内企业信息操作权限)
		          		</label>
						<input type="file" class="am-input-sm" />
				  	</div>
		        </div>
	        
		        <div class="am-form-group am-cf">
		        	<div class="registerZuo"><label for="doc-ipt-pwd-2" class="col-sm-2 am-form-label"></label></div>
		          	<div class="you registerYou">
		              	<button type="button" class="am-btn am-btn-success am-radius" onclick="submitForm();">注  册</button>
		          	</div>
		        </div>
	      	</form>
      	</div>
    </div>
    
</body>

<script type="text/javascript">
	var timeCount = 0;
	var errorInterval = null;
	var tempObj = null;
	function getSMSInfo(obj)
	{
		timeCount = 60;
		tempObj = obj;
		errorInterval = setInterval(waiteRetry, 1*1000);
	}

	function waiteRetry()
	{
		tempObj.value = "请"+ timeCount +"s后重试";
		tempObj.disabled = true;
		if(timeCount == 1)
		{
			clearInterval(errorInterval); // 读秒结束关闭提示框
			tempObj.disabled = false;
			tempObj.value = "获取短信验证码";
		}
		else
		{
			timeCount--;
		}
	}

	// 企业用户重置
	function resetCusInfo()
	{
		$("#cUserName").val("");
		$("#cPassword").val("");
	}

	// 内部用户重置
	function resetInnerInfo()
	{
		$("#inUserName").val("");
		$("#inPassword").val("");
	}
	
	// 登录
	function onLogin()
	{
		window.top.location.replace("/System/home.jsp");
	}
</script>
</html>
