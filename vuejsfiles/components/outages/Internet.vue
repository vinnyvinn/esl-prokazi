<template>
    <div class="row">
        <div class="col-md-2">
            <side-bar @changed="changedcmp"></side-bar>
        </div>
        <div class="col-md-10">
            <component :is="loadedcmp" @outagechanged="changedoutage"></component>
        </div>
    </div>
</template>
<script>
    import SideBar from './layout/Sidebar.vue'
    import Erp from './erp/Index.vue'
    import Email from './email/Index.vue'
    import Internet from './internet/Index.vue'
    import Payroll from './payroll/Index.vue'
    import Smart from './smartship/Index.vue'

    export default{
        data:()=>({
            loadedcmp:Internet,
            showloading:false
        }),
        components:{
            SideBar, Erp,Email,Internet,Payroll,Smart
        },
        methods:{
            changedoutage(val){
                this.showloading=val;
            },
            changedcmp(value){
                switch (value){
                    case 0:{
                        this.loadedcmp = Internet;
                        break;
                    };
                    case 1:{
                        this.loadedcmp = Erp;
                        break;
                    };
                    case 2:{
                        this.loadedcmp = Email;
                        break;
                    };
                    case 3:{
                        this.loadedcmp = Payroll;
                        break;
                    };
                    case 4:{
                        this.loadedcmp = Smart;
                        break;
                    };

                    default:{
                        this.loadedcmp = Internet;
                        break;
                    }
                }
            }
        }
    }
</script>