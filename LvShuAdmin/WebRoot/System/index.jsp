<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page contentType="text/html;charset=UTF-8"%>
<!doctype html>
<html>
<head>
	<%@include file="/System/header.jspf" %>
</head>

<body>
	<div class="admin">
		<div class="am-g am-u-md-6">
			<div class="am-panel am-panel-default">
				<div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-user'}">用户统计<span class="am-icon-chevron-down am-fr" ></span></div>
	            <div class="am-panel-bd am-collapse am-in" id="collapse-panel-user">
	            	<!-- 用户总量： -->
					<div class="tpl-echarts tpl-chart-mb " id="tpl-echarts-usertotal"></div>
	       		</div>
	        </div>
	    </div>
	       			
	    <div class="am-g am-u-md-6">
		    <div class="am-panel am-panel-default">
	            <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-gg'}">公告<span class="am-icon-chevron-down am-fr" ></span></div>
	            <div class="am-panel-bd am-collapse am-in" id="collapse-panel-gg">
	          		<p><span class="am-icon-bookmark"></span> 首页根据实际业务需求布局!</p>
	        		<p><span class="am-icon-bookmark"></span> 首页根据实际业务需求布局!</p>
	        		<p><span class="am-icon-bookmark"></span> 首页根据实际业务需求布局!</p>
	        		<p><span class="am-icon-bookmark"></span> 首页根据实际业务需求布局!</p>
	       		</div>
			</div>
	    </div>
	       			
		<div class="am-g am-u-md-6">
		    <div class="am-panel am-panel-default">
	            <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-wk'}">wiki<span class="am-icon-chevron-down am-fr" ></span></div>
	            <div class="am-panel-bd am-collapse am-in" id="collapse-panel-wk">
	          		<p><span class="am-icon-tag"></span> 时光静好，与君语。——绿书</p>
	        		<p><span class="am-icon-tag"></span> 细水流年，与君同。——绿书</p>
	        		<p><span class="am-icon-tag"></span> 时光静好，与君语。——绿书</p>
	        		<p><span class="am-icon-tag"></span> 细水流年，与君同。——绿书</p>
	       		</div>
	        </div>
	    </div>
	
	<%@include file="/System/foot.jsp" %>       			
	</div>
</body>

<script type="text/javascript">
	// 用户总量：
	var echartsUsertotal = echarts.init(document.getElementById("tpl-echarts-usertotal"));
	optionUsertotal = {
			title : {
	        text: ""
	    },
	    tooltip : {
	        trigger: "item",
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    },
	    toolbox: {
            top: "0",
            feature: {
                dataView: { show: true, readOnly: false },
                magicType: { show: false, type: ["line", "bar"] },
                restore: { show: false },
                saveAsImage: { show: true }
            }
        },
	    legend: {
	        orient: "vertical",
	        left: "1%",
	        data: ["移动页面用户", "PC页面用户", "移动应用用户", "公众号用户"]
	    },
	    series : [
	        {
	            name: "用户总量：2490",
	            type: "pie",
	            radius : "55%",
	            center: ["50%", "60%"],
	            data:[
	                {value:480, name:"移动页面用户"},
	                {value:360, name:"PC页面用户"},
	                {value:1500, name:"移动应用用户"},
	                {value:150, name:"公众号用户"}
	            ],
	            itemStyle: {
	                emphasis: {
	                    shadowBlur: 10,
	                    shadowOffsetX: 0,
	                    shadowColor: "rgba(0, 0, 0, 0.5)"
	                }
	            }
	        }
	    ]
	};
	echartsUsertotal.setOption(optionUsertotal);
	
</script>
</html>
