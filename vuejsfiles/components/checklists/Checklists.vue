<template>
    <div class="row">
        <div class="col-md-2">
            <side-bar @changed="changedcmp"></side-bar>
        </div>
        <div class="col-md-10">
            <component :is="loadedcmp" @customerchanged="changedcustomer"></component>
        </div>
    </div>
</template>
<script>
    import SideBar from './layout/SideBar.vue'
    import Checklisto from './components/checklistitems/ChecklistItems.vue'
    import DailyTasks from './components/dailytask/Tasks.vue'
    
    export default{
        data:()=>({
            loadedcmp:Checklisto,
            showloading:false
        }),
        components:{
            SideBar, Checklisto,DailyTasks
        },
        methods:{
            changedcustomer(val){
                this.showloading=val;
            },
            changedcmp(value){
                switch (value){
                    case 0:{
                        this.loadedcmp = Checklisto;
                        break;
                    };
                    case 1:{
                        this.loadedcmp = DailyTasks;
                        break;
                    };
                    case 2:{
                        this.loadedcmp = DailyTasks;
                        break;
                    };


                    default:{
                        this.loadedcmp = Checklisto;
                        break;
                    }
                }
            }
        }
    }
</script>