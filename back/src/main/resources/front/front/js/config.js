
var projectName = '医疗病历交互系统';
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
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '院区展示',
	url: './pages/yuanquzhanshi/list.html'
}, 
{
	name: '医院文章',
	url: './pages/yiyuanwenzhang/list.html'
}, 
{
	name: '医院科室',
	url: './pages/yiyuankeshi/list.html'
}, 
{
	name: '医生展示',
	url: './pages/yishengzhanshi/list.html'
}, 

]

var adminurl =  "http://localhost:8080/springbootr2r43/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["查看","修改","删除","新增"],"menu":"医院","menuJump":"列表","tableName":"yiyuan"}],"menu":"医院管理"},{"child":[{"buttons":["查看","修改","删除","审核","注册医院","新增"],"menu":"医院注册","menuJump":"列表","tableName":"yiyuanzhuce"}],"menu":"医院注册管理"},{"child":[{"buttons":["查看","修改","删除","新增","加入医院登录"],"menu":"医院列表","menuJump":"列表","tableName":"yiyuanliebiao"}],"menu":"医院列表管理"},{"child":[{"buttons":["查看"],"menu":"院区展示","menuJump":"列表","tableName":"yuanquzhanshi"}],"menu":"院区展示管理"},{"child":[{"buttons":["查看"],"menu":"医院文章","menuJump":"列表","tableName":"yiyuanwenzhang"}],"menu":"医院文章管理"},{"child":[{"buttons":["查看"],"menu":"医院科室","menuJump":"列表","tableName":"yiyuankeshi"}],"menu":"医院科室管理"},{"child":[{"buttons":["查看"],"menu":"医院公告","menuJump":"列表","tableName":"yiyuangonggao"}],"menu":"医院公告管理"},{"child":[{"buttons":["查看"],"menu":"医院工作人员","menuJump":"列表","tableName":"yiyuangongzuorenyuan"}],"menu":"医院工作人员管理"},{"child":[{"buttons":["查看"],"menu":"医生","menuJump":"列表","tableName":"yisheng"}],"menu":"医生管理"},{"child":[{"buttons":["查看"],"menu":"病人病历","menuJump":"列表","tableName":"bingrenbingli"}],"menu":"病人病历管理"},{"child":[{"buttons":["查看"],"menu":"医疗安排","menuJump":"列表","tableName":"yiliaoanpai"}],"menu":"医疗安排管理"},{"child":[{"buttons":["查看"],"menu":"医院科室预约","menuJump":"列表","tableName":"yiyuankeshiyuyue"}],"menu":"医院科室预约管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"文章类型","menuJump":"列表","tableName":"wenzhangleixing"}],"menu":"文章类型管理"},{"child":[{"buttons":["查看"],"menu":"医生展示","menuJump":"列表","tableName":"yishengzhanshi"}],"menu":"医生展示管理"},{"child":[{"buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"院区展示列表","menuJump":"列表","tableName":"yuanquzhanshi"}],"menu":"院区展示模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"医院文章列表","menuJump":"列表","tableName":"yiyuanwenzhang"}],"menu":"医院文章模块"},{"child":[{"buttons":["查看","预约"],"menu":"医院科室列表","menuJump":"列表","tableName":"yiyuankeshi"}],"menu":"医院科室模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"医生展示列表","menuJump":"列表","tableName":"yishengzhanshi"}],"menu":"医生展示模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["新增","查看"],"menu":"医院注册","menuJump":"列表","tableName":"yiyuanzhuce"}],"menu":"医院注册管理"},{"child":[{"buttons":["查看"],"menu":"病人病历","menuJump":"列表","tableName":"bingrenbingli"}],"menu":"病人病历管理"},{"child":[{"buttons":["查看"],"menu":"医疗安排","menuJump":"列表","tableName":"yiliaoanpai"}],"menu":"医疗安排管理"},{"child":[{"buttons":["查看"],"menu":"医院科室预约","menuJump":"列表","tableName":"yiyuankeshiyuyue"}],"menu":"医院科室预约管理"}],"frontMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"院区展示列表","menuJump":"列表","tableName":"yuanquzhanshi"}],"menu":"院区展示模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"医院文章列表","menuJump":"列表","tableName":"yiyuanwenzhang"}],"menu":"医院文章模块"},{"child":[{"buttons":["查看","预约"],"menu":"医院科室列表","menuJump":"列表","tableName":"yiyuankeshi"}],"menu":"医院科室模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"医生展示列表","menuJump":"列表","tableName":"yishengzhanshi"}],"menu":"医生展示模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"院区展示","menuJump":"列表","tableName":"yuanquzhanshi"}],"menu":"院区展示管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"医院文章","menuJump":"列表","tableName":"yiyuanwenzhang"}],"menu":"医院文章管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"医院科室","menuJump":"列表","tableName":"yiyuankeshi"}],"menu":"医院科室管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"医院公告","menuJump":"列表","tableName":"yiyuangonggao"}],"menu":"医院公告管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"医院工作人员","menuJump":"列表","tableName":"yiyuangongzuorenyuan"}],"menu":"医院工作人员管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核","加入医生展示"],"menu":"医生","menuJump":"列表","tableName":"yisheng"}],"menu":"医生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"病人病历","menuJump":"列表","tableName":"bingrenbingli"}],"menu":"病人病历管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"医疗安排","menuJump":"列表","tableName":"yiliaoanpai"}],"menu":"医疗安排管理"},{"child":[{"buttons":["查看","修改","删除","查看评论"],"menu":"医生展示","menuJump":"列表","tableName":"yishengzhanshi"}],"menu":"医生展示管理"}],"frontMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"院区展示列表","menuJump":"列表","tableName":"yuanquzhanshi"}],"menu":"院区展示模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"医院文章列表","menuJump":"列表","tableName":"yiyuanwenzhang"}],"menu":"医院文章模块"},{"child":[{"buttons":["查看","预约"],"menu":"医院科室列表","menuJump":"列表","tableName":"yiyuankeshi"}],"menu":"医院科室模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"医生展示列表","menuJump":"列表","tableName":"yishengzhanshi"}],"menu":"医生展示模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"否","roleName":"医院","tableName":"yiyuan"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"病人病历","menuJump":"列表","tableName":"bingrenbingli"}],"menu":"病人病历管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"医疗安排","menuJump":"列表","tableName":"yiliaoanpai"}],"menu":"医疗安排管理"},{"child":[{"buttons":["新增","修改","删除","审核","查看"],"menu":"医院科室预约","menuJump":"列表","tableName":"yiyuankeshiyuyue"}],"menu":"医院科室预约管理"}],"frontMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"院区展示列表","menuJump":"列表","tableName":"yuanquzhanshi"}],"menu":"院区展示模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"医院文章列表","menuJump":"列表","tableName":"yiyuanwenzhang"}],"menu":"医院文章模块"},{"child":[{"buttons":["查看","预约"],"menu":"医院科室列表","menuJump":"列表","tableName":"yiyuankeshi"}],"menu":"医院科室模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"医生展示列表","menuJump":"列表","tableName":"yishengzhanshi"}],"menu":"医生展示模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"医生","tableName":"yisheng"}]


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
