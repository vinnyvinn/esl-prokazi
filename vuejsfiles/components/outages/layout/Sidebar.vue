<template>
    <ul class="nav nav-tabs vertical" role="tablist">
        <li role="presentation" :class="(active == 0)?'active':''"><a @click="changecmp(0)">INTERNET CONNECTION</a></li>
        <li role="presentation" :class="(active == 1)?'active':''"><a @click="changecmp(1)">ERP SERVER</a></li>
        <li role="presentation" :class="(active == 2)?'active':''"><a @click="changecmp(2)">EMAIL SERVER</a></li>
        <li role="presentation" :class="(active == 3)?'active':''"><a @click="changecmp(3)">PAYROLL SERVER</a></li>
        <li role="presentation" :class="(active == 4)?'active':''"><a @click="changecmp(4)">SMARTSHIP SERVER</a></li>
    </ul>
</template>
<script>
    import appdetails from '../../../helpers/appdetails';
    export default{
        data:()=>({
            active:0
        }),
        methods:{
            changecmp(value){
                if(this.active != value){
                    this.active=value;
                    this.$emit('changed', value); //redraw the component only when the value is different
                }

            }
        }

    }
</script>
<style scoped>
    li a{
        cursor: pointer;
    }
</style>