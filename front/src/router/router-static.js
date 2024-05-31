import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import yuanquzhanshi from '@/views/modules/yuanquzhanshi/list'
    import wenzhangleixing from '@/views/modules/wenzhangleixing/list'
    import yiyuan from '@/views/modules/yiyuan/list'
    import yiyuanzhuce from '@/views/modules/yiyuanzhuce/list'
    import yiyuankeshiyuyue from '@/views/modules/yiyuankeshiyuyue/list'
    import yiyuanliebiao from '@/views/modules/yiyuanliebiao/list'
    import discussyishengzhanshi from '@/views/modules/discussyishengzhanshi/list'
    import yiyuanwenzhang from '@/views/modules/yiyuanwenzhang/list'
    import discussyuanquzhanshi from '@/views/modules/discussyuanquzhanshi/list'
    import discussyiyuanwenzhang from '@/views/modules/discussyiyuanwenzhang/list'
    import yiyuangongzuorenyuan from '@/views/modules/yiyuangongzuorenyuan/list'
    import bingrenbingli from '@/views/modules/bingrenbingli/list'
    import yiliaoanpai from '@/views/modules/yiliaoanpai/list'
    import yonghu from '@/views/modules/yonghu/list'
    import yiyuangonggao from '@/views/modules/yiyuangonggao/list'
    import yisheng from '@/views/modules/yisheng/list'
    import yishengzhanshi from '@/views/modules/yishengzhanshi/list'
    import config from '@/views/modules/config/list'
    import yiyuankeshi from '@/views/modules/yiyuankeshi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/yuanquzhanshi',
        name: '院区展示',
        component: yuanquzhanshi
      }
      ,{
	path: '/wenzhangleixing',
        name: '文章类型',
        component: wenzhangleixing
      }
      ,{
	path: '/yiyuan',
        name: '医院',
        component: yiyuan
      }
      ,{
	path: '/yiyuanzhuce',
        name: '医院注册',
        component: yiyuanzhuce
      }
      ,{
	path: '/yiyuankeshiyuyue',
        name: '医院科室预约',
        component: yiyuankeshiyuyue
      }
      ,{
	path: '/yiyuanliebiao',
        name: '医院列表',
        component: yiyuanliebiao
      }
      ,{
	path: '/discussyishengzhanshi',
        name: '医生展示评论',
        component: discussyishengzhanshi
      }
      ,{
	path: '/yiyuanwenzhang',
        name: '医院文章',
        component: yiyuanwenzhang
      }
      ,{
	path: '/discussyuanquzhanshi',
        name: '院区展示评论',
        component: discussyuanquzhanshi
      }
      ,{
	path: '/discussyiyuanwenzhang',
        name: '医院文章评论',
        component: discussyiyuanwenzhang
      }
      ,{
	path: '/yiyuangongzuorenyuan',
        name: '医院工作人员',
        component: yiyuangongzuorenyuan
      }
      ,{
	path: '/bingrenbingli',
        name: '病人病历',
        component: bingrenbingli
      }
      ,{
	path: '/yiliaoanpai',
        name: '医疗安排',
        component: yiliaoanpai
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/yiyuangonggao',
        name: '医院公告',
        component: yiyuangonggao
      }
      ,{
	path: '/yisheng',
        name: '医生',
        component: yisheng
      }
      ,{
	path: '/yishengzhanshi',
        name: '医生展示',
        component: yishengzhanshi
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/yiyuankeshi',
        name: '医院科室',
        component: yiyuankeshi
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
