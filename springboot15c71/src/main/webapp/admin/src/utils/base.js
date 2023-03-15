const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot15c71/",
            name: "springboot15c71",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot15c71/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "手机销售平台"
        } 
    }
}
export default base
