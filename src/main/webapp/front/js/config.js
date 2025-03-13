
var projectName = '高校毕业生就业满意度调查统计系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '考试记录',
	url: '../examrecord/list.jsp'
}, 
{
	name: '错题本',
	url: '../examrecord/wrong.jsp'
},
]


var indexNav = [

{
	name: '问卷',
	url: './pages/wenjuan/list.jsp'
}, 
{
	name: '就业咨询',
	url: './pages/news/list.jsp'
}, 

{
	name: '试卷列表',
	url: './pages/exampaper/list.jsp'
}, 
{
	name: '新闻资讯',
	url: './pages/news/list.jsp'
},
{
	name: '留言反馈',
	url: './pages/messages/list.jsp'
}
]

var adminurl =  "http://localhost:8080/jspm2l727/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论","查询人数","提交"],"menu":"问卷","menuJump":"列表","tableName":"wenjuan"}],"menu":"问卷管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"调查统计结果","menuJump":"列表","tableName":"diaochatongjijieguo"}],"menu":"调查统计结果管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"任务提交","menuJump":"列表","tableName":"renwutijiao"}],"menu":"任务提交管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试卷管理","tableName":"exampaper"}],"menu":"试卷管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试题管理","tableName":"examquestion"}],"menu":"试题管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"管理员","tableName":"users"}],"menu":"管理员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"就业咨询","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试卷列表","tableName":"exampaperlist"},{"buttons":["新增","查看","修改","删除"],"menu":"考试记录","tableName":"examrecord"},{"buttons":["新增","查看","修改","删除"],"menu":"错题本","tableName":"examfailrecord"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"buttons":["查看","查询","提交"],"menu":"问卷列表","menuJump":"列表","tableName":"wenjuan"}],"menu":"问卷模块"},{"child":[{"buttons":["查看"],"menu":"就业咨询列表","tableName":"news"}],"menu":"就业咨询模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查询","查询人数","查看","提交"],"menu":"问卷","menuJump":"列表","tableName":"wenjuan"}],"menu":"问卷管理"},{"child":[{"buttons":["查看"],"menu":"调查统计结果","menuJump":"列表","tableName":"diaochatongjijieguo"}],"menu":"调查统计结果管理"},{"child":[{"buttons":["查看","修改"],"menu":"试卷列表","tableName":"exampaperlist"},{"buttons":["查看","修改"],"menu":"考试记录","tableName":"examrecord"},{"buttons":["查看","修改"],"menu":"错题本","tableName":"examfailrecord"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"buttons":["查看","查询","提交"],"menu":"问卷列表","menuJump":"列表","tableName":"wenjuan"}],"menu":"问卷模块"},{"child":[{"buttons":["查看"],"menu":"就业咨询列表","tableName":"news"}],"menu":"就业咨询模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
