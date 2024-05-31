const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootr2r43/",
            name: "springbootr2r43",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootr2r43/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "医疗病历交互系统"
        } 
    }
}
export default base
